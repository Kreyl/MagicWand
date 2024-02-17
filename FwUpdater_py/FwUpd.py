import argparse
import sys
import os
from typing import List
from CmdUart import CmdUart

crc_poly: int = 4129
crc_init: int = 0
chunk_len: int = 2048

uart = CmdUart()


def get_crc16_table(poly: int) -> List[int]:
    """
    get crc16_table
    :param poly: crc polynom
    :return:
    """
    res = list()
    for i in range(256):
        temp = 0
        a = i << 8
        for j in range(8):
            temp = (temp << 1) ^ poly if (temp ^ a) & 0x8000 else temp << 1
            a <<= 1
        res.append(temp & 0xFFFF)
    return res


def calculate_crc16(crc_table: List[int], data: bytes, crc_init_value: int = 0) -> int:
    """
    calculate crc16
    :param crc_init_value: init value of crc16
    :param crc_table: crc table
    :param data: data to get crc
    :return:
    """
    crc = crc_init_value
    for ch in data:
        crc = ((crc << 8 & 0xFFFF) ^ crc_table[crc >> 8 ^ (0xff & ch)])
    return crc


def get_version():
    for i in range(11):
        ver = uart.send_cmd_and_get_reply("Version").strip()
        if ver.startswith("Version"):
            print(ver)
            return
    print("No version data")


def main():
    print("Firmware Update Utility v2.0")
    parser = argparse.ArgumentParser(description="MCU fw updater")
    parser.add_argument("-f", "--mcufw",   default="", help='.bin file with mcu firmware')
    parser.add_argument("-c", "--comport", default="", help='COM-port name')
    args = parser.parse_args()

    # Check args
    if args.mcufw == "":
        print("Specify binary file to flash")
        return
    if args.mcufw and (not os.path.exists(args.mcufw) or not os.path.isfile(args.mcufw)):
        print("Bad MCU FW file")
        return
    fsize = os.path.getsize(args.mcufw)
    if fsize > 131072:
        print("Too large file sz: %i" % fsize)
        return

    # Open port
    if args.comport:
        if not uart.check_port(args.comport):
            print("Device not found at {}".format(args.comport))
            return
    if not uart.find_port():
        print("Device not found")
        return

    # Get current version
    get_version()

    # Restart fw update
    if uart.send_cmd_and_get_ok("UpdateFwRestart"):
        print("Start FW update OK")
    else:
        print("Start FW update FAIL")
        return

    # Write data chunk by chunk
    total_sz = os.path.getsize(args.mcufw)
    all_data = bytes()
    table = get_crc16_table(crc_poly)
    with open(args.mcufw, "rb") as f:
        if total_sz != 0:
            print("0% ", end="", flush=True)
        percent_to_show = 15
        sz_percent = total_sz * percent_to_show // 100
        total_sz = 0
        prev_percent = 0
        while True:
            data: bytes = f.read(chunk_len)
            if data:
                # Next chunk is available
                crc = calculate_crc16(table, data)
                reply = uart.send_cmd_and_get_reply_timeout("UpdateFwWrite %i 0x%X" % (len(data), crc), 0.1)
                if '>' not in reply:
                    "Device did not sent '>' symbol"
                    break
                uart.write_binary(data)
                all_data += data
                reply = uart.readline()
                if reply.lower() == "ok":
                    total_sz += len(data)
                    curr_percent = total_sz // sz_percent
                    if curr_percent != prev_percent:
                        prev_percent = curr_percent
                        print(" {0}% ".format(percent_to_show * curr_percent), end="", flush=True)
                    else:
                        print(".", end="", flush=True)
                else:
                    print("Bad answer: {0}".format(reply))
                    break
            else:
                # All data has been sent
                print(" 100%\r\n")
                crc = calculate_crc16(table, all_data)
                if uart.send_cmd_and_get_ok("UpdateFwCheckAndRun 0x%X" % crc):
                    print("Check and Run FW OK")
                    # Get new version
                    get_version()
                else:
                    print("Check and Run FW FAIL")
                break


if __name__ == '__main__':
    main()
