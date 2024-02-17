import serial
import serial.tools.list_ports
from typing import Optional, List


def get_comports_list() -> List[str]:
    """
    scans COM ports and returns their list
    :return: list of available COM ports
    """
    return [comport.device for comport in serial.tools.list_ports.comports()]


class CmdUart:
    ser = serial.Serial()

    def __init__(self):
        self.ser.baudrate = 115200
        self.ser.write_timeout = 0.2
        self.ser.timeout = 0.1

    def send_cmd_and_get_reply(self, cmd: str):
        try:
            self.ser.reset_input_buffer()
            self.ser.reset_output_buffer()
            cmd += "\r\n"
            bcmd: bytes = bytes(cmd, encoding='cp1251')
            self.ser.write(bcmd)
            self.ser.flush()
            # Get answer
            while True:
                reply: str = self.ser.readline().decode('cp1251').strip()
                if reply:
                    return reply
                else:
                    return ""
        except (OSError, serial.SerialException):
            return ""

    def send_cmd_and_get_reply_timeout(self, cmd, timeout):
        try:
            self.ser.reset_input_buffer()
            self.ser.reset_output_buffer()
            cmd += "\r\n"
            bcmd: bytes = bytes(cmd, encoding='cp1251')
            self.ser.write(bcmd)
            self.ser.flush()
            # Get answer
            prev_timeout = self.ser.timeout
            self.ser.timeout = timeout
            reply = self.ser.read().decode('cp1251').strip()
            self.ser.timeout = prev_timeout
            if reply:
                return reply
            else:
                return ""
        except (OSError, serial.SerialException):
            return ""

    def send_cmd_and_get_ok(self, cmd: str, try_cnt=1):
        while try_cnt:
            try_cnt -= 1
            answer: str = self.send_cmd_and_get_reply(cmd)
            # print("{0} {1}".format(Cmd, answer))
            if answer.lower().strip() == 'ok':
                return True
        return False

    def write_binary(self, data):
        try:
            self.ser.write(data)
        except (OSError, serial.SerialException):
            return False
        return True

    def readline(self):
        try:
            reply = self.ser.readline().decode('cp1251').strip()
            if reply:
                return reply
            else:
                return ""
        except (OSError, serial.SerialException):
            return ""

    def check_port(self, port_name: str):
        # print([comport.device for comport in serial.tools.list_ports.comports()])
        if port_name:
            try:
                self.ser.port = port_name
                self.ser.open()
                if self.send_cmd_and_get_ok('Ping', 2):
                    print("Device found at {0}".format(port_name))
                    return True
                self.ser.close()
            except (OSError, serial.SerialException):
                pass
        return False

    def find_port(self):
        ports = serial.tools.list_ports.comports()
        for port in ports:
            if self.check_port(port.device):
                return True
        return False
