<?xml version="1.0" encoding="UTF-8"?>

<!--*****************************************-->
<!--   File    : MagicWand.fst               -->
<!--   Format  : TopoR PCB file              -->
<!--   Version : 1.2.1                       -->
<!--   Program : TopoR 8 Layer 7.0.18746     -->
<!--   Date    : Wednesday, January 31, 2024 -->
<!--   Time    : 18:23                       -->
<!--*****************************************-->

<TopoR_PCB_File>
	<Header>
		<Format>TopoR PCB file</Format>
		<Version>1.2.1</Version>
		<Program>TopoR 8 Layer 7.0.18746</Program>
		<Date>Wednesday, January 31, 2024 18:23</Date>
		<OriginalFormat>Specctra</OriginalFormat>
		<OriginalFile>D:\Nute\MagicThings\MagicWand\MagicWand_hw\MagicWand.dsn</OriginalFile>
		<Units dist="mm" time="ps"/>
	</Header>

	<Layers version="1.1">
		<StackUpLayers>
			<Layer name="Paste Top" type="Paste" thickness="0"/>
			<Layer name="Mask Top" type="Mask" thickness="0"/>
			<Layer name="F.Cu_outline" type="Assy" compsOutline="on"/>
			<Layer name="F.Cu" type="Signal" thickness="0"/>
			<Layer name="In1.Cu" type="Signal" thickness="0"/>
			<Layer name="In2.Cu" type="Signal" thickness="0"/>
			<Layer name="B.Cu" type="Signal" thickness="0"/>
			<Layer name="B.Cu_outline" type="Assy" compsOutline="on"/>
			<Layer name="Mask Bottom" type="Mask" thickness="0"/>
			<Layer name="Paste Bottom" type="Paste" thickness="0"/>
		</StackUpLayers>
	</Layers>

	<TextStyles version="1.0">
		<TextStyle name="Default" fontName="" height="1"/>
	</TextStyles>

	<LocalLibrary version="1.4">
		<Padstacks>
			<Padstack name="Round[T]Pad_1000_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadCircle diameter="1">
						<LayerRef name="F.Cu"/>
					</PadCircle>
				</Pads>
			</Padstack>
			<Padstack name="Round[T]Pad_1500_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadCircle diameter="1.5">
						<LayerRef name="F.Cu"/>
					</PadCircle>
				</Pads>
			</Padstack>
			<Padstack name="Round[A]Pad_1500_um" holeDiameter="0.9" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadCircle diameter="1.5">
						<LayerTypeRef type="Signal"/>
					</PadCircle>
					<PadCircle diameter="1.5">
						<LayerTypeRef type="Plane"/>
					</PadCircle>
				</Pads>
			</Padstack>
			<Padstack name="Round[A]Pad_1676.4_um" holeDiameter="1" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadCircle diameter="1.6764">
						<LayerTypeRef type="Signal"/>
					</PadCircle>
					<PadCircle diameter="1.6764">
						<LayerTypeRef type="Plane"/>
					</PadCircle>
				</Pads>
			</Padstack>
			<Padstack name="Oval[A]Pad_1000x1800_um" holeDiameter="0.6" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadOval diameter="1">
						<LayerTypeRef type="Signal"/>
						<Stretch x="0" y="-0.8"/>
					</PadOval>
					<PadOval diameter="1">
						<LayerTypeRef type="Plane"/>
						<Stretch x="0" y="-0.8"/>
					</PadOval>
				</Pads>
			</Padstack>
			<Padstack name="Oval[A]Pad_1000x2200_um" holeDiameter="0.6" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadOval diameter="1">
						<LayerTypeRef type="Signal"/>
						<Stretch x="0" y="-1.2"/>
					</PadOval>
					<PadOval diameter="1">
						<LayerTypeRef type="Plane"/>
						<Stretch x="0" y="-1.2"/>
					</PadOval>
				</Pads>
			</Padstack>
			<Padstack name="Oval[T]Pad_3000x1500_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadOval diameter="1.5">
						<LayerRef name="F.Cu"/>
						<Stretch x="1.5" y="0"/>
					</PadOval>
				</Pads>
			</Padstack>
			<Padstack name="Oval[T]Pad_1600x2600_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadOval diameter="1.6">
						<LayerRef name="F.Cu"/>
						<Stretch x="0" y="-1"/>
					</PadOval>
				</Pads>
			</Padstack>
			<Padstack name="Oval[A]Pad_1700x2700_um" holeDiameter="1" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadOval diameter="1.7">
						<LayerTypeRef type="Signal"/>
						<Stretch x="0" y="-1"/>
					</PadOval>
					<PadOval diameter="1.7">
						<LayerTypeRef type="Plane"/>
						<Stretch x="0" y="-1"/>
					</PadOval>
				</Pads>
			</Padstack>
			<Padstack name="Oval[T]Pad_1200x270_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadOval diameter="0.27">
						<LayerRef name="F.Cu"/>
						<Stretch x="0.93" y="0"/>
					</PadOval>
				</Pads>
			</Padstack>
			<Padstack name="Oval[T]Pad_508x1501.14_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadOval diameter="0.508">
						<LayerRef name="F.Cu"/>
						<Stretch x="0" y="-0.9932"/>
					</PadOval>
				</Pads>
			</Padstack>
			<Padstack name="RoundRect[T]Pad_600x700_150.571_um_0.000000_0" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadPoly>
						<LayerRef name="F.Cu"/>
						<Dot x="-0.3006" y="0.2"/>
						<Dot x="-0.2891" y="0.2576"/>
						<Dot x="-0.2565" y="0.3065"/>
						<Dot x="-0.2076" y="0.3391"/>
						<Dot x="-0.15" y="0.3506"/>
						<Dot x="0.15" y="0.3506"/>
						<Dot x="0.2076" y="0.3391"/>
						<Dot x="0.2565" y="0.3065"/>
						<Dot x="0.2891" y="0.2576"/>
						<Dot x="0.3006" y="0.2"/>
						<Dot x="0.3006" y="-0.2"/>
						<Dot x="0.2891" y="-0.2576"/>
						<Dot x="0.2565" y="-0.3065"/>
						<Dot x="0.2076" y="-0.3391"/>
						<Dot x="0.15" y="-0.3506"/>
						<Dot x="-0.15" y="-0.3506"/>
						<Dot x="-0.2076" y="-0.3391"/>
						<Dot x="-0.2565" y="-0.3065"/>
						<Dot x="-0.2891" y="-0.2576"/>
						<Dot x="-0.3006" y="-0.2"/>
					</PadPoly>
				</Pads>
			</Padstack>
			<Padstack name="RoundRect[T]Pad_950x1000_238.404_um_0.000000_0" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadPoly>
						<LayerRef name="F.Cu"/>
						<Dot x="-0.4759" y="0.2625"/>
						<Dot x="-0.4578" y="0.3537"/>
						<Dot x="-0.4061" y="0.4311"/>
						<Dot x="-0.3287" y="0.4828"/>
						<Dot x="-0.2375" y="0.5009"/>
						<Dot x="0.2375" y="0.5009"/>
						<Dot x="0.3287" y="0.4828"/>
						<Dot x="0.4061" y="0.4311"/>
						<Dot x="0.4578" y="0.3537"/>
						<Dot x="0.4759" y="0.2625"/>
						<Dot x="0.4759" y="-0.2625"/>
						<Dot x="0.4578" y="-0.3537"/>
						<Dot x="0.4061" y="-0.4311"/>
						<Dot x="0.3287" y="-0.4828"/>
						<Dot x="0.2375" y="-0.5009"/>
						<Dot x="-0.2375" y="-0.5009"/>
						<Dot x="-0.3287" y="-0.4828"/>
						<Dot x="-0.4061" y="-0.4311"/>
						<Dot x="-0.4578" y="-0.3537"/>
						<Dot x="-0.4759" y="-0.2625"/>
					</PadPoly>
				</Pads>
			</Padstack>
			<Padstack name="RoundRect[A]Pad_1700x2700_341.294_um_0.000000_0" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadPoly>
						<LayerTypeRef type="Signal"/>
						<Dot x="-0.8513" y="1.01"/>
						<Dot x="-0.8397" y="1.0983"/>
						<Dot x="-0.7896" y="1.2058"/>
						<Dot x="-0.7058" y="1.2896"/>
						<Dot x="-0.5983" y="1.3397"/>
						<Dot x="-0.51" y="1.3513"/>
						<Dot x="0.51" y="1.3513"/>
						<Dot x="0.5983" y="1.3397"/>
						<Dot x="0.7058" y="1.2896"/>
						<Dot x="0.7896" y="1.2058"/>
						<Dot x="0.8397" y="1.0983"/>
						<Dot x="0.8513" y="1.01"/>
						<Dot x="0.8513" y="-1.01"/>
						<Dot x="0.8397" y="-1.0983"/>
						<Dot x="0.7896" y="-1.2058"/>
						<Dot x="0.7058" y="-1.2896"/>
						<Dot x="0.5983" y="-1.3397"/>
						<Dot x="0.51" y="-1.3513"/>
						<Dot x="-0.51" y="-1.3513"/>
						<Dot x="-0.5983" y="-1.3397"/>
						<Dot x="-0.7058" y="-1.2896"/>
						<Dot x="-0.7896" y="-1.2058"/>
						<Dot x="-0.8397" y="-1.0983"/>
						<Dot x="-0.8513" y="-1.01"/>
					</PadPoly>
					<PadPoly>
						<LayerTypeRef type="Plane"/>
						<Dot x="-0.8513" y="1.01"/>
						<Dot x="-0.8397" y="1.0983"/>
						<Dot x="-0.7896" y="1.2058"/>
						<Dot x="-0.7058" y="1.2896"/>
						<Dot x="-0.5983" y="1.3397"/>
						<Dot x="-0.51" y="1.3513"/>
						<Dot x="0.51" y="1.3513"/>
						<Dot x="0.5983" y="1.3397"/>
						<Dot x="0.7058" y="1.2896"/>
						<Dot x="0.7896" y="1.2058"/>
						<Dot x="0.8397" y="1.0983"/>
						<Dot x="0.8513" y="1.01"/>
						<Dot x="0.8513" y="-1.01"/>
						<Dot x="0.8397" y="-1.0983"/>
						<Dot x="0.7896" y="-1.2058"/>
						<Dot x="0.7058" y="-1.2896"/>
						<Dot x="0.5983" y="-1.3397"/>
						<Dot x="0.51" y="-1.3513"/>
						<Dot x="-0.51" y="-1.3513"/>
						<Dot x="-0.5983" y="-1.3397"/>
						<Dot x="-0.7058" y="-1.2896"/>
						<Dot x="-0.7896" y="-1.2058"/>
						<Dot x="-0.8397" y="-1.0983"/>
						<Dot x="-0.8513" y="-1.01"/>
					</PadPoly>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_2120x1950_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="2.12" height="1.95">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_300x1000_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="0.3" height="1">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_500x450_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="0.5" height="0.45">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_508x1501.14_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="0.508" height="1.5012">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_600x1000_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="0.6" height="1">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[A]Pad_800x1250_um" holeDiameter="0.5" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="0.8" height="1.25">
						<LayerTypeRef type="Signal"/>
					</PadRect>
					<PadRect width="0.8" height="1.25">
						<LayerTypeRef type="Plane"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_889x1016_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="0.889" height="1.016">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_900x900_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="0.9" height="0.9">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_914.4x914.4_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="0.9144" height="0.9144">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1000.76x1000.76_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.0008" height="1.0008">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1050x2400_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.05" height="2.4">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1080x1000_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.08" height="1">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1200x250_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.2" height="0.25">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1200x270_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.2" height="0.27">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1200x1950_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.2" height="1.95">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1400x1000_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.4" height="1">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1500x1500_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.5" height="1.5">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1524x1778_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.524" height="1.778">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[T]Pad_1600x2600_um" type="SMD" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.6" height="2.6">
						<LayerRef name="F.Cu"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Rect[A]Pad_1676.4x1676.4_um" holeDiameter="1" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadRect width="1.6764" height="1.6764">
						<LayerTypeRef type="Signal"/>
					</PadRect>
					<PadRect width="1.6764" height="1.6764">
						<LayerTypeRef type="Plane"/>
					</PadRect>
				</Pads>
			</Padstack>
			<Padstack name="Via[0-3]_600:300_um" holeDiameter="0.4" metallized="on">
				<Thermal spokeNum="4" minSpokeNum="4" angle="45" spokeWidth="0.381" backoff="0.381"/>
				<Pads>
					<PadCircle diameter="0.6">
						<LayerTypeRef type="Signal"/>
					</PadCircle>
					<PadCircle diameter="0.6">
						<LayerTypeRef type="Plane"/>
					</PadCircle>
				</Pads>
			</Padstack>
		</Padstacks>
		<Viastacks>
			<Viastack name="Via[0-3]_600:300_um" holeDiameter="0.3">
				<LayerRange>
					<AllLayers/>
				</LayerRange>
				<ViaPads>
					<PadCircle diameter="0.6">
						<LayerTypeRef type="Signal"/>
					</PadCircle>
				</ViaPads>
			</Viastack>
		</Viastacks>
		<Footprints>
			<Footprint name="Capacitors:CAP_0603_Silks">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="RoundRect[T]Pad_950x1000_238.404_um_0.000000_0"/>
						<Org x="-0.8" y="0"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="RoundRect[T]Pad_950x1000_238.404_um_0.000000_0"/>
						<Org x="0.8" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.55" y="0.75"/>
							<Dot x="1.55" y="0.75"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.55" y="-0.75"/>
							<Dot x="-1.55" y="0.75"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.55" y="0.75"/>
							<Dot x="1.55" y="-0.75"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.55" y="-0.75"/>
							<Dot x="-1.55" y="-0.75"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.35" y="0.6"/>
							<Dot x="1.35" y="0.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.35" y="-0.6"/>
							<Dot x="-1.35" y="0.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.35" y="0.6"/>
							<Dot x="1.35" y="-0.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.35" y="-0.6"/>
							<Dot x="-1.35" y="-0.6"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="LEDs:LED_PLCC2835">
				<Pads>
					<Pad padNum="1" name="A">
						<PadstackRef name="Rect[T]Pad_1200x1950_um"/>
						<Org x="-1.25" y="0"/>
					</Pad>
					<Pad padNum="2" name="C">
						<PadstackRef name="Rect[T]Pad_2120x1950_um"/>
						<Org x="0.79" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.75" y="1.4"/>
							<Dot x="1.75" y="1.4"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.75" y="-1.4"/>
							<Dot x="-1.75" y="1.4"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.75" y="1.4"/>
							<Dot x="1.75" y="-1.4"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.75" y="-1.4"/>
							<Dot x="-1.75" y="-1.4"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="QFN_DFN:DFN6_3x3">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_500x450_um"/>
						<Org x="-1.3" y="0.95"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Rect[T]Pad_500x450_um"/>
						<Org x="-1.3" y="0"/>
					</Pad>
					<Pad padNum="3" name="3">
						<PadstackRef name="Rect[T]Pad_500x450_um"/>
						<Org x="-1.3" y="-0.95"/>
					</Pad>
					<Pad padNum="4" name="4">
						<PadstackRef name="Rect[T]Pad_500x450_um"/>
						<Org x="1.3" y="-0.95"/>
					</Pad>
					<Pad padNum="5" name="5">
						<PadstackRef name="Rect[T]Pad_500x450_um"/>
						<Org x="1.3" y="0"/>
					</Pad>
					<Pad padNum="6" name="6">
						<PadstackRef name="Rect[T]Pad_500x450_um"/>
						<Org x="1.3" y="0.95"/>
					</Pad>
					<Pad padNum="7" name="PAD">
						<PadstackRef name="Rect[A]Pad_800x1250_um"/>
						<Org x="-0.4" y="0.625"/>
					</Pad>
					<Pad padNum="8" name="PAD@1">
						<PadstackRef name="Rect[A]Pad_800x1250_um"/>
						<Org x="-0.4" y="-0.625"/>
					</Pad>
					<Pad padNum="9" name="PAD@2">
						<PadstackRef name="Rect[A]Pad_800x1250_um"/>
						<Org x="0.4" y="0.625"/>
					</Pad>
					<Pad padNum="10" name="PAD@3">
						<PadstackRef name="Rect[A]Pad_800x1250_um"/>
						<Org x="0.4" y="-0.625"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.12">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.7" y="1.7"/>
							<Dot x="-1.2" y="1.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.12">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.7" y="1.2"/>
							<Dot x="-1.7" y="1.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.12">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="1.5"/>
							<Dot x="1.5" y="1.5"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.12">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="-1.5"/>
							<Dot x="-1.5" y="1.5"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.12">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="1.5"/>
							<Dot x="1.5" y="-1.5"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.12">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="-1.5"/>
							<Dot x="-1.5" y="-1.5"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Diodes:SOD323">
				<Pads>
					<Pad padNum="1" name="A">
						<PadstackRef name="Rect[T]Pad_1000.76x1000.76_um"/>
						<Org x="1.3005" y="0"/>
					</Pad>
					<Pad padNum="2" name="C">
						<PadstackRef name="Rect[T]Pad_1000.76x1000.76_um"/>
						<Org x="-1.3005" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.1" y="0.7"/>
							<Dot x="-2.1" y="-0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.1" y="-0.7"/>
							<Dot x="-2" y="-0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2" y="0.7"/>
							<Dot x="-2.1" y="0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2" y="0.7"/>
							<Dot x="2" y="0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2" y="-0.7"/>
							<Dot x="-2" y="0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-0.381" y="0"/>
							<Dot x="0.381" y="-0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-0.381" y="-0.381"/>
							<Dot x="-0.381" y="0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0.381" y="0.381"/>
							<Dot x="-0.381" y="0"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0.381" y="0"/>
							<Dot x="0.381" y="0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0.381" y="-0.381"/>
							<Dot x="0.381" y="0"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2" y="0.7"/>
							<Dot x="2" y="-0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2" y="-0.7"/>
							<Dot x="-2" y="-0.7"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Inductors:IND_SRN2512">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1050x2400_um"/>
						<Org x="-0.925" y="0"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Rect[T]Pad_1050x2400_um"/>
						<Org x="0.925" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.25" y="1"/>
							<Dot x="1.25" y="1"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.25" y="-1"/>
							<Dot x="-1.25" y="1"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.25" y="1"/>
							<Dot x="1.25" y="-1"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.25" y="-1"/>
							<Dot x="-1.25" y="-1"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Pictures:Ostranna_12d7_10d1"/>
			<Footprint name="Connectors:PLS-1Rnd">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Round[A]Pad_1500_um"/>
						<Org x="0" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.27" y="1.27"/>
							<Dot x="1.27" y="1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.27" y="-1.27"/>
							<Dot x="-1.27" y="1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.27" y="1.27"/>
							<Dot x="1.27" y="-1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.27" y="-1.27"/>
							<Dot x="-1.27" y="-1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.27" y="1.27"/>
							<Dot x="1.27" y="1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.27" y="-1.27"/>
							<Dot x="-1.27" y="1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.27" y="1.27"/>
							<Dot x="1.27" y="-1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.27" y="-1.27"/>
							<Dot x="-1.27" y="-1.27"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Connectors:PLS-1Rect">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="RoundRect[A]Pad_1700x2700_341.294_um_0.000000_0"/>
						<Org x="0" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.1" y="1.6"/>
							<Dot x="1.1" y="1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.1" y="-1.6"/>
							<Dot x="-1.1" y="1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.1" y="1.6"/>
							<Dot x="1.1" y="-1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.1" y="-1.6"/>
							<Dot x="-1.1" y="-1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.1" y="1.6"/>
							<Dot x="1.1" y="1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.1" y="-1.6"/>
							<Dot x="-1.1" y="1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.1" y="1.6"/>
							<Dot x="1.1" y="-1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.1" y="-1.6"/>
							<Dot x="-1.1" y="-1.6"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="SOT:SOT23-3">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_914.4x914.4_um"/>
						<Org x="0.889" y="1.016"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Rect[T]Pad_914.4x914.4_um"/>
						<Org x="-0.889" y="1.016"/>
					</Pad>
					<Pad padNum="3" name="3">
						<PadstackRef name="Rect[T]Pad_914.4x914.4_um"/>
						<Org x="0" y="-1.016"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.524" y="0.381"/>
							<Dot x="1.524" y="0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.524" y="-0.381"/>
							<Dot x="-1.524" y="0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.524" y="0.381"/>
							<Dot x="1.524" y="-0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.524" y="-0.381"/>
							<Dot x="-1.524" y="-0.381"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="SOT:SOT23-3A">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_900x900_um"/>
						<Org x="0.96" y="1.3"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Rect[T]Pad_900x900_um"/>
						<Org x="-0.96" y="1.3"/>
					</Pad>
					<Pad padNum="3" name="3">
						<PadstackRef name="Rect[T]Pad_900x900_um"/>
						<Org x="0" y="-1.3"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="0.7"/>
							<Dot x="1.5" y="0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="-0.7"/>
							<Dot x="-1.5" y="0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="0.7"/>
							<Dot x="1.5" y="-0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="-0.7"/>
							<Dot x="-1.5" y="-0.7"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="LEDs:LED_Through-Hole-3mm-Angle">
				<Pads>
					<Pad padNum="1" name="A">
						<PadstackRef name="Rect[A]Pad_1676.4x1676.4_um"/>
						<Org x="-1.27" y="0"/>
					</Pad>
					<Pad padNum="2" name="C">
						<PadstackRef name="Round[A]Pad_1676.4_um"/>
						<Org x="1.27" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.032" y="2.794"/>
							<Dot x="-1.524" y="2.794"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.032" y="2.032"/>
							<Dot x="-2.032" y="2.794"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.524" y="5.842"/>
							<Dot x="-1.524" y="2.794"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.524" y="2.794"/>
							<Dot x="1.524" y="2.794"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.27" y="1.016"/>
							<Dot x="-1.27" y="2.032"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.27" y="1.016"/>
							<Dot x="1.27" y="2.032"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.524" y="5.842"/>
							<Dot x="1.524" y="2.794"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.524" y="2.794"/>
							<Dot x="1.524" y="2.032"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.524" y="2.032"/>
							<Dot x="-2.032" y="2.032"/>
						</Line>
					</Detail>
					<Detail>
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0.2276" y="7.4247"/>
							<Dot x="0.4505" y="7.3762"/>
							<Dot x="0.6642" y="7.2965"/>
							<Dot x="0.8645" y="7.1872"/>
							<Dot x="1.0471" y="7.0504"/>
							<Dot x="1.2084" y="6.8891"/>
							<Dot x="1.3452" y="6.7065"/>
							<Dot x="1.4545" y="6.5063"/>
							<Dot x="1.5342" y="6.2925"/>
							<Dot x="1.5827" y="6.0696"/>
							<Dot x="1.599" y="5.842"/>
							<Dot x="1.5847" y="5.7979"/>
							<Dot x="1.5472" y="5.7707"/>
							<Dot x="1.5008" y="5.7707"/>
							<Dot x="1.4633" y="5.7979"/>
							<Dot x="1.449" y="5.842"/>
							<Dot x="1.4312" y="6.0687"/>
							<Dot x="1.3781" y="6.2898"/>
							<Dot x="1.2911" y="6.4998"/>
							<Dot x="1.1723" y="6.6937"/>
							<Dot x="1.0246" y="6.8666"/>
							<Dot x="0.8517" y="7.0143"/>
							<Dot x="0.6578" y="7.1331"/>
							<Dot x="0.4478" y="7.2201"/>
							<Dot x="0.2267" y="7.2732"/>
							<Dot x="0" y="7.291"/>
							<Dot x="0" y="7.2947"/>
							<Dot x="-0.0232" y="7.2947"/>
							<Dot x="-0.0607" y="7.3219"/>
							<Dot x="-0.075" y="7.366"/>
							<Dot x="-0.0607" y="7.4101"/>
							<Dot x="-0.0232" y="7.4373"/>
							<Dot x="0" y="7.4373"/>
							<Dot x="0" y="7.441"/>
						</Line>
					</Detail>
					<Detail>
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5847" y="5.8861"/>
							<Dot x="1.599" y="5.842"/>
							<Dot x="1.5827" y="5.6144"/>
							<Dot x="1.5342" y="5.3915"/>
							<Dot x="1.4545" y="5.1778"/>
							<Dot x="1.3452" y="4.9775"/>
							<Dot x="1.2084" y="4.7949"/>
							<Dot x="1.0471" y="4.6336"/>
							<Dot x="0.8645" y="4.4968"/>
							<Dot x="0.6642" y="4.3875"/>
							<Dot x="0.4505" y="4.3078"/>
							<Dot x="0.2276" y="4.2593"/>
							<Dot x="0" y="4.243"/>
							<Dot x="0" y="4.2467"/>
							<Dot x="-0.0232" y="4.2467"/>
							<Dot x="-0.0607" y="4.2739"/>
							<Dot x="-0.075" y="4.318"/>
							<Dot x="-0.0607" y="4.3621"/>
							<Dot x="-0.0232" y="4.3893"/>
							<Dot x="0" y="4.3893"/>
							<Dot x="0" y="4.393"/>
							<Dot x="0.2267" y="4.4108"/>
							<Dot x="0.4478" y="4.4639"/>
							<Dot x="0.6578" y="4.5509"/>
							<Dot x="0.8517" y="4.6697"/>
							<Dot x="1.0246" y="4.8174"/>
							<Dot x="1.1723" y="4.9903"/>
							<Dot x="1.2911" y="5.1842"/>
							<Dot x="1.3781" y="5.3942"/>
							<Dot x="1.4312" y="5.6153"/>
							<Dot x="1.449" y="5.842"/>
							<Dot x="1.4633" y="5.8861"/>
							<Dot x="1.5008" y="5.9133"/>
							<Dot x="1.5472" y="5.9133"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Connectors:SLD_2_2D5_SMD">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1600x2600_um"/>
						<Org x="-1.25" y="0"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Oval[T]Pad_1600x2600_um"/>
						<Org x="1.25" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.55" y="1.55"/>
							<Dot x="-2.55" y="-1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.55" y="-1.55"/>
							<Dot x="-2.25" y="-1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.4" y="-1.55"/>
							<Dot x="-2.4" y="1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.3" y="-1.55"/>
							<Dot x="-2.3" y="1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.25" y="1.55"/>
							<Dot x="-2.55" y="1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.25" y="1.55"/>
							<Dot x="2.3" y="1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.3" y="1.55"/>
							<Dot x="2.3" y="-1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.3" y="-1.55"/>
							<Dot x="-2.25" y="-1.55"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Connectors:USBC_16PF-076">
				<Pads>
					<Pad padNum="1" name="A1B12">
						<PadstackRef name="Rect[T]Pad_600x1000_um"/>
						<Org x="-3.2" y="1.35"/>
					</Pad>
					<Pad padNum="2" name="A4B9">
						<PadstackRef name="Rect[T]Pad_600x1000_um"/>
						<Org x="-2.4" y="1.35"/>
					</Pad>
					<Pad padNum="3" name="A5">
						<PadstackRef name="Rect[T]Pad_300x1000_um"/>
						<Org x="-1.25" y="1.35"/>
					</Pad>
					<Pad padNum="4" name="A6">
						<PadstackRef name="Rect[T]Pad_300x1000_um"/>
						<Org x="-0.25" y="1.35"/>
					</Pad>
					<Pad padNum="5" name="A7">
						<PadstackRef name="Rect[T]Pad_300x1000_um"/>
						<Org x="0.25" y="1.35"/>
					</Pad>
					<Pad padNum="6" name="A8">
						<PadstackRef name="Rect[T]Pad_300x1000_um"/>
						<Org x="1.25" y="1.35"/>
					</Pad>
					<Pad padNum="7" name="B1A12">
						<PadstackRef name="Rect[T]Pad_600x1000_um"/>
						<Org x="3.2" y="1.35"/>
					</Pad>
					<Pad padNum="8" name="B4A9">
						<PadstackRef name="Rect[T]Pad_600x1000_um"/>
						<Org x="2.4" y="1.35"/>
					</Pad>
					<Pad padNum="9" name="B5">
						<PadstackRef name="Rect[T]Pad_300x1000_um"/>
						<Org x="1.75" y="1.35"/>
					</Pad>
					<Pad padNum="10" name="B6">
						<PadstackRef name="Rect[T]Pad_300x1000_um"/>
						<Org x="0.75" y="1.35"/>
					</Pad>
					<Pad padNum="11" name="B7">
						<PadstackRef name="Rect[T]Pad_300x1000_um"/>
						<Org x="-0.75" y="1.35"/>
					</Pad>
					<Pad padNum="12" name="B8">
						<PadstackRef name="Rect[T]Pad_300x1000_um"/>
						<Org x="-1.75" y="1.35"/>
					</Pad>
					<Pad padNum="13" name="SHLD1">
						<PadstackRef name="Oval[A]Pad_1000x2200_um"/>
						<Org x="-5.625" y="-3.94"/>
					</Pad>
					<Pad padNum="14" name="SHLD2">
						<PadstackRef name="Oval[A]Pad_1000x1800_um"/>
						<Org x="-5.625" y="0"/>
					</Pad>
					<Pad padNum="15" name="SHLD3">
						<PadstackRef name="Oval[A]Pad_1000x1800_um"/>
						<Org x="5.625" y="0"/>
					</Pad>
					<Pad padNum="16" name="SHLD4">
						<PadstackRef name="Oval[A]Pad_1000x2200_um"/>
						<Org x="5.625" y="-3.94"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-4.5" y="-5.9"/>
							<Dot x="-4.5" y="-5"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0" y="-5.9"/>
							<Dot x="-4.5" y="-5.9"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="4.5" y="-5.9"/>
							<Dot x="0" y="-5.9"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="4.5" y="-5.9"/>
							<Dot x="4.5" y="-5"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-4.63" y="0.55"/>
							<Dot x="-4.63" y="-5.35"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-4.63" y="0.55"/>
							<Dot x="4.63" y="0.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="4.63" y="0.55"/>
							<Dot x="4.63" y="-5.35"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Connectors:PLS-6-NoHole">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1500x1500_um"/>
						<Org x="0" y="0"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Round[T]Pad_1500_um"/>
						<Org x="2.54" y="0"/>
					</Pad>
					<Pad padNum="3" name="3">
						<PadstackRef name="Round[T]Pad_1500_um"/>
						<Org x="5.08" y="0"/>
					</Pad>
					<Pad padNum="4" name="4">
						<PadstackRef name="Round[T]Pad_1500_um"/>
						<Org x="7.62" y="0"/>
					</Pad>
					<Pad padNum="5" name="5">
						<PadstackRef name="Round[T]Pad_1500_um"/>
						<Org x="10.16" y="0"/>
					</Pad>
					<Pad padNum="6" name="6">
						<PadstackRef name="Round[T]Pad_1500_um"/>
						<Org x="12.7" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.524" y="1.27"/>
							<Dot x="-1.27" y="1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.524" y="-1.27"/>
							<Dot x="-1.524" y="1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.397" y="1.27"/>
							<Dot x="-1.397" y="-1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.27" y="1.27"/>
							<Dot x="-1.397" y="1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.27" y="-1.27"/>
							<Dot x="-1.524" y="-1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.27" y="-1.27"/>
							<Dot x="-1.27" y="1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.27" y="-1.27"/>
							<Dot x="13.97" y="-1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="13.97" y="1.27"/>
							<Dot x="-1.27" y="1.27"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="13.97" y="1.27"/>
							<Dot x="13.97" y="-1.27"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="PCB:TESTPOINT_1MM">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Round[T]Pad_1000_um"/>
						<Org x="0" y="0"/>
					</Pad>
				</Pads>
			</Footprint>
			<Footprint name="BtnsSwitches:BTN_4x4_SMD">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1400x1000_um"/>
						<Org x="-2.9" y="1.85"/>
					</Pad>
					<Pad padNum="2" name="1@1">
						<PadstackRef name="Rect[T]Pad_1400x1000_um"/>
						<Org x="2.9" y="1.85"/>
					</Pad>
					<Pad padNum="3" name="2">
						<PadstackRef name="Rect[T]Pad_1400x1000_um"/>
						<Org x="-2.9" y="-1.85"/>
					</Pad>
					<Pad padNum="4" name="2@1">
						<PadstackRef name="Rect[T]Pad_1400x1000_um"/>
						<Org x="2.9" y="-1.85"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.601" y="2.601"/>
							<Dot x="-2.601" y="-2.601"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.601" y="-2.601"/>
							<Dot x="2.601" y="-2.601"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.601" y="2.601"/>
							<Dot x="-2.601" y="2.601"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.601" y="-2.601"/>
							<Dot x="2.601" y="2.601"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.9048" y="0"/>
							<Dot x="1.8854" y="-0.2711"/>
							<Dot x="1.8276" y="-0.5366"/>
							<Dot x="1.7327" y="-0.7913"/>
							<Dot x="1.6024" y="-1.0298"/>
							<Dot x="1.4395" y="-1.2474"/>
							<Dot x="1.2474" y="-1.4395"/>
							<Dot x="1.0298" y="-1.6024"/>
							<Dot x="0.7913" y="-1.7327"/>
							<Dot x="0.5366" y="-1.8276"/>
							<Dot x="0.2711" y="-1.8854"/>
							<Dot x="0" y="-1.9048"/>
							<Dot x="-0.2711" y="-1.8854"/>
							<Dot x="-0.5366" y="-1.8276"/>
							<Dot x="-0.7913" y="-1.7327"/>
							<Dot x="-1.0298" y="-1.6024"/>
							<Dot x="-1.2474" y="-1.4395"/>
							<Dot x="-1.4395" y="-1.2474"/>
							<Dot x="-1.6024" y="-1.0298"/>
							<Dot x="-1.7327" y="-0.7913"/>
							<Dot x="-1.8276" y="-0.5366"/>
							<Dot x="-1.8854" y="-0.2711"/>
							<Dot x="-1.9048" y="0"/>
							<Dot x="-1.8854" y="0.2711"/>
							<Dot x="-1.8276" y="0.5366"/>
							<Dot x="-1.7327" y="0.7913"/>
							<Dot x="-1.6024" y="1.0298"/>
							<Dot x="-1.4395" y="1.2474"/>
							<Dot x="-1.2474" y="1.4395"/>
							<Dot x="-1.0298" y="1.6024"/>
							<Dot x="-0.7913" y="1.7327"/>
							<Dot x="-0.5366" y="1.8276"/>
							<Dot x="-0.2711" y="1.8854"/>
							<Dot x="0" y="1.9048"/>
							<Dot x="0.2711" y="1.8854"/>
							<Dot x="0.5366" y="1.8276"/>
							<Dot x="0.7913" y="1.7327"/>
							<Dot x="1.0298" y="1.6024"/>
							<Dot x="1.2474" y="1.4395"/>
							<Dot x="1.4395" y="1.2474"/>
							<Dot x="1.6024" y="1.0298"/>
							<Dot x="1.7327" y="0.7913"/>
							<Dot x="1.8276" y="0.5366"/>
							<Dot x="1.8854" y="0.2711"/>
							<Dot x="1.9048" y="0"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Inductors:IND_0402_Fab">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="RoundRect[T]Pad_600x700_150.571_um_0.000000_0"/>
						<Org x="-0.5" y="0"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="RoundRect[T]Pad_600x700_150.571_um_0.000000_0"/>
						<Org x="0.5" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1" y="0.55"/>
							<Dot x="1" y="0.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1" y="-0.55"/>
							<Dot x="-1" y="0.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1" y="0.55"/>
							<Dot x="1" y="-0.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1" y="-0.55"/>
							<Dot x="-1" y="-0.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-0.95" y="0.5"/>
							<Dot x="0.95" y="0.5"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-0.95" y="-0.5"/>
							<Dot x="-0.95" y="0.5"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0.95" y="0.5"/>
							<Dot x="0.95" y="-0.5"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0.95" y="-0.5"/>
							<Dot x="-0.95" y="-0.5"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Capacitors:CAP_1206">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1524x1778_um"/>
						<Org x="-1.524" y="0"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Rect[T]Pad_1524x1778_um"/>
						<Org x="1.524" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.6" y="1.2"/>
							<Dot x="2.6" y="1.2"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.6" y="0"/>
							<Dot x="-2.6" y="1.2"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.6" y="-1.2"/>
							<Dot x="-2.6" y="0.1"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.6" y="1.2"/>
							<Dot x="2.6" y="-1.2"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.6" y="-1.2"/>
							<Dot x="-2.6" y="-1.2"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="LQFP_TQFP:LQFP48">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="2.75"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="2.25"/>
					</Pad>
					<Pad padNum="3" name="3">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="1.75"/>
					</Pad>
					<Pad padNum="4" name="4">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="1.25"/>
					</Pad>
					<Pad padNum="5" name="5">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="0.75"/>
					</Pad>
					<Pad padNum="6" name="6">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="0.25"/>
					</Pad>
					<Pad padNum="7" name="7">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="-0.25"/>
					</Pad>
					<Pad padNum="8" name="8">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="-0.75"/>
					</Pad>
					<Pad padNum="9" name="9">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="-1.25"/>
					</Pad>
					<Pad padNum="10" name="10">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="-1.75"/>
					</Pad>
					<Pad padNum="11" name="11">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="-2.25"/>
					</Pad>
					<Pad padNum="12" name="12">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-4.25" y="-2.75"/>
					</Pad>
					<Pad padNum="13" name="13" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-2.75" y="-4.25"/>
					</Pad>
					<Pad padNum="14" name="14" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-2.25" y="-4.25"/>
					</Pad>
					<Pad padNum="15" name="15" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-1.75" y="-4.25"/>
					</Pad>
					<Pad padNum="16" name="16" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-1.25" y="-4.25"/>
					</Pad>
					<Pad padNum="17" name="17" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-0.75" y="-4.25"/>
					</Pad>
					<Pad padNum="18" name="18" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-0.25" y="-4.25"/>
					</Pad>
					<Pad padNum="19" name="19" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="0.25" y="-4.25"/>
					</Pad>
					<Pad padNum="20" name="20" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="0.75" y="-4.25"/>
					</Pad>
					<Pad padNum="21" name="21" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="1.25" y="-4.25"/>
					</Pad>
					<Pad padNum="22" name="22" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="1.75" y="-4.25"/>
					</Pad>
					<Pad padNum="23" name="23" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="2.25" y="-4.25"/>
					</Pad>
					<Pad padNum="24" name="24" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="2.75" y="-4.25"/>
					</Pad>
					<Pad padNum="25" name="25">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="-2.75"/>
					</Pad>
					<Pad padNum="26" name="26">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="-2.25"/>
					</Pad>
					<Pad padNum="27" name="27">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="-1.75"/>
					</Pad>
					<Pad padNum="28" name="28">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="-1.25"/>
					</Pad>
					<Pad padNum="29" name="29">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="-0.75"/>
					</Pad>
					<Pad padNum="30" name="30">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="-0.25"/>
					</Pad>
					<Pad padNum="31" name="31">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="0.25"/>
					</Pad>
					<Pad padNum="32" name="32">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="0.75"/>
					</Pad>
					<Pad padNum="33" name="33">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="1.25"/>
					</Pad>
					<Pad padNum="34" name="34">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="1.75"/>
					</Pad>
					<Pad padNum="35" name="35">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="2.25"/>
					</Pad>
					<Pad padNum="36" name="36">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="4.25" y="2.75"/>
					</Pad>
					<Pad padNum="37" name="37" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="2.75" y="4.25"/>
					</Pad>
					<Pad padNum="38" name="38" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="2.25" y="4.25"/>
					</Pad>
					<Pad padNum="39" name="39" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="1.75" y="4.25"/>
					</Pad>
					<Pad padNum="40" name="40" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="1.25" y="4.25"/>
					</Pad>
					<Pad padNum="41" name="41" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="0.75" y="4.25"/>
					</Pad>
					<Pad padNum="42" name="42" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="0.25" y="4.25"/>
					</Pad>
					<Pad padNum="43" name="43" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-0.25" y="4.25"/>
					</Pad>
					<Pad padNum="44" name="44" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-0.75" y="4.25"/>
					</Pad>
					<Pad padNum="45" name="45" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-1.25" y="4.25"/>
					</Pad>
					<Pad padNum="46" name="46" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-1.75" y="4.25"/>
					</Pad>
					<Pad padNum="47" name="47" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-2.25" y="4.25"/>
					</Pad>
					<Pad padNum="48" name="48" angle="90">
						<PadstackRef name="Oval[T]Pad_1200x270_um"/>
						<Org x="-2.75" y="4.25"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-3.45" y="3.45"/>
							<Dot x="0" y="3.45"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-3.45" y="2.75"/>
							<Dot x="-2.75" y="3.45"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-3.45" y="-3.45"/>
							<Dot x="-3.45" y="3.45"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0" y="3.45"/>
							<Dot x="3.45" y="3.45"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="3.45" y="3.45"/>
							<Dot x="3.45" y="-3.45"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="3.45" y="-3.45"/>
							<Dot x="-3.45" y="-3.45"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Capacitors:CAP_0603_Silks::1">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="RoundRect[T]Pad_950x1000_238.404_um_0.000000_0"/>
						<Org x="-0.8" y="0"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="RoundRect[T]Pad_950x1000_238.404_um_0.000000_0"/>
						<Org x="0.8" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.55" y="-0.75"/>
							<Dot x="-1.55" y="0.75"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.55" y="0.75"/>
							<Dot x="1.55" y="0.75"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.55" y="-0.75"/>
							<Dot x="-1.55" y="-0.75"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.55" y="0.75"/>
							<Dot x="1.55" y="-0.75"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.35" y="-0.6"/>
							<Dot x="-1.35" y="0.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.35" y="0.6"/>
							<Dot x="1.35" y="0.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.35" y="-0.6"/>
							<Dot x="-1.35" y="-0.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.05">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.35" y="0.6"/>
							<Dot x="1.35" y="-0.6"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Diodes:SOD323::1">
				<Pads>
					<Pad padNum="1" name="A">
						<PadstackRef name="Rect[T]Pad_1000.76x1000.76_um"/>
						<Org x="1.3005" y="0"/>
					</Pad>
					<Pad padNum="2" name="C">
						<PadstackRef name="Rect[T]Pad_1000.76x1000.76_um"/>
						<Org x="-1.3005" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.1" y="-0.7"/>
							<Dot x="-2" y="-0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.1" y="0.7"/>
							<Dot x="-2.1" y="-0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2" y="-0.7"/>
							<Dot x="-2" y="0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2" y="0.7"/>
							<Dot x="-2.1" y="0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2" y="0.7"/>
							<Dot x="2" y="0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-0.381" y="-0.381"/>
							<Dot x="-0.381" y="0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-0.381" y="0"/>
							<Dot x="0.381" y="-0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0.381" y="-0.381"/>
							<Dot x="0.381" y="0"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0.381" y="0"/>
							<Dot x="0.381" y="0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="0.381" y="0.381"/>
							<Dot x="-0.381" y="0"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2" y="-0.7"/>
							<Dot x="-2" y="-0.7"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2" y="0.7"/>
							<Dot x="2" y="-0.7"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Connectors:PLS-1Oval">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Oval[A]Pad_1700x2700_um"/>
						<Org x="0" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.1" y="-1.6"/>
							<Dot x="-1.1" y="1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.1" y="1.6"/>
							<Dot x="1.1" y="1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.1" y="-1.6"/>
							<Dot x="-1.1" y="-1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.1" y="1.6"/>
							<Dot x="1.1" y="-1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.1" y="-1.6"/>
							<Dot x="-1.1" y="1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.1" y="1.6"/>
							<Dot x="1.1" y="1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.1" y="-1.6"/>
							<Dot x="-1.1" y="-1.6"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.1" y="1.6"/>
							<Dot x="1.1" y="-1.6"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Connectors:SLD_2_2D5_SMD::1">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1600x2600_um"/>
						<Org x="-1.25" y="0"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Oval[T]Pad_1600x2600_um"/>
						<Org x="1.25" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.55" y="-1.55"/>
							<Dot x="-2.25" y="-1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.55" y="1.55"/>
							<Dot x="-2.55" y="-1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.4" y="-1.55"/>
							<Dot x="-2.4" y="1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.3" y="-1.55"/>
							<Dot x="-2.3" y="1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.25" y="1.55"/>
							<Dot x="-2.55" y="1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.25" y="1.55"/>
							<Dot x="2.3" y="1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.3" y="-1.55"/>
							<Dot x="-2.25" y="-1.55"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.3" y="1.55"/>
							<Dot x="2.3" y="-1.55"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="LGA:14_3x2d5_p0d5">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="-1.5" y="0.75"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="-1.5" y="0.25"/>
					</Pad>
					<Pad padNum="3" name="3">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="-1.5" y="-0.25"/>
					</Pad>
					<Pad padNum="4" name="4">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="-1.5" y="-0.75"/>
					</Pad>
					<Pad padNum="5" name="5" angle="90">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="-0.5" y="-1.25"/>
					</Pad>
					<Pad padNum="6" name="6" angle="90">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="0" y="-1.25"/>
					</Pad>
					<Pad padNum="7" name="7" angle="90">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="0.5" y="-1.25"/>
					</Pad>
					<Pad padNum="8" name="8">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="1.5" y="-0.75"/>
					</Pad>
					<Pad padNum="9" name="9">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="1.5" y="-0.25"/>
					</Pad>
					<Pad padNum="10" name="10">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="1.5" y="0.25"/>
					</Pad>
					<Pad padNum="11" name="11">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="1.5" y="0.75"/>
					</Pad>
					<Pad padNum="12" name="12" angle="90">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="0.5" y="1.25"/>
					</Pad>
					<Pad padNum="13" name="13" angle="90">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="0" y="1.25"/>
					</Pad>
					<Pad padNum="14" name="14" angle="90">
						<PadstackRef name="Rect[T]Pad_1200x250_um"/>
						<Org x="-0.5" y="1.25"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="-1.25"/>
							<Dot x="-1.5" y="1.25"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="0.75"/>
							<Dot x="-1" y="1.25"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="0.9"/>
							<Dot x="-1.1" y="1.25"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="1.25"/>
							<Dot x="1.5" y="1.25"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.1" y="1.25"/>
							<Dot x="-1.45" y="1.1"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="-1.25"/>
							<Dot x="-1.5" y="-1.25"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="1.25"/>
							<Dot x="1.5" y="-1.25"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="PCB:Oval3x1.5">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Oval[T]Pad_3000x1500_um"/>
						<Org x="0" y="0"/>
					</Pad>
				</Pads>
			</Footprint>
			<Footprint name="SOT:SOT23-3::1">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_914.4x914.4_um"/>
						<Org x="0.889" y="1.016"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Rect[T]Pad_914.4x914.4_um"/>
						<Org x="-0.889" y="1.016"/>
					</Pad>
					<Pad padNum="3" name="3">
						<PadstackRef name="Rect[T]Pad_914.4x914.4_um"/>
						<Org x="0" y="-1.016"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.524" y="-0.381"/>
							<Dot x="-1.524" y="0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.524" y="0.381"/>
							<Dot x="1.524" y="0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.524" y="-0.381"/>
							<Dot x="-1.524" y="-0.381"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.524" y="0.381"/>
							<Dot x="1.524" y="-0.381"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="SO_DIL_TSSOP:SO8_150MIL">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_508x1501.14_um"/>
						<Org x="-1.905" y="-2.794"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Oval[T]Pad_508x1501.14_um"/>
						<Org x="-0.635" y="-2.794"/>
					</Pad>
					<Pad padNum="3" name="3">
						<PadstackRef name="Oval[T]Pad_508x1501.14_um"/>
						<Org x="0.635" y="-2.794"/>
					</Pad>
					<Pad padNum="4" name="4">
						<PadstackRef name="Oval[T]Pad_508x1501.14_um"/>
						<Org x="1.905" y="-2.794"/>
					</Pad>
					<Pad padNum="5" name="5">
						<PadstackRef name="Oval[T]Pad_508x1501.14_um"/>
						<Org x="1.905" y="2.794"/>
					</Pad>
					<Pad padNum="6" name="6">
						<PadstackRef name="Oval[T]Pad_508x1501.14_um"/>
						<Org x="0.635" y="2.794"/>
					</Pad>
					<Pad padNum="7" name="7">
						<PadstackRef name="Oval[T]Pad_508x1501.14_um"/>
						<Org x="-0.635" y="2.794"/>
					</Pad>
					<Pad padNum="8" name="8">
						<PadstackRef name="Oval[T]Pad_508x1501.14_um"/>
						<Org x="-1.905" y="2.794"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.667" y="-1.905"/>
							<Dot x="2.667" y="-1.905"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.667" y="-1.778"/>
							<Dot x="-2.667" y="-1.905"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.667" y="0.508"/>
							<Dot x="-2.159" y="0.508"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.667" y="1.905"/>
							<Dot x="-2.667" y="-1.778"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.159" y="-0.508"/>
							<Dot x="-2.667" y="-0.508"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.159" y="0.508"/>
							<Dot x="-2.159" y="-0.508"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.667" y="1.905"/>
							<Dot x="-2.667" y="1.905"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.127">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.667" y="1.905"/>
							<Dot x="2.667" y="-1.905"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="BtnsSwitches:BTN_4x4_SMD::1">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1400x1000_um"/>
						<Org x="-2.9" y="1.85"/>
					</Pad>
					<Pad padNum="2" name="1@1">
						<PadstackRef name="Rect[T]Pad_1400x1000_um"/>
						<Org x="2.9" y="1.85"/>
					</Pad>
					<Pad padNum="3" name="2">
						<PadstackRef name="Rect[T]Pad_1400x1000_um"/>
						<Org x="-2.9" y="-1.85"/>
					</Pad>
					<Pad padNum="4" name="2@1">
						<PadstackRef name="Rect[T]Pad_1400x1000_um"/>
						<Org x="2.9" y="-1.85"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.601" y="-2.601"/>
							<Dot x="2.601" y="-2.601"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-2.601" y="2.601"/>
							<Dot x="-2.601" y="-2.601"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.601" y="-2.601"/>
							<Dot x="2.601" y="2.601"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="2.601" y="2.601"/>
							<Dot x="-2.601" y="2.601"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.1499">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.9048" y="0"/>
							<Dot x="1.8854" y="-0.2711"/>
							<Dot x="1.8276" y="-0.5366"/>
							<Dot x="1.7327" y="-0.7913"/>
							<Dot x="1.6024" y="-1.0298"/>
							<Dot x="1.4395" y="-1.2474"/>
							<Dot x="1.2474" y="-1.4395"/>
							<Dot x="1.0298" y="-1.6024"/>
							<Dot x="0.7913" y="-1.7327"/>
							<Dot x="0.5366" y="-1.8276"/>
							<Dot x="0.2711" y="-1.8854"/>
							<Dot x="0" y="-1.9048"/>
							<Dot x="-0.2711" y="-1.8854"/>
							<Dot x="-0.5366" y="-1.8276"/>
							<Dot x="-0.7913" y="-1.7327"/>
							<Dot x="-1.0298" y="-1.6024"/>
							<Dot x="-1.2474" y="-1.4395"/>
							<Dot x="-1.4395" y="-1.2474"/>
							<Dot x="-1.6024" y="-1.0298"/>
							<Dot x="-1.7327" y="-0.7913"/>
							<Dot x="-1.8276" y="-0.5366"/>
							<Dot x="-1.8854" y="-0.2711"/>
							<Dot x="-1.9048" y="0"/>
							<Dot x="-1.8854" y="0.2711"/>
							<Dot x="-1.8276" y="0.5366"/>
							<Dot x="-1.7327" y="0.7913"/>
							<Dot x="-1.6024" y="1.0298"/>
							<Dot x="-1.4395" y="1.2474"/>
							<Dot x="-1.2474" y="1.4395"/>
							<Dot x="-1.0298" y="1.6024"/>
							<Dot x="-0.7913" y="1.7327"/>
							<Dot x="-0.5366" y="1.8276"/>
							<Dot x="-0.2711" y="1.8854"/>
							<Dot x="0" y="1.9048"/>
							<Dot x="0.2711" y="1.8854"/>
							<Dot x="0.5366" y="1.8276"/>
							<Dot x="0.7913" y="1.7327"/>
							<Dot x="1.0298" y="1.6024"/>
							<Dot x="1.2474" y="1.4395"/>
							<Dot x="1.4395" y="1.2474"/>
							<Dot x="1.6024" y="1.0298"/>
							<Dot x="1.7327" y="0.7913"/>
							<Dot x="1.8276" y="0.5366"/>
							<Dot x="1.8854" y="0.2711"/>
							<Dot x="1.9048" y="0"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Resistors:RES_0603_FUSE">
				<Pads>
					<Pad padNum="1" name="1">
						<PadstackRef name="Rect[T]Pad_1080x1000_um"/>
						<Org x="-0.66" y="0"/>
					</Pad>
					<Pad padNum="2" name="2">
						<PadstackRef name="Rect[T]Pad_1080x1000_um"/>
						<Org x="0.66" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="-0.8"/>
							<Dot x="-1.5" y="0"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="0"/>
							<Dot x="-1.5" y="0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="0.8"/>
							<Dot x="1.5" y="0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="-0.8"/>
							<Dot x="-1.5" y="-0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="0.8"/>
							<Dot x="1.5" y="-0.8"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="LEDs:LED_PLCC2835::1">
				<Pads>
					<Pad padNum="1" name="A">
						<PadstackRef name="Rect[T]Pad_1200x1950_um"/>
						<Org x="-1.25" y="0"/>
					</Pad>
					<Pad padNum="2" name="C">
						<PadstackRef name="Rect[T]Pad_2120x1950_um"/>
						<Org x="0.79" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.75" y="-1.4"/>
							<Dot x="-1.75" y="1.4"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.75" y="1.4"/>
							<Dot x="1.75" y="1.4"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.75" y="-1.4"/>
							<Dot x="-1.75" y="-1.4"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.75" y="1.4"/>
							<Dot x="1.75" y="-1.4"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="LEDs:LED_0603">
				<Pads>
					<Pad padNum="1" name="A">
						<PadstackRef name="Rect[T]Pad_889x1016_um"/>
						<Org x="-0.762" y="0"/>
					</Pad>
					<Pad padNum="2" name="C">
						<PadstackRef name="Rect[T]Pad_889x1016_um"/>
						<Org x="0.762" y="0"/>
					</Pad>
				</Pads>
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="-0.8"/>
							<Dot x="-1.5" y="0.1"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="0"/>
							<Dot x="-1.5" y="0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="-1.5" y="0.8"/>
							<Dot x="1.5" y="0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="-0.8"/>
							<Dot x="-1.5" y="-0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="-0.8"/>
							<Dot x="1.75" y="-0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="0.8"/>
							<Dot x="1.5" y="-0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.5" y="0.8"/>
							<Dot x="1.65" y="0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.65" y="-0.8"/>
							<Dot x="1.5" y="-0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.65" y="0.8"/>
							<Dot x="1.65" y="-0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.7" y="0.8"/>
							<Dot x="1.9" y="0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.75" y="-0.8"/>
							<Dot x="1.75" y="0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.75" y="0.8"/>
							<Dot x="1.65" y="0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.9" y="-0.8"/>
							<Dot x="1.7" y="-0.8"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="1.9" y="0.8"/>
							<Dot x="1.9" y="-0.8"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
			<Footprint name="Installation:Motor_no_Contacts10mm">
				<Details>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="4.6" y="2"/>
							<Dot x="7.5" y="2"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="7.5" y="-2"/>
							<Dot x="4.6" y="-2"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="7.5" y="2"/>
							<Dot x="7.5" y="-2"/>
						</Line>
					</Detail>
					<Detail lineWidth="0.15">
						<LayerRef name="F.Cu_outline"/>
						<Line>
							<Dot x="5" y="0"/>
							<Dot x="4.9804" y="-0.4419"/>
							<Dot x="4.9219" y="-0.8803"/>
							<Dot x="4.8248" y="-1.3119"/>
							<Dot x="4.69" y="-1.7332"/>
							<Dot x="4.5185" y="-2.1409"/>
							<Dot x="4.3116" y="-2.5319"/>
							<Dot x="4.0709" y="-2.903"/>
							<Dot x="3.7984" y="-3.2514"/>
							<Dot x="3.4962" y="-3.5744"/>
							<Dot x="3.1666" y="-3.8694"/>
							<Dot x="2.8123" y="-4.1342"/>
							<Dot x="2.4359" y="-4.3665"/>
							<Dot x="2.0404" y="-4.5647"/>
							<Dot x="1.629" y="-4.7272"/>
							<Dot x="1.2048" y="-4.8527"/>
							<Dot x="0.7712" y="-4.9402"/>
							<Dot x="0.3316" y="-4.989"/>
							<Dot x="-0.1106" y="-4.9988"/>
							<Dot x="-0.552" y="-4.9694"/>
							<Dot x="-0.989" y="-4.9012"/>
							<Dot x="-1.4183" y="-4.7946"/>
							<Dot x="-1.8365" y="-4.6505"/>
							<Dot x="-2.2403" y="-4.47"/>
							<Dot x="-2.6266" y="-4.2545"/>
							<Dot x="-2.9924" y="-4.0057"/>
							<Dot x="-3.3347" y="-3.7256"/>
							<Dot x="-3.6509" y="-3.4163"/>
							<Dot x="-3.9385" y="-3.0802"/>
							<Dot x="-4.1954" y="-2.7201"/>
							<Dot x="-4.4194" y="-2.3387"/>
							<Dot x="-4.6087" y="-1.9389"/>
							<Dot x="-4.7621" y="-1.524"/>
							<Dot x="-4.8781" y="-1.0972"/>
							<Dot x="-4.956" y="-0.6618"/>
							<Dot x="-4.9951" y="-0.2212"/>
							<Dot x="-4.9951" y="0.2212"/>
							<Dot x="-4.956" y="0.6618"/>
							<Dot x="-4.8781" y="1.0972"/>
							<Dot x="-4.7621" y="1.524"/>
							<Dot x="-4.6087" y="1.9389"/>
							<Dot x="-4.4194" y="2.3387"/>
							<Dot x="-4.1954" y="2.7201"/>
							<Dot x="-3.9385" y="3.0802"/>
							<Dot x="-3.6509" y="3.4163"/>
							<Dot x="-3.3347" y="3.7256"/>
							<Dot x="-2.9924" y="4.0057"/>
							<Dot x="-2.6266" y="4.2545"/>
							<Dot x="-2.2403" y="4.47"/>
							<Dot x="-1.8365" y="4.6505"/>
							<Dot x="-1.4183" y="4.7946"/>
							<Dot x="-0.989" y="4.9012"/>
							<Dot x="-0.552" y="4.9694"/>
							<Dot x="-0.1106" y="4.9988"/>
							<Dot x="0.3316" y="4.989"/>
							<Dot x="0.7712" y="4.9402"/>
							<Dot x="1.2048" y="4.8527"/>
							<Dot x="1.629" y="4.7272"/>
							<Dot x="2.0404" y="4.5647"/>
							<Dot x="2.4359" y="4.3665"/>
							<Dot x="2.8123" y="4.1342"/>
							<Dot x="3.1666" y="3.8694"/>
							<Dot x="3.4962" y="3.5744"/>
							<Dot x="3.7984" y="3.2514"/>
							<Dot x="4.0709" y="2.903"/>
							<Dot x="4.3116" y="2.5319"/>
							<Dot x="4.5185" y="2.1409"/>
							<Dot x="4.69" y="1.7332"/>
							<Dot x="4.8248" y="1.3119"/>
							<Dot x="4.9219" y="0.8803"/>
							<Dot x="4.9804" y="0.4419"/>
							<Dot x="5" y="0"/>
						</Line>
					</Detail>
				</Details>
			</Footprint>
		</Footprints>
		<Components>
			<Component name="M1"/>
			<Component name="D6">
				<Pins>
					<Pin pinNum="1" name="A" pinSymName="A" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="C" pinSymName="C" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="D5">
				<Pins>
					<Pin pinNum="1" name="A" pinSymName="A" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="C" pinSymName="C" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="D3">
				<Pins>
					<Pin pinNum="1" name="A" pinSymName="A" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="C" pinSymName="C" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="F1">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="SW2">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="1@1" pinSymName="1@1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="4" name="2@1" pinSymName="2@1" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="SW3">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="1@1" pinSymName="1@1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="4" name="2@1" pinSymName="2@1" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="DA2">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="4" name="4" pinSymName="4" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="5" name="5" pinSymName="5" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="6" name="6" pinSymName="6" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="7" name="7" pinSymName="7" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="8" name="8" pinSymName="8" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="Q3">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="Q5">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="Q4">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="Q6">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL6">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL8">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="DD2">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="4" name="4" pinSymName="4" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="5" name="5" pinSymName="5" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="6" name="6" pinSymName="6" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="7" name="7" pinSymName="7" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="8" name="8" pinSymName="8" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="9" name="9" pinSymName="9" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="10" name="10" pinSymName="10" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="11" name="11" pinSymName="11" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="12" name="12" pinSymName="12" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="13" name="13" pinSymName="13" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="14" name="14" pinSymName="14" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL5">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL4">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL10">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="D7">
				<Pins>
					<Pin pinNum="1" name="A" pinSymName="A" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="C" pinSymName="C" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R11">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C9">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R14">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R4">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R26">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R2">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C18">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R13">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R22">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C11">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R20">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R10">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R15">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R24">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C12">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R17">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R16">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R6">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R8">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C10">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="DD1">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="4" name="4" pinSymName="4" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="5" name="5" pinSymName="5" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="6" name="6" pinSymName="6" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="7" name="7" pinSymName="7" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="8" name="8" pinSymName="8" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="9" name="9" pinSymName="9" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="10" name="10" pinSymName="10" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="11" name="11" pinSymName="11" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="12" name="12" pinSymName="12" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="13" name="13" pinSymName="13" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="14" name="14" pinSymName="14" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="15" name="15" pinSymName="15" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="16" name="16" pinSymName="16" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="17" name="17" pinSymName="17" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="18" name="18" pinSymName="18" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="19" name="19" pinSymName="19" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="20" name="20" pinSymName="20" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="21" name="21" pinSymName="21" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="22" name="22" pinSymName="22" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="23" name="23" pinSymName="23" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="24" name="24" pinSymName="24" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="25" name="25" pinSymName="25" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="26" name="26" pinSymName="26" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="27" name="27" pinSymName="27" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="28" name="28" pinSymName="28" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="29" name="29" pinSymName="29" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="30" name="30" pinSymName="30" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="31" name="31" pinSymName="31" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="32" name="32" pinSymName="32" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="33" name="33" pinSymName="33" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="34" name="34" pinSymName="34" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="35" name="35" pinSymName="35" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="36" name="36" pinSymName="36" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="37" name="37" pinSymName="37" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="38" name="38" pinSymName="38" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="39" name="39" pinSymName="39" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="40" name="40" pinSymName="40" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="41" name="41" pinSymName="41" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="42" name="42" pinSymName="42" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="43" name="43" pinSymName="43" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="44" name="44" pinSymName="44" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="45" name="45" pinSymName="45" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="46" name="46" pinSymName="46" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="47" name="47" pinSymName="47" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="48" name="48" pinSymName="48" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C17">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="L1">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="SW1">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="1@1" pinSymName="1@1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="4" name="2@1" pinSymName="2@1" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="TP1">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL1">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="4" name="4" pinSymName="4" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="5" name="5" pinSymName="5" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="6" name="6" pinSymName="6" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL7">
				<Pins>
					<Pin pinNum="1" name="A1B12" pinSymName="A1B12" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="A4B9" pinSymName="A4B9" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="A5" pinSymName="A5" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="4" name="A6" pinSymName="A6" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="5" name="A7" pinSymName="A7" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="6" name="A8" pinSymName="A8" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="7" name="B1A12" pinSymName="B1A12" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="8" name="B4A9" pinSymName="B4A9" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="9" name="B5" pinSymName="B5" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="10" name="B6" pinSymName="B6" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="11" name="B7" pinSymName="B7" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="12" name="B8" pinSymName="B8" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="13" name="SHLD1" pinSymName="SHLD1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="14" name="SHLD2" pinSymName="SHLD2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="15" name="SHLD3" pinSymName="SHLD3" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="16" name="SHLD4" pinSymName="SHLD4" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL3">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL2">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="D1">
				<Pins>
					<Pin pinNum="1" name="A" pinSymName="A" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="C" pinSymName="C" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="DA3">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="Q2">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="Q1">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="Q7">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL11">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="XL9">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="Logo1"/>
			<Component name="L2">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="D8">
				<Pins>
					<Pin pinNum="1" name="A" pinSymName="A" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="C" pinSymName="C" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="DA1">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="3" name="3" pinSymName="3" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="4" name="4" pinSymName="4" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="5" name="5" pinSymName="5" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="6" name="6" pinSymName="6" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="7" name="PAD" pinSymName="PAD" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="8" name="PAD@1" pinSymName="PAD@1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="9" name="PAD@2" pinSymName="PAD@2" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="10" name="PAD@3" pinSymName="PAD@3" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="D4">
				<Pins>
					<Pin pinNum="1" name="A" pinSymName="A" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="C" pinSymName="C" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="D2">
				<Pins>
					<Pin pinNum="1" name="A" pinSymName="A" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="C" pinSymName="C" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R25">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C13">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C20">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C2">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C4">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C7">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R12">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C3">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R21">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R1">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R7">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R3">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C19">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C5">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R18">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R5">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C15">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R28">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R27">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R23">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C14">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="R19">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C16">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C6">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
			<Component name="C21">
				<Pins>
					<Pin pinNum="1" name="1" pinSymName="1" pinEqual="0" gate="-1" gateEqual="0"/>
					<Pin pinNum="2" name="2" pinSymName="2" pinEqual="0" gate="-1" gateEqual="0"/>
				</Pins>
			</Component>
		</Components>
		<Packages>
			<Package>
				<ComponentRef name="M1"/>
				<FootprintRef name="Installation:Motor_no_Contacts10mm"/>
			</Package>
			<Package>
				<ComponentRef name="D6"/>
				<FootprintRef name="LEDs:LED_0603"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="D5"/>
				<FootprintRef name="LEDs:LED_PLCC2835::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="D3"/>
				<FootprintRef name="LEDs:LED_PLCC2835::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="F1"/>
				<FootprintRef name="Resistors:RES_0603_FUSE"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="SW2"/>
				<FootprintRef name="BtnsSwitches:BTN_4x4_SMD::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
				<Pinpack pinNum="4" padNum="4"/>
			</Package>
			<Package>
				<ComponentRef name="SW3"/>
				<FootprintRef name="BtnsSwitches:BTN_4x4_SMD::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
				<Pinpack pinNum="4" padNum="4"/>
			</Package>
			<Package>
				<ComponentRef name="DA2"/>
				<FootprintRef name="SO_DIL_TSSOP:SO8_150MIL"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
				<Pinpack pinNum="4" padNum="4"/>
				<Pinpack pinNum="5" padNum="5"/>
				<Pinpack pinNum="6" padNum="6"/>
				<Pinpack pinNum="7" padNum="7"/>
				<Pinpack pinNum="8" padNum="8"/>
			</Package>
			<Package>
				<ComponentRef name="Q3"/>
				<FootprintRef name="SOT:SOT23-3::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
			</Package>
			<Package>
				<ComponentRef name="Q5"/>
				<FootprintRef name="SOT:SOT23-3::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
			</Package>
			<Package>
				<ComponentRef name="Q4"/>
				<FootprintRef name="SOT:SOT23-3::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
			</Package>
			<Package>
				<ComponentRef name="Q6"/>
				<FootprintRef name="SOT:SOT23-3::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
			</Package>
			<Package>
				<ComponentRef name="XL6"/>
				<FootprintRef name="PCB:Oval3x1.5"/>
				<Pinpack pinNum="1" padNum="1"/>
			</Package>
			<Package>
				<ComponentRef name="XL8"/>
				<FootprintRef name="PCB:Oval3x1.5"/>
				<Pinpack pinNum="1" padNum="1"/>
			</Package>
			<Package>
				<ComponentRef name="DD2"/>
				<FootprintRef name="LGA:14_3x2d5_p0d5"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
				<Pinpack pinNum="4" padNum="4"/>
				<Pinpack pinNum="5" padNum="5"/>
				<Pinpack pinNum="6" padNum="6"/>
				<Pinpack pinNum="7" padNum="7"/>
				<Pinpack pinNum="8" padNum="8"/>
				<Pinpack pinNum="9" padNum="9"/>
				<Pinpack pinNum="10" padNum="10"/>
				<Pinpack pinNum="11" padNum="11"/>
				<Pinpack pinNum="12" padNum="12"/>
				<Pinpack pinNum="13" padNum="13"/>
				<Pinpack pinNum="14" padNum="14"/>
			</Package>
			<Package>
				<ComponentRef name="XL5"/>
				<FootprintRef name="Connectors:SLD_2_2D5_SMD::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="XL4"/>
				<FootprintRef name="Connectors:SLD_2_2D5_SMD::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="XL10"/>
				<FootprintRef name="Connectors:PLS-1Oval"/>
				<Pinpack pinNum="1" padNum="1"/>
			</Package>
			<Package>
				<ComponentRef name="D7"/>
				<FootprintRef name="Diodes:SOD323::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R11"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C9"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R14"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R4"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R26"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R2"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C18"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R13"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R22"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C11"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R20"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R10"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R15"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R24"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C12"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R17"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R16"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R6"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R8"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C10"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="DD1"/>
				<FootprintRef name="LQFP_TQFP:LQFP48"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
				<Pinpack pinNum="4" padNum="4"/>
				<Pinpack pinNum="5" padNum="5"/>
				<Pinpack pinNum="6" padNum="6"/>
				<Pinpack pinNum="7" padNum="7"/>
				<Pinpack pinNum="8" padNum="8"/>
				<Pinpack pinNum="9" padNum="9"/>
				<Pinpack pinNum="10" padNum="10"/>
				<Pinpack pinNum="11" padNum="11"/>
				<Pinpack pinNum="12" padNum="12"/>
				<Pinpack pinNum="13" padNum="13"/>
				<Pinpack pinNum="14" padNum="14"/>
				<Pinpack pinNum="15" padNum="15"/>
				<Pinpack pinNum="16" padNum="16"/>
				<Pinpack pinNum="17" padNum="17"/>
				<Pinpack pinNum="18" padNum="18"/>
				<Pinpack pinNum="19" padNum="19"/>
				<Pinpack pinNum="20" padNum="20"/>
				<Pinpack pinNum="21" padNum="21"/>
				<Pinpack pinNum="22" padNum="22"/>
				<Pinpack pinNum="23" padNum="23"/>
				<Pinpack pinNum="24" padNum="24"/>
				<Pinpack pinNum="25" padNum="25"/>
				<Pinpack pinNum="26" padNum="26"/>
				<Pinpack pinNum="27" padNum="27"/>
				<Pinpack pinNum="28" padNum="28"/>
				<Pinpack pinNum="29" padNum="29"/>
				<Pinpack pinNum="30" padNum="30"/>
				<Pinpack pinNum="31" padNum="31"/>
				<Pinpack pinNum="32" padNum="32"/>
				<Pinpack pinNum="33" padNum="33"/>
				<Pinpack pinNum="34" padNum="34"/>
				<Pinpack pinNum="35" padNum="35"/>
				<Pinpack pinNum="36" padNum="36"/>
				<Pinpack pinNum="37" padNum="37"/>
				<Pinpack pinNum="38" padNum="38"/>
				<Pinpack pinNum="39" padNum="39"/>
				<Pinpack pinNum="40" padNum="40"/>
				<Pinpack pinNum="41" padNum="41"/>
				<Pinpack pinNum="42" padNum="42"/>
				<Pinpack pinNum="43" padNum="43"/>
				<Pinpack pinNum="44" padNum="44"/>
				<Pinpack pinNum="45" padNum="45"/>
				<Pinpack pinNum="46" padNum="46"/>
				<Pinpack pinNum="47" padNum="47"/>
				<Pinpack pinNum="48" padNum="48"/>
			</Package>
			<Package>
				<ComponentRef name="C17"/>
				<FootprintRef name="Capacitors:CAP_1206"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="L1"/>
				<FootprintRef name="Inductors:IND_0402_Fab"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="SW1"/>
				<FootprintRef name="BtnsSwitches:BTN_4x4_SMD"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
				<Pinpack pinNum="4" padNum="4"/>
			</Package>
			<Package>
				<ComponentRef name="TP1"/>
				<FootprintRef name="PCB:TESTPOINT_1MM"/>
				<Pinpack pinNum="1" padNum="1"/>
			</Package>
			<Package>
				<ComponentRef name="XL1"/>
				<FootprintRef name="Connectors:PLS-6-NoHole"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
				<Pinpack pinNum="4" padNum="4"/>
				<Pinpack pinNum="5" padNum="5"/>
				<Pinpack pinNum="6" padNum="6"/>
			</Package>
			<Package>
				<ComponentRef name="XL7"/>
				<FootprintRef name="Connectors:USBC_16PF-076"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
				<Pinpack pinNum="4" padNum="4"/>
				<Pinpack pinNum="5" padNum="5"/>
				<Pinpack pinNum="6" padNum="6"/>
				<Pinpack pinNum="7" padNum="7"/>
				<Pinpack pinNum="8" padNum="8"/>
				<Pinpack pinNum="9" padNum="9"/>
				<Pinpack pinNum="10" padNum="10"/>
				<Pinpack pinNum="11" padNum="11"/>
				<Pinpack pinNum="12" padNum="12"/>
				<Pinpack pinNum="13" padNum="13"/>
				<Pinpack pinNum="14" padNum="14"/>
				<Pinpack pinNum="15" padNum="15"/>
				<Pinpack pinNum="16" padNum="16"/>
			</Package>
			<Package>
				<ComponentRef name="XL3"/>
				<FootprintRef name="Connectors:SLD_2_2D5_SMD"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="XL2"/>
				<FootprintRef name="Connectors:SLD_2_2D5_SMD"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="D1"/>
				<FootprintRef name="LEDs:LED_Through-Hole-3mm-Angle"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="DA3"/>
				<FootprintRef name="SOT:SOT23-3A"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
			</Package>
			<Package>
				<ComponentRef name="Q2"/>
				<FootprintRef name="SOT:SOT23-3"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
			</Package>
			<Package>
				<ComponentRef name="Q1"/>
				<FootprintRef name="SOT:SOT23-3"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
			</Package>
			<Package>
				<ComponentRef name="Q7"/>
				<FootprintRef name="SOT:SOT23-3"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
			</Package>
			<Package>
				<ComponentRef name="XL11"/>
				<FootprintRef name="Connectors:PLS-1Rect"/>
				<Pinpack pinNum="1" padNum="1"/>
			</Package>
			<Package>
				<ComponentRef name="XL9"/>
				<FootprintRef name="Connectors:PLS-1Rnd"/>
				<Pinpack pinNum="1" padNum="1"/>
			</Package>
			<Package>
				<ComponentRef name="Logo1"/>
				<FootprintRef name="Pictures:Ostranna_12d7_10d1"/>
			</Package>
			<Package>
				<ComponentRef name="L2"/>
				<FootprintRef name="Inductors:IND_SRN2512"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="D8"/>
				<FootprintRef name="Diodes:SOD323"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="DA1"/>
				<FootprintRef name="QFN_DFN:DFN6_3x3"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
				<Pinpack pinNum="3" padNum="3"/>
				<Pinpack pinNum="4" padNum="4"/>
				<Pinpack pinNum="5" padNum="5"/>
				<Pinpack pinNum="6" padNum="6"/>
				<Pinpack pinNum="7" padNum="7"/>
				<Pinpack pinNum="8" padNum="8"/>
				<Pinpack pinNum="9" padNum="9"/>
				<Pinpack pinNum="10" padNum="10"/>
			</Package>
			<Package>
				<ComponentRef name="D4"/>
				<FootprintRef name="LEDs:LED_PLCC2835"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="D2"/>
				<FootprintRef name="LEDs:LED_PLCC2835"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R25"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C13"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C20"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C2"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C4"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C7"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R12"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C3"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R21"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R1"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R7"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R3"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C19"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C5"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R18"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R5"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C15"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R28"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R27"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R23"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C14"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="R19"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C16"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C6"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
			<Package>
				<ComponentRef name="C21"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Pinpack pinNum="1" padNum="1"/>
				<Pinpack pinNum="2" padNum="2"/>
			</Package>
		</Packages>
	</LocalLibrary>

	<Constructive version="1.2">
		<BoardOutline>
			<Contour>
				<Shape>
					<Polyline>
						<Start x="203" y="-101.2"/>
						<SegmentLine>
							<End x="204.5" y="-101.2"/>
						</SegmentLine>
						<SegmentLine>
							<End x="204.5" y="-99.7"/>
						</SegmentLine>
						<SegmentLine>
							<End x="219.5" y="-99.7"/>
						</SegmentLine>
						<SegmentLine>
							<End x="219.5" y="-104.7"/>
						</SegmentLine>
						<SegmentLine>
							<End x="204.5" y="-104.7"/>
						</SegmentLine>
						<SegmentLine>
							<End x="204.5" y="-103.2"/>
						</SegmentLine>
						<SegmentLine>
							<End x="203" y="-103.2"/>
						</SegmentLine>
						<SegmentLine>
							<End x="203" y="-109.4"/>
						</SegmentLine>
						<SegmentLine>
							<End x="104" y="-109.4"/>
						</SegmentLine>
						<SegmentLine>
							<End x="104" y="-106.83"/>
						</SegmentLine>
						<SegmentLine>
							<End x="109.9" y="-106.83"/>
						</SegmentLine>
						<SegmentLine>
							<End x="109.9" y="-97.57"/>
						</SegmentLine>
						<SegmentLine>
							<End x="104" y="-97.57"/>
						</SegmentLine>
						<SegmentLine>
							<End x="104" y="-95"/>
						</SegmentLine>
						<SegmentLine>
							<End x="203" y="-95"/>
						</SegmentLine>
						<SegmentLine>
							<End x="203" y="-101.2"/>
						</SegmentLine>
					</Polyline>
				</Shape>
				<Shape lineWidth="0.01">
					<Polyline>
						<Start x="117.4798" y="-97.7058"/>
						<SegmentLine>
							<End x="117.4917" y="-97.4849"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.5565" y="-97.1911"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.6466" y="-97.0387"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.8545" y="-96.81"/>
						</SegmentLine>
						<SegmentLine>
							<End x="118.0069" y="-96.6991"/>
						</SegmentLine>
						<SegmentLine>
							<End x="118.1942" y="-96.6272"/>
						</SegmentLine>
						<SegmentLine>
							<End x="118.3872" y="-96.5835"/>
						</SegmentLine>
						<SegmentLine>
							<End x="118.6101" y="-96.5755"/>
						</SegmentLine>
						<SegmentLine>
							<End x="166.5058" y="-96.5755"/>
						</SegmentLine>
						<SegmentLine>
							<End x="166.6889" y="-96.5914"/>
						</SegmentLine>
						<SegmentLine>
							<End x="166.8774" y="-96.6519"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.0237" y="-96.7228"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.1779" y="-96.8397"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.2895" y="-96.9631"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.3932" y="-97.1115"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.4536" y="-97.2467"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.4969" y="-97.399"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.5114" y="-97.5237"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.5114" y="-97.6734"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.51" y="-97.8729"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.5109" y="-106.9235"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.4732" y="-107.0833"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.3948" y="-107.2733"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.2938" y="-107.4347"/>
						</SegmentLine>
						<SegmentLine>
							<End x="167.0766" y="-107.6428"/>
						</SegmentLine>
						<SegmentLine>
							<End x="166.8805" y="-107.7378"/>
						</SegmentLine>
						<SegmentLine>
							<End x="166.6242" y="-107.8148"/>
						</SegmentLine>
						<SegmentLine>
							<End x="166.401" y="-107.8148"/>
						</SegmentLine>
						<SegmentLine>
							<End x="118.4435" y="-107.8138"/>
						</SegmentLine>
						<SegmentLine>
							<End x="118.2702" y="-107.793"/>
						</SegmentLine>
						<SegmentLine>
							<End x="118.0346" y="-107.7082"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.8348" y="-107.5805"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.6656" y="-107.4022"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.5605" y="-107.2239"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.501" y="-107.0365"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.4736" y="-106.721"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.4736" y="-106.5382"/>
						</SegmentLine>
						<SegmentLine>
							<End x="117.4778" y="-97.6958"/>
						</SegmentLine>
					</Polyline>
				</Shape>
			</Contour>
		</BoardOutline>
		<Keepouts>
			<Keepout>
				<Role>
					<Trace>
						<LayerRef name="In1.Cu"/>
					</Trace>
				</Role>
				<FilledContour>
					<Start x="167.3" y="-108.5"/>
					<SegmentLine>
						<End x="166.9" y="-108.5"/>
					</SegmentLine>
					<SegmentLine>
						<End x="166.9" y="-109.4"/>
					</SegmentLine>
					<SegmentLine>
						<End x="167.3" y="-109.4"/>
					</SegmentLine>
				</FilledContour>
			</Keepout>
			<Keepout>
				<Role>
					<Trace>
						<LayerRef name="In1.Cu"/>
					</Trace>
				</Role>
				<FilledContour>
					<Start x="182.3" y="-95"/>
					<SegmentLine>
						<End x="182" y="-95.5"/>
					</SegmentLine>
					<SegmentLine>
						<End x="182.4" y="-96"/>
					</SegmentLine>
					<SegmentLine>
						<End x="182.9" y="-95.3"/>
					</SegmentLine>
				</FilledContour>
			</Keepout>
		</Keepouts>
	</Constructive>

	<ComponentsOnBoard version="1.3">
		<Components>
			<CompInstance name="C21" uniqueId="LDDOOPMF" side="Top" angle="-90">
				<ComponentRef name="C21"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="171.7" y="-101.2"/>
			</CompInstance>
			<CompInstance name="C6" uniqueId="EPREGBJS" side="Top" angle="90">
				<ComponentRef name="C6"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="173.2" y="-104.3"/>
			</CompInstance>
			<CompInstance name="C16" uniqueId="ZGVGKCCX" side="Top" angle="180">
				<ComponentRef name="C16"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="192.5" y="-98.2"/>
			</CompInstance>
			<CompInstance name="R19" uniqueId="MCJRVEXL" side="Top">
				<ComponentRef name="R19"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="115.8" y="-98.3"/>
			</CompInstance>
			<CompInstance name="C14" uniqueId="LHVYRDZL" side="Top">
				<ComponentRef name="C14"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="188.8" y="-99.9"/>
			</CompInstance>
			<CompInstance name="R23" uniqueId="MEQBZVPU" side="Top" angle="-90">
				<ComponentRef name="R23"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="112.1" y="-105.8"/>
			</CompInstance>
			<CompInstance name="R27" uniqueId="MXCNVLBY" side="Top" angle="90">
				<ComponentRef name="R27"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="185.3" y="-102.7"/>
			</CompInstance>
			<CompInstance name="R28" uniqueId="RAEMYJKN" side="Top" angle="180">
				<ComponentRef name="R28"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="189.3" y="-105"/>
			</CompInstance>
			<CompInstance name="C15" uniqueId="CHOYTQJP" side="Top" angle="180">
				<ComponentRef name="C15"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="192.5" y="-99.7"/>
			</CompInstance>
			<CompInstance name="R5" uniqueId="MPAUTBRS" side="Top" angle="90" fixed="on">
				<ComponentRef name="R5"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="210.5" y="-102.2"/>
			</CompInstance>
			<CompInstance name="R18" uniqueId="GCHRPYIC" side="Top" angle="180">
				<ComponentRef name="R18"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="190.8" y="-107.8"/>
			</CompInstance>
			<CompInstance name="C5" uniqueId="OZRECOFJ" side="Top" angle="180">
				<ComponentRef name="C5"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="174.1" y="-96.6"/>
			</CompInstance>
			<CompInstance name="C19" uniqueId="KMOFMQYV" side="Top" angle="90">
				<ComponentRef name="C19"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="116.6009" y="-105.8"/>
			</CompInstance>
			<CompInstance name="R3" uniqueId="NGRUNUDC" side="Top" angle="90" fixed="on">
				<ComponentRef name="R3"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="209" y="-102.2"/>
			</CompInstance>
			<CompInstance name="R7" uniqueId="JKVCPUHL" side="Top">
				<ComponentRef name="R7"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="194.3" y="-107.8"/>
			</CompInstance>
			<CompInstance name="R1" uniqueId="HDISIAEY" side="Top" angle="180">
				<ComponentRef name="R1"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="115.8" y="-96.8"/>
			</CompInstance>
			<CompInstance name="R21" uniqueId="IEEIJXTX" side="Top" angle="-90">
				<ComponentRef name="R21"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="113.6" y="-105.8"/>
			</CompInstance>
			<CompInstance name="C3" uniqueId="VCMCPOCA" side="Top" angle="-90">
				<ComponentRef name="C3"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="185.3" y="-99.6"/>
			</CompInstance>
			<CompInstance name="R12" uniqueId="LIMYDQYD" side="Top" angle="90">
				<ComponentRef name="R12"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="115.1" y="-105.8"/>
			</CompInstance>
			<CompInstance name="C7" uniqueId="HVVZRAYG" side="Top">
				<ComponentRef name="C7"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="184.3" y="-105.2"/>
			</CompInstance>
			<CompInstance name="C4" uniqueId="QAJGTKPO" side="Top" angle="90">
				<ComponentRef name="C4"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="171.7" y="-104.3"/>
			</CompInstance>
			<CompInstance name="C2" uniqueId="MYEQFQVV" side="Top">
				<ComponentRef name="C2"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="186.1" y="-97.3"/>
			</CompInstance>
			<CompInstance name="C20" uniqueId="HTRNAPHY" side="Top" angle="-90">
				<ComponentRef name="C20"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="168.5" y="-97.4"/>
			</CompInstance>
			<CompInstance name="C13" uniqueId="SUMMMCLP" side="Top" angle="180">
				<ComponentRef name="C13"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="115.8" y="-99.8"/>
			</CompInstance>
			<CompInstance name="R25" uniqueId="UAOSUJEU" side="Top" angle="180">
				<ComponentRef name="R25"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks"/>
				<Org x="192.4" y="-105"/>
			</CompInstance>
			<CompInstance name="D2" uniqueId="DKCBBQML" side="Top" angle="-90">
				<ComponentRef name="D2"/>
				<FootprintRef name="LEDs:LED_PLCC2835"/>
				<Org x="215.6" y="-102.2"/>
			</CompInstance>
			<CompInstance name="D4" uniqueId="MAFXQZEO" side="Top" angle="-90">
				<ComponentRef name="D4"/>
				<FootprintRef name="LEDs:LED_PLCC2835"/>
				<Org x="212.7" y="-102.2"/>
			</CompInstance>
			<CompInstance name="DA1" uniqueId="FKYIZNAS" side="Top" angle="180">
				<ComponentRef name="DA1"/>
				<FootprintRef name="QFN_DFN:DFN6_3x3"/>
				<Org x="188.8" y="-102.2"/>
			</CompInstance>
			<CompInstance name="D8" uniqueId="AEDXKFMQ" side="Top">
				<ComponentRef name="D8"/>
				<FootprintRef name="Diodes:SOD323"/>
				<Org x="112.3" y="-96.8"/>
			</CompInstance>
			<CompInstance name="L2" uniqueId="BRVVMYUE" side="Top">
				<ComponentRef name="L2"/>
				<FootprintRef name="Inductors:IND_SRN2512"/>
				<Org x="192.6" y="-102"/>
			</CompInstance>
			<CompInstance name="Logo1" uniqueId="UFDXJHMU" side="Top">
				<ComponentRef name="Logo1"/>
				<FootprintRef name="Pictures:Ostranna_12d7_10d1"/>
				<Org x="167.1289" y="-52.1156"/>
			</CompInstance>
			<CompInstance name="XL9" uniqueId="TAFVSGKE" side="Top" fixed="on">
				<ComponentRef name="XL9"/>
				<FootprintRef name="Connectors:PLS-1Rnd"/>
				<Org x="107.4763" y="-96.1066"/>
			</CompInstance>
			<CompInstance name="XL11" uniqueId="YCYFTXMP" side="Top">
				<ComponentRef name="XL11"/>
				<FootprintRef name="Connectors:PLS-1Rect"/>
				<Org x="168.7" y="-102.2"/>
			</CompInstance>
			<CompInstance name="Q7" uniqueId="PZJSCXVQ" side="Top">
				<ComponentRef name="Q7"/>
				<FootprintRef name="SOT:SOT23-3"/>
				<Org x="112.9" y="-99.2"/>
			</CompInstance>
			<CompInstance name="Q1" uniqueId="GOYDRAFG" side="Top" angle="180">
				<ComponentRef name="Q1"/>
				<FootprintRef name="SOT:SOT23-3"/>
				<Org x="197.5326" y="-106.9"/>
			</CompInstance>
			<CompInstance name="Q2" uniqueId="KNIXEGFZ" side="Top" angle="180">
				<ComponentRef name="Q2"/>
				<FootprintRef name="SOT:SOT23-3"/>
				<Org x="201.3" y="-106.9"/>
			</CompInstance>
			<CompInstance name="DA3" uniqueId="PVOIFAXD" side="Top" angle="180">
				<ComponentRef name="DA3"/>
				<FootprintRef name="SOT:SOT23-3A"/>
				<Org x="170.9" y="-97.6"/>
			</CompInstance>
			<CompInstance name="D1" uniqueId="MKRSXIOH" side="Top" angle="-90">
				<ComponentRef name="D1"/>
				<FootprintRef name="LEDs:LED_Through-Hole-3mm-Angle"/>
				<Org x="218.1986" y="-102.2"/>
			</CompInstance>
			<CompInstance name="XL2" uniqueId="APEBAZFW" side="Top" angle="-90">
				<ComponentRef name="XL2"/>
				<FootprintRef name="Connectors:SLD_2_2D5_SMD"/>
				<Org x="201.3" y="-102.2"/>
			</CompInstance>
			<CompInstance name="XL3" uniqueId="MLAUMADW" side="Top" angle="-90">
				<ComponentRef name="XL3"/>
				<FootprintRef name="Connectors:SLD_2_2D5_SMD"/>
				<Org x="206.3" y="-102.2"/>
			</CompInstance>
			<CompInstance name="XL7" uniqueId="HLVHCAXH" side="Top" angle="-90" fixed="on">
				<ComponentRef name="XL7"/>
				<FootprintRef name="Connectors:USBC_16PF-076"/>
				<Org x="109.35" y="-102.2"/>
			</CompInstance>
			<CompInstance name="XL1" uniqueId="QUCYIVWS" side="Top" angle="180">
				<ComponentRef name="XL1"/>
				<FootprintRef name="Connectors:PLS-6-NoHole"/>
				<Org x="183.4366" y="-107.9347"/>
			</CompInstance>
			<CompInstance name="TP1" uniqueId="YVEZELEZ" side="Top">
				<ComponentRef name="TP1"/>
				<FootprintRef name="PCB:TESTPOINT_1MM"/>
				<Org x="187.7941" y="-107.768"/>
			</CompInstance>
			<CompInstance name="SW1" uniqueId="PHDCBNUD" side="Top" angle="90">
				<ComponentRef name="SW1"/>
				<FootprintRef name="BtnsSwitches:BTN_4x4_SMD"/>
				<Org x="197" y="-102.2"/>
			</CompInstance>
			<CompInstance name="L1" uniqueId="CEBWIGTI" side="Top" angle="180">
				<ComponentRef name="L1"/>
				<FootprintRef name="Inductors:IND_0402_Fab"/>
				<Org x="183.5" y="-96.4"/>
			</CompInstance>
			<CompInstance name="C17" uniqueId="JVLEXZDV" side="Top" angle="180">
				<ComponentRef name="C17"/>
				<FootprintRef name="Capacitors:CAP_1206"/>
				<Org x="200.2" y="-97.1"/>
			</CompInstance>
			<CompInstance name="DD1" uniqueId="DPFHJFQV" side="Top" angle="180">
				<ComponentRef name="DD1"/>
				<FootprintRef name="LQFP_TQFP:LQFP48"/>
				<Org x="179.2" y="-100.9"/>
			</CompInstance>
			<CompInstance name="C10" uniqueId="PQCHKAQX" side="Bottom" angle="90">
				<ComponentRef name="C10"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="187.6" y="-106.9"/>
			</CompInstance>
			<CompInstance name="R8" uniqueId="VZSLFWGF" side="Bottom" angle="180">
				<ComponentRef name="R8"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="201" y="-107.7"/>
			</CompInstance>
			<CompInstance name="R6" uniqueId="BHEFWTCA" side="Bottom" angle="270" fixed="on">
				<ComponentRef name="R6"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="210.5" y="-102.2"/>
			</CompInstance>
			<CompInstance name="R16" uniqueId="RDYOHEGK" side="Bottom" angle="180">
				<ComponentRef name="R16"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="191.7" y="-107.7"/>
			</CompInstance>
			<CompInstance name="R17" uniqueId="GPYSTGAN" side="Bottom">
				<ComponentRef name="R17"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="197" y="-107.7"/>
			</CompInstance>
			<CompInstance name="C12" uniqueId="EDQJQYFF" side="Bottom" angle="90">
				<ComponentRef name="C12"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="179.9" y="-106.9"/>
			</CompInstance>
			<CompInstance name="R24" uniqueId="XJGDWEYN" side="Bottom" angle="180">
				<ComponentRef name="R24"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="114.8" y="-96.7"/>
			</CompInstance>
			<CompInstance name="R15" uniqueId="NDYFMLVF" side="Bottom" angle="180">
				<ComponentRef name="R15"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="174.5" y="-107.7"/>
			</CompInstance>
			<CompInstance name="R10" uniqueId="TKXUIVUF" side="Bottom" angle="270">
				<ComponentRef name="R10"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="191.3" y="-97.4"/>
			</CompInstance>
			<CompInstance name="R20" uniqueId="MVNVODXH" side="Bottom" angle="180">
				<ComponentRef name="R20"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="177.6" y="-107.7"/>
			</CompInstance>
			<CompInstance name="C11" uniqueId="VBCDAYSY" side="Bottom" angle="180">
				<ComponentRef name="C11"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="185.2" y="-104.1"/>
			</CompInstance>
			<CompInstance name="R22" uniqueId="SWYHUIUS" side="Bottom" angle="90">
				<ComponentRef name="R22"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="181.4" y="-106.9"/>
			</CompInstance>
			<CompInstance name="R13" uniqueId="UCFPJSKO" side="Bottom">
				<ComponentRef name="R13"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="189" y="-96.7606"/>
			</CompInstance>
			<CompInstance name="C18" uniqueId="MERNEFQI" side="Bottom" angle="180">
				<ComponentRef name="C18"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="114.8" y="-98.2"/>
			</CompInstance>
			<CompInstance name="R2" uniqueId="FRCWLEYM" side="Bottom" angle="180">
				<ComponentRef name="R2"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="115.4" y="-107.7"/>
			</CompInstance>
			<CompInstance name="R26" uniqueId="KTZCTEBQ" side="Bottom">
				<ComponentRef name="R26"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="111.7" y="-98.2"/>
			</CompInstance>
			<CompInstance name="R4" uniqueId="AVSUIKCW" side="Bottom" angle="270" fixed="on">
				<ComponentRef name="R4"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="209" y="-102.2"/>
			</CompInstance>
			<CompInstance name="R14" uniqueId="KMXNUDJM" side="Bottom" angle="180">
				<ComponentRef name="R14"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="170.4471" y="-107.7162"/>
			</CompInstance>
			<CompInstance name="C9" uniqueId="RDLKSWSN" side="Bottom">
				<ComponentRef name="C9"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="181.9897" y="-96.6556"/>
			</CompInstance>
			<CompInstance name="R11" uniqueId="XQNWQZQA" side="Bottom" angle="180">
				<ComponentRef name="R11"/>
				<FootprintRef name="Capacitors:CAP_0603_Silks::1"/>
				<Org x="194.2" y="-96.7"/>
			</CompInstance>
			<CompInstance name="D7" uniqueId="WOZRSTHB" side="Bottom" angle="90">
				<ComponentRef name="D7"/>
				<FootprintRef name="Diodes:SOD323::1"/>
				<Org x="184.6" y="-100.3"/>
			</CompInstance>
			<CompInstance name="XL10" uniqueId="MWZRUIZG" side="Bottom" angle="90">
				<ComponentRef name="XL10"/>
				<FootprintRef name="Connectors:PLS-1Oval"/>
				<Org x="115.8" y="-102.2"/>
			</CompInstance>
			<CompInstance name="XL4" uniqueId="YKZOISEI" side="Bottom" angle="90">
				<ComponentRef name="XL4"/>
				<FootprintRef name="Connectors:SLD_2_2D5_SMD::1"/>
				<Org x="201.3" y="-102.2"/>
			</CompInstance>
			<CompInstance name="XL5" uniqueId="RFYHGJOQ" side="Bottom" angle="90">
				<ComponentRef name="XL5"/>
				<FootprintRef name="Connectors:SLD_2_2D5_SMD::1"/>
				<Org x="206.3" y="-102.2"/>
			</CompInstance>
			<CompInstance name="DD2" uniqueId="GLGBRYHD" side="Bottom" angle="180">
				<ComponentRef name="DD2"/>
				<FootprintRef name="LGA:14_3x2d5_p0d5"/>
				<Org x="184.5" y="-106.9002"/>
			</CompInstance>
			<CompInstance name="XL8" uniqueId="EFHXYJNE" side="Bottom">
				<ComponentRef name="XL8"/>
				<FootprintRef name="PCB:Oval3x1.5"/>
				<Org x="182.3508" y="-101.0134"/>
			</CompInstance>
			<CompInstance name="XL6" uniqueId="DXGMACXS" side="Bottom">
				<ComponentRef name="XL6"/>
				<FootprintRef name="PCB:Oval3x1.5"/>
				<Org x="182.1279" y="-98.8238"/>
			</CompInstance>
			<CompInstance name="Q6" uniqueId="VSLJCNTN" side="Bottom" angle="270">
				<ComponentRef name="Q6"/>
				<FootprintRef name="SOT:SOT23-3::1"/>
				<Org x="185.7" y="-97.4"/>
			</CompInstance>
			<CompInstance name="Q4" uniqueId="GMCUNOOX" side="Bottom">
				<ComponentRef name="Q4"/>
				<FootprintRef name="SOT:SOT23-3::1"/>
				<Org x="197.4" y="-97.5"/>
			</CompInstance>
			<CompInstance name="Q5" uniqueId="DPAOBSEV" side="Bottom" angle="180">
				<ComponentRef name="Q5"/>
				<FootprintRef name="SOT:SOT23-3::1"/>
				<Org x="170.4785" y="-105.278"/>
			</CompInstance>
			<CompInstance name="Q3" uniqueId="TFGFMOHT" side="Bottom">
				<ComponentRef name="Q3"/>
				<FootprintRef name="SOT:SOT23-3::1"/>
				<Org x="201.3" y="-97.5"/>
			</CompInstance>
			<CompInstance name="DA2" uniqueId="XJFKTFXR" side="Bottom" angle="180">
				<ComponentRef name="DA2"/>
				<FootprintRef name="SO_DIL_TSSOP:SO8_150MIL"/>
				<Org x="113.5" y="-102.9"/>
			</CompInstance>
			<CompInstance name="SW3" uniqueId="SDXJDGCX" side="Bottom" angle="270">
				<ComponentRef name="SW3"/>
				<FootprintRef name="BtnsSwitches:BTN_4x4_SMD::1"/>
				<Org x="190.9" y="-102.2"/>
			</CompInstance>
			<CompInstance name="SW2" uniqueId="RZZXZUWB" side="Bottom" angle="90">
				<ComponentRef name="SW2"/>
				<FootprintRef name="BtnsSwitches:BTN_4x4_SMD::1"/>
				<Org x="197" y="-102.2"/>
			</CompInstance>
			<CompInstance name="F1" uniqueId="SNMPGSCR" side="Bottom" angle="90">
				<ComponentRef name="F1"/>
				<FootprintRef name="Resistors:RES_0603_FUSE"/>
				<Org x="186.5" y="-101.4"/>
			</CompInstance>
			<CompInstance name="D3" uniqueId="RXVSWWDJ" side="Bottom" angle="90">
				<ComponentRef name="D3"/>
				<FootprintRef name="LEDs:LED_PLCC2835::1"/>
				<Org x="215.6" y="-102.2"/>
			</CompInstance>
			<CompInstance name="D5" uniqueId="YRGNVYAV" side="Bottom" angle="90">
				<ComponentRef name="D5"/>
				<FootprintRef name="LEDs:LED_PLCC2835::1"/>
				<Org x="212.7" y="-102.2"/>
			</CompInstance>
			<CompInstance name="D6" uniqueId="ZVMQZVHU" side="Bottom">
				<ComponentRef name="D6"/>
				<FootprintRef name="LEDs:LED_0603"/>
				<Org x="112.2" y="-107.7"/>
			</CompInstance>
			<CompInstance name="M1" uniqueId="WXSQDHJZ" side="Bottom" angle="169">
				<ComponentRef name="M1"/>
				<FootprintRef name="Installation:Motor_no_Contacts10mm"/>
				<Org x="175.6505" y="-101.1473"/>
			</CompInstance>
		</Components>
	</ComponentsOnBoard>

	<NetList version="2.0">
		<Net name="GND">
			<PinRef compName="C21" pinName="2"/>
			<PinRef compName="C6" pinName="2"/>
			<PinRef compName="C16" pinName="2"/>
			<PinRef compName="C14" pinName="2"/>
			<PinRef compName="R23" pinName="2"/>
			<PinRef compName="R27" pinName="2"/>
			<PinRef compName="R28" pinName="2"/>
			<PinRef compName="C15" pinName="2"/>
			<PinRef compName="R18" pinName="2"/>
			<PinRef compName="C5" pinName="2"/>
			<PinRef compName="C19" pinName="1"/>
			<PinRef compName="R21" pinName="2"/>
			<PinRef compName="C3" pinName="2"/>
			<PinRef compName="R12" pinName="1"/>
			<PinRef compName="C7" pinName="2"/>
			<PinRef compName="C4" pinName="2"/>
			<PinRef compName="C2" pinName="2"/>
			<PinRef compName="C20" pinName="2"/>
			<PinRef compName="C13" pinName="2"/>
			<PinRef compName="DA1" pinName="2"/>
			<PinRef compName="DA1" pinName="PAD"/>
			<PinRef compName="DA1" pinName="PAD@1"/>
			<PinRef compName="DA1" pinName="PAD@2"/>
			<PinRef compName="DA1" pinName="PAD@3"/>
			<PinRef compName="XL9" pinName="1"/>
			<PinRef compName="XL11" pinName="1"/>
			<PinRef compName="Q2" pinName="2"/>
			<PinRef compName="DA3" pinName="1"/>
			<PinRef compName="XL7" pinName="A1B12"/>
			<PinRef compName="XL7" pinName="B1A12"/>
			<PinRef compName="XL1" pinName="3"/>
			<PinRef compName="C17" pinName="2"/>
			<PinRef compName="DD1" pinName="8"/>
			<PinRef compName="DD1" pinName="23"/>
			<PinRef compName="DD1" pinName="35"/>
			<PinRef compName="DD1" pinName="44"/>
			<PinRef compName="DD1" pinName="47"/>
			<PinRef compName="C10" pinName="2"/>
			<PinRef compName="R8" pinName="2"/>
			<PinRef compName="R16" pinName="2"/>
			<PinRef compName="R17" pinName="2"/>
			<PinRef compName="C12" pinName="2"/>
			<PinRef compName="R20" pinName="2"/>
			<PinRef compName="C11" pinName="2"/>
			<PinRef compName="R22" pinName="2"/>
			<PinRef compName="C18" pinName="1"/>
			<PinRef compName="R26" pinName="2"/>
			<PinRef compName="C9" pinName="1"/>
			<PinRef compName="DD2" pinName="2"/>
			<PinRef compName="DD2" pinName="3"/>
			<PinRef compName="DD2" pinName="6"/>
			<PinRef compName="DD2" pinName="7"/>
			<PinRef compName="Q6" pinName="2"/>
			<PinRef compName="Q4" pinName="2"/>
			<PinRef compName="Q3" pinName="2"/>
			<PinRef compName="DA2" pinName="1"/>
			<PinRef compName="DA2" pinName="3"/>
			<PinRef compName="D6" pinName="C"/>
		</Net>
		<Net name="Net-(DD1-VDDA)">
			<PinRef compName="C3" pinName="1"/>
			<PinRef compName="C2" pinName="1"/>
			<PinRef compName="L1" pinName="1"/>
			<PinRef compName="DD1" pinName="9"/>
		</Net>
		<Net name="+PwrMCU">
			<PinRef compName="C21" pinName="1"/>
			<PinRef compName="C6" pinName="1"/>
			<PinRef compName="C5" pinName="1"/>
			<PinRef compName="C7" pinName="1"/>
			<PinRef compName="C4" pinName="1"/>
			<PinRef compName="DA3" pinName="2"/>
			<PinRef compName="XL1" pinName="1"/>
			<PinRef compName="SW1" pinName="1"/>
			<PinRef compName="SW1" pinName="1@1"/>
			<PinRef compName="L1" pinName="2"/>
			<PinRef compName="DD1" pinName="1"/>
			<PinRef compName="DD1" pinName="24"/>
			<PinRef compName="DD1" pinName="36"/>
			<PinRef compName="DD1" pinName="48"/>
			<PinRef compName="SW3" pinName="1"/>
			<PinRef compName="SW3" pinName="1@1"/>
			<PinRef compName="SW2" pinName="1"/>
			<PinRef compName="SW2" pinName="1@1"/>
			<PinRef compName="F1" pinName="1"/>
		</Net>
		<Net name="+PwrCtrled">
			<PinRef compName="C16" pinName="1"/>
			<PinRef compName="C15" pinName="1"/>
			<PinRef compName="R25" pinName="1"/>
			<PinRef compName="L2" pinName="2"/>
			<PinRef compName="XL2" pinName="1"/>
			<PinRef compName="C17" pinName="1"/>
			<PinRef compName="C9" pinName="2"/>
			<PinRef compName="D7" pinName="C"/>
			<PinRef compName="XL6" pinName="1"/>
		</Net>
		<Net name="/ACC_PWR">
			<PinRef compName="DD1" pinName="27"/>
			<PinRef compName="C10" pinName="1"/>
			<PinRef compName="C11" pinName="1"/>
			<PinRef compName="DD2" pinName="5"/>
			<PinRef compName="DD2" pinName="8"/>
			<PinRef compName="F1" pinName="2"/>
		</Net>
		<Net name="/ADC_BAT">
			<PinRef compName="DD1" pinName="11"/>
			<PinRef compName="C12" pinName="1"/>
			<PinRef compName="R15" pinName="2"/>
			<PinRef compName="R20" pinName="1"/>
		</Net>
		<Net name="Net-(C13-Pad1)">
			<PinRef compName="R19" pinName="2"/>
			<PinRef compName="C13" pinName="1"/>
		</Net>
		<Net name="+PwrUnst">
			<PinRef compName="C14" pinName="1"/>
			<PinRef compName="C20" pinName="1"/>
			<PinRef compName="DA1" pinName="4"/>
			<PinRef compName="DA1" pinName="5"/>
			<PinRef compName="D8" pinName="C"/>
			<PinRef compName="Q7" pinName="2"/>
			<PinRef compName="DA3" pinName="3"/>
		</Net>
		<Net name="/+5V_MID">
			<PinRef compName="R24" pinName="2"/>
			<PinRef compName="C18" pinName="2"/>
			<PinRef compName="DA2" pinName="4"/>
			<PinRef compName="DA2" pinName="8"/>
		</Net>
		<Net name="+BATT">
			<PinRef compName="C19" pinName="2"/>
			<PinRef compName="Q7" pinName="3"/>
			<PinRef compName="R14" pinName="1"/>
			<PinRef compName="XL10" pinName="1"/>
			<PinRef compName="Q5" pinName="2"/>
			<PinRef compName="DA2" pinName="5"/>
		</Net>
		<Net name="/LEDA">
			<PinRef compName="D2" pinName="A"/>
			<PinRef compName="D4" pinName="A"/>
			<PinRef compName="D1" pinName="A"/>
			<PinRef compName="XL3" pinName="1"/>
			<PinRef compName="D3" pinName="A"/>
			<PinRef compName="D5" pinName="A"/>
		</Net>
		<Net name="/LEDIRC">
			<PinRef compName="D1" pinName="C"/>
			<PinRef compName="XL3" pinName="2"/>
		</Net>
		<Net name="Net-(D2-PadC)">
			<PinRef compName="R3" pinName="1"/>
			<PinRef compName="D2" pinName="C"/>
		</Net>
		<Net name="Net-(D3-PadC)">
			<PinRef compName="R4" pinName="1"/>
			<PinRef compName="D3" pinName="C"/>
		</Net>
		<Net name="Net-(D4-PadC)">
			<PinRef compName="R5" pinName="1"/>
			<PinRef compName="D4" pinName="C"/>
		</Net>
		<Net name="Net-(D5-PadC)">
			<PinRef compName="R6" pinName="1"/>
			<PinRef compName="D5" pinName="C"/>
		</Net>
		<Net name="Net-(D6-PadA)">
			<PinRef compName="R2" pinName="1"/>
			<PinRef compName="D6" pinName="A"/>
		</Net>
		<Net name="/VIBRO_OUT">
			<PinRef compName="D7" pinName="A"/>
			<PinRef compName="XL8" pinName="1"/>
			<PinRef compName="Q6" pinName="3"/>
		</Net>
		<Net name="+5vUSB">
			<PinRef compName="R19" pinName="1"/>
			<PinRef compName="R23" pinName="1"/>
			<PinRef compName="R1" pinName="2"/>
			<PinRef compName="D8" pinName="A"/>
			<PinRef compName="Q7" pinName="1"/>
			<PinRef compName="XL7" pinName="A4B9"/>
			<PinRef compName="XL7" pinName="B4A9"/>
			<PinRef compName="R24" pinName="1"/>
		</Net>
		<Net name="Net-(DA1-Vfb)">
			<PinRef compName="R28" pinName="1"/>
			<PinRef compName="R25" pinName="2"/>
			<PinRef compName="DA1" pinName="1"/>
		</Net>
		<Net name="Net-(DA1-SW)">
			<PinRef compName="DA1" pinName="3"/>
			<PinRef compName="L2" pinName="1"/>
		</Net>
		<Net name="/PWR_EN">
			<PinRef compName="R27" pinName="1"/>
			<PinRef compName="DA1" pinName="6"/>
			<PinRef compName="DD1" pinName="20"/>
		</Net>
		<Net name="Net-(DA2-PROG)">
			<PinRef compName="R26" pinName="1"/>
			<PinRef compName="DA2" pinName="2"/>
		</Net>
		<Net name="unconnected-(DA2-~{STDBY}-Pad6)">
			<PinRef compName="DA2" pinName="6"/>
		</Net>
		<Net name="/IS_CHARGING">
			<PinRef compName="DD1" pinName="3"/>
			<PinRef compName="DA2" pinName="7"/>
		</Net>
		<Net name="/BTN3">
			<PinRef compName="DD1" pinName="2"/>
			<PinRef compName="R16" pinName="1"/>
			<PinRef compName="SW3" pinName="2"/>
			<PinRef compName="SW3" pinName="2@1"/>
		</Net>
		<Net name="unconnected-(DD1-PC15-Pad4)">
			<PinRef compName="DD1" pinName="4"/>
		</Net>
		<Net name="/MCU_RST">
			<PinRef compName="TP1" pinName="1"/>
			<PinRef compName="DD1" pinName="7"/>
		</Net>
		<Net name="/BTN1">
			<PinRef compName="R18" pinName="1"/>
			<PinRef compName="SW1" pinName="2"/>
			<PinRef compName="SW1" pinName="2@1"/>
			<PinRef compName="DD1" pinName="10"/>
		</Net>
		<Net name="/BTN2">
			<PinRef compName="DD1" pinName="12"/>
			<PinRef compName="R17" pinName="1"/>
			<PinRef compName="SW2" pinName="2"/>
			<PinRef compName="SW2" pinName="2@1"/>
		</Net>
		<Net name="unconnected-(DD1-PA3-Pad13)">
			<PinRef compName="DD1" pinName="13"/>
		</Net>
		<Net name="/IR_LED_DAC">
			<PinRef compName="R7" pinName="1"/>
			<PinRef compName="DD1" pinName="14"/>
		</Net>
		<Net name="/GREEN_IN">
			<PinRef compName="DD1" pinName="15"/>
			<PinRef compName="R10" pinName="1"/>
		</Net>
		<Net name="/ACC_MISO">
			<PinRef compName="DD1" pinName="16"/>
			<PinRef compName="DD2" pinName="1"/>
		</Net>
		<Net name="/ACC_MOSI">
			<PinRef compName="DD1" pinName="17"/>
			<PinRef compName="DD2" pinName="14"/>
		</Net>
		<Net name="/WHITE_IN">
			<PinRef compName="DD1" pinName="18"/>
			<PinRef compName="R11" pinName="1"/>
		</Net>
		<Net name="/VIBRO_CTRL">
			<PinRef compName="DD1" pinName="19"/>
			<PinRef compName="R13" pinName="1"/>
		</Net>
		<Net name="unconnected-(DD1-PB10-Pad21)">
			<PinRef compName="DD1" pinName="21"/>
		</Net>
		<Net name="unconnected-(DD1-PB11-Pad22)">
			<PinRef compName="DD1" pinName="22"/>
		</Net>
		<Net name="unconnected-(DD1-PB12-Pad25)">
			<PinRef compName="DD1" pinName="25"/>
		</Net>
		<Net name="unconnected-(DD1-PB13-Pad26)">
			<PinRef compName="DD1" pinName="26"/>
		</Net>
		<Net name="/ACC_INT1">
			<PinRef compName="DD1" pinName="28"/>
			<PinRef compName="R22" pinName="1"/>
			<PinRef compName="DD2" pinName="4"/>
		</Net>
		<Net name="/BAT_MEAS_EN">
			<PinRef compName="DD1" pinName="29"/>
			<PinRef compName="R14" pinName="2"/>
			<PinRef compName="Q5" pinName="1"/>
		</Net>
		<Net name="/UART_TX">
			<PinRef compName="XL1" pinName="5"/>
			<PinRef compName="DD1" pinName="30"/>
		</Net>
		<Net name="/UART_RX">
			<PinRef compName="XL1" pinName="6"/>
			<PinRef compName="DD1" pinName="31"/>
		</Net>
		<Net name="/USB_D-">
			<PinRef compName="XL7" pinName="A7"/>
			<PinRef compName="XL7" pinName="B7"/>
			<PinRef compName="DD1" pinName="32"/>
		</Net>
		<Net name="/USB_D+">
			<PinRef compName="XL7" pinName="A6"/>
			<PinRef compName="XL7" pinName="B6"/>
			<PinRef compName="DD1" pinName="33"/>
		</Net>
		<Net name="/SWDIO">
			<PinRef compName="XL1" pinName="4"/>
			<PinRef compName="DD1" pinName="34"/>
		</Net>
		<Net name="/SWCLK">
			<PinRef compName="XL1" pinName="2"/>
			<PinRef compName="DD1" pinName="37"/>
		</Net>
		<Net name="/ACC_CS">
			<PinRef compName="DD1" pinName="38"/>
			<PinRef compName="DD2" pinName="12"/>
		</Net>
		<Net name="/ACC_SCK">
			<PinRef compName="DD1" pinName="39"/>
			<PinRef compName="DD2" pinName="13"/>
		</Net>
		<Net name="/SYS_LED">
			<PinRef compName="DD1" pinName="40"/>
			<PinRef compName="R2" pinName="2"/>
		</Net>
		<Net name="Net-(DD1-PB5)">
			<PinRef compName="R1" pinName="1"/>
			<PinRef compName="DD1" pinName="41"/>
		</Net>
		<Net name="unconnected-(DD1-PB6-Pad42)">
			<PinRef compName="DD1" pinName="42"/>
		</Net>
		<Net name="unconnected-(DD1-PB7-Pad43)">
			<PinRef compName="DD1" pinName="43"/>
		</Net>
		<Net name="unconnected-(DD1-PB8-Pad45)">
			<PinRef compName="DD1" pinName="45"/>
		</Net>
		<Net name="unconnected-(DD1-PB9-Pad46)">
			<PinRef compName="DD1" pinName="46"/>
		</Net>
		<Net name="unconnected-(DD2-INT2-Pad9)">
			<PinRef compName="DD2" pinName="9"/>
		</Net>
		<Net name="unconnected-(DD2-NC-Pad10)">
			<PinRef compName="DD2" pinName="10"/>
		</Net>
		<Net name="unconnected-(DD2-NC-Pad11)">
			<PinRef compName="DD2" pinName="11"/>
		</Net>
		<Net name="Net-(Q1-B)">
			<PinRef compName="R7" pinName="2"/>
			<PinRef compName="Q1" pinName="1"/>
		</Net>
		<Net name="/IR_INTERM">
			<PinRef compName="Q1" pinName="2"/>
			<PinRef compName="Q2" pinName="1"/>
			<PinRef compName="R8" pinName="1"/>
		</Net>
		<Net name="/IR_TX_OUT">
			<PinRef compName="Q1" pinName="3"/>
			<PinRef compName="Q2" pinName="3"/>
			<PinRef compName="XL2" pinName="2"/>
		</Net>
		<Net name="Net-(Q3-B)">
			<PinRef compName="R10" pinName="2"/>
			<PinRef compName="Q3" pinName="1"/>
		</Net>
		<Net name="/GREEN_OUT">
			<PinRef compName="XL4" pinName="1"/>
			<PinRef compName="Q3" pinName="3"/>
		</Net>
		<Net name="Net-(Q4-B)">
			<PinRef compName="R11" pinName="2"/>
			<PinRef compName="Q4" pinName="1"/>
		</Net>
		<Net name="/WHITE_OUT">
			<PinRef compName="XL4" pinName="2"/>
			<PinRef compName="Q4" pinName="3"/>
		</Net>
		<Net name="Net-(Q5-D)">
			<PinRef compName="R15" pinName="1"/>
			<PinRef compName="Q5" pinName="3"/>
		</Net>
		<Net name="Net-(Q6-B)">
			<PinRef compName="R13" pinName="2"/>
			<PinRef compName="Q6" pinName="1"/>
		</Net>
		<Net name="/LEDGC">
			<PinRef compName="R3" pinName="2"/>
			<PinRef compName="R4" pinName="2"/>
			<PinRef compName="XL5" pinName="1"/>
		</Net>
		<Net name="/LEDWC">
			<PinRef compName="R5" pinName="2"/>
			<PinRef compName="R6" pinName="2"/>
			<PinRef compName="XL5" pinName="2"/>
		</Net>
		<Net name="/USB_CC1_IN">
			<PinRef compName="R12" pinName="2"/>
			<PinRef compName="XL7" pinName="A5"/>
		</Net>
		<Net name="/USB_CC2_IN">
			<PinRef compName="R21" pinName="1"/>
			<PinRef compName="XL7" pinName="B5"/>
		</Net>
		<Net name="unconnected-(XL7-SBU1-PadA8)">
			<PinRef compName="XL7" pinName="A8"/>
		</Net>
		<Net name="unconnected-(XL7-SBU2-PadB8)">
			<PinRef compName="XL7" pinName="B8"/>
		</Net>
		<Net name="unconnected-(XL7-PadSHLD1)">
			<PinRef compName="XL7" pinName="SHLD1"/>
		</Net>
		<Net name="unconnected-(XL7-PadSHLD2)">
			<PinRef compName="XL7" pinName="SHLD2"/>
		</Net>
		<Net name="unconnected-(XL7-PadSHLD3)">
			<PinRef compName="XL7" pinName="SHLD3"/>
		</Net>
		<Net name="unconnected-(XL7-PadSHLD4)">
			<PinRef compName="XL7" pinName="SHLD4"/>
		</Net>
		<Net name="unconnected-(DD1-OSCOUT-Pad6)">
			<PinRef compName="DD1" pinName="6"/>
		</Net>
		<Net name="unconnected-(DD1-OSCIN-Pad5)">
			<PinRef compName="DD1" pinName="5"/>
		</Net>
	</NetList>

	<Groups version="1.1">
		<NetGroups>
			<NetGroup name="kicad_default">
				<NetRef name="unconnected-(XL7-SBU2-PadB8)"/>
				<NetRef name="unconnected-(XL7-SBU1-PadA8)"/>
				<NetRef name="unconnected-(XL7-PadSHLD4)"/>
				<NetRef name="unconnected-(XL7-PadSHLD3)"/>
				<NetRef name="unconnected-(XL7-PadSHLD2)"/>
				<NetRef name="unconnected-(XL7-PadSHLD1)"/>
				<NetRef name="unconnected-(DD2-NC-Pad11)"/>
				<NetRef name="unconnected-(DD2-NC-Pad10)"/>
				<NetRef name="unconnected-(DD2-INT2-Pad9)"/>
				<NetRef name="unconnected-(DD1-PC15-Pad4)"/>
				<NetRef name="unconnected-(DD1-PB9-Pad46)"/>
				<NetRef name="unconnected-(DD1-PB8-Pad45)"/>
				<NetRef name="unconnected-(DD1-PB7-Pad43)"/>
				<NetRef name="unconnected-(DD1-PB6-Pad42)"/>
				<NetRef name="unconnected-(DD1-PB13-Pad26)"/>
				<NetRef name="unconnected-(DD1-PB12-Pad25)"/>
				<NetRef name="unconnected-(DD1-PB11-Pad22)"/>
				<NetRef name="unconnected-(DD1-PB10-Pad21)"/>
				<NetRef name="unconnected-(DD1-PA3-Pad13)"/>
				<NetRef name="unconnected-(DD1-OSCOUT-Pad6)"/>
				<NetRef name="unconnected-(DD1-OSCIN-Pad5)"/>
				<NetRef name="unconnected-(DA2-~{STDBY}-Pad6)"/>
				<NetRef name="Net-(Q6-B)"/>
				<NetRef name="Net-(Q5-D)"/>
				<NetRef name="Net-(Q4-B)"/>
				<NetRef name="Net-(Q3-B)"/>
				<NetRef name="Net-(Q1-B)"/>
				<NetRef name="Net-(DD1-VDDA)"/>
				<NetRef name="Net-(DD1-PB5)"/>
				<NetRef name="Net-(DA2-PROG)"/>
				<NetRef name="Net-(DA1-Vfb)"/>
				<NetRef name="Net-(DA1-SW)"/>
				<NetRef name="Net-(D6-PadA)"/>
				<NetRef name="Net-(D5-PadC)"/>
				<NetRef name="Net-(D4-PadC)"/>
				<NetRef name="Net-(D3-PadC)"/>
				<NetRef name="Net-(D2-PadC)"/>
				<NetRef name="Net-(C13-Pad1)"/>
				<NetRef name="/WHITE_IN"/>
				<NetRef name="/VIBRO_CTRL"/>
				<NetRef name="/USB_D-"/>
				<NetRef name="/USB_D+"/>
				<NetRef name="/USB_CC2_IN"/>
				<NetRef name="/USB_CC1_IN"/>
				<NetRef name="/UART_TX"/>
				<NetRef name="/UART_RX"/>
				<NetRef name="/SYS_LED"/>
				<NetRef name="/SWDIO"/>
				<NetRef name="/SWCLK"/>
				<NetRef name="/PWR_EN"/>
				<NetRef name="/MCU_RST"/>
				<NetRef name="/IS_CHARGING"/>
				<NetRef name="/IR_LED_DAC"/>
				<NetRef name="/IR_INTERM"/>
				<NetRef name="/GREEN_IN"/>
				<NetRef name="/BTN3"/>
				<NetRef name="/BTN2"/>
				<NetRef name="/BTN1"/>
				<NetRef name="/BAT_MEAS_EN"/>
				<NetRef name="/ADC_BAT"/>
				<NetRef name="/ACC_SCK"/>
				<NetRef name="/ACC_PWR"/>
				<NetRef name="/ACC_MOSI"/>
				<NetRef name="/ACC_MISO"/>
				<NetRef name="/ACC_INT1"/>
				<NetRef name="/ACC_CS"/>
			</NetGroup>
			<NetGroup name="Wide">
				<NetRef name="GND"/>
				<NetRef name="/WHITE_OUT"/>
				<NetRef name="/VIBRO_OUT"/>
				<NetRef name="/LEDWC"/>
				<NetRef name="/LEDIRC"/>
				<NetRef name="/LEDGC"/>
				<NetRef name="/LEDA"/>
				<NetRef name="/IR_TX_OUT"/>
				<NetRef name="/GREEN_OUT"/>
				<NetRef name="/+5V_MID"/>
				<NetRef name="+PwrUnst"/>
				<NetRef name="+PwrMCU"/>
				<NetRef name="+PwrCtrled"/>
				<NetRef name="+BATT"/>
				<NetRef name="+5vUSB"/>
			</NetGroup>
		</NetGroups>
	</Groups>

	<HiSpeedRules version="3.0">
		<RulesImpedances>
			<Impedance name="Z0_50" Z0="50">
				<LayerRule width="0.2">
					<LayerRef name="B.Cu"/>
				</LayerRule>
				<LayerRule width="0.2">
					<LayerRef name="In2.Cu"/>
				</LayerRule>
				<LayerRule width="0.2">
					<LayerRef name="In1.Cu"/>
				</LayerRule>
				<LayerRule width="0.2">
					<LayerRef name="F.Cu"/>
				</LayerRule>
			</Impedance>
			<ImpedanceDiff name="ZDiff_100" Z0="100">
				<LayerRule width="0.22" gap="0.15">
					<LayerRef name="B.Cu"/>
				</LayerRule>
				<LayerRule width="0.22" gap="0.15">
					<LayerRef name="In2.Cu"/>
				</LayerRule>
				<LayerRule width="0.22" gap="0.15">
					<LayerRef name="In1.Cu"/>
				</LayerRule>
				<LayerRule width="0.22" gap="0.15">
					<LayerRef name="F.Cu"/>
				</LayerRule>
			</ImpedanceDiff>
		</RulesImpedances>
		<SignalClusters>
			<SignalCluster>
				<ImpedanceRef name="Z0_50"/>
				<SourcePinRef compName="DD1" pinName="32"/>
				<Nets>
					<NetRef name="/USB_D-"/>
				</Nets>
				<PinPairs>
					<PinPair>
						<PinRef compName="DD1" pinName="32"/>
						<PinRef compName="XL7" pinName="B7"/>
					</PinPair>
				</PinPairs>
				<Signal name="/USB_D-_XL7-B7">
					<ReceiverPinRef compName="XL7" pinName="B7"/>
					<Components/>
				</Signal>
			</SignalCluster>
			<SignalCluster>
				<ImpedanceRef name="Z0_50"/>
				<SourcePinRef compName="DD1" pinName="33"/>
				<Nets>
					<NetRef name="/USB_D+"/>
				</Nets>
				<PinPairs>
					<PinPair>
						<PinRef compName="DD1" pinName="33"/>
						<PinRef compName="XL7" pinName="A6"/>
					</PinPair>
				</PinPairs>
				<Signal name="/USB_D+_XL7-A6">
					<ReceiverPinRef compName="XL7" pinName="A6"/>
					<Components/>
				</Signal>
			</SignalCluster>
		</SignalClusters>
		<DiffSignals>
			<DiffSignal name="/USB_D_XL7" mismatch="0.2">
				<ImpedanceRef name="ZDiff_100"/>
				<SignalRef name="/USB_D-_XL7-B7"/>
				<SignalRef name="/USB_D+_XL7-A6"/>
			</DiffSignal>
		</DiffSignals>
		<SignalSearchSettings maxNetsInCluster="5" createPinPairs="on">
			<RulesDiffSignalNetsNames>
				<RuleDiffSignalNetsNames enabled="on" negStr="#"/>
				<RuleDiffSignalNetsNames enabled="on" posStr="+" negStr="-"/>
				<RuleDiffSignalNetsNames enabled="on" posStr="P" negStr="N"/>
				<RuleDiffSignalNetsNames enabled="on" posStr="p" negStr="n"/>
				<RuleDiffSignalNetsNames enabled="on" posStr="H" negStr="L"/>
				<RuleDiffSignalNetsNames enabled="on" negStr="_B"/>
			</RulesDiffSignalNetsNames>
			<ExcludedNets minPinsNumber="20">
				<NetRef name="GND"/>
			</ExcludedNets>
		</SignalSearchSettings>
	</HiSpeedRules>

	<Rules version="2.0">
		<RulesWidthOfWires>
			<WidthOfWires enabled="on" widthMin="0.15" widthNom="0.15">
				<AllLayers/>
				<ObjectsAffected>
					<AllNets/>
				</ObjectsAffected>
			</WidthOfWires>
			<WidthOfWires enabled="on" widthMin="0.15" widthNom="0.15">
				<AllLayers/>
				<ObjectsAffected>
					<NetGroupRef name="kicad_default"/>
				</ObjectsAffected>
			</WidthOfWires>
			<WidthOfWires enabled="on" widthMin="0.5" widthNom="0.5">
				<AllLayers/>
				<ObjectsAffected>
					<NetGroupRef name="Wide"/>
				</ObjectsAffected>
			</WidthOfWires>
		</RulesWidthOfWires>
		<RulesClearancesNetToNet>
			<ClearanceNetToNet enabled="on" clrnMin="0.15" clrnNom="0.18">
				<AllLayers/>
				<ObjectsAffected>
					<AllNets/>
					<AllNets/>
				</ObjectsAffected>
			</ClearanceNetToNet>
			<ClearanceNetToNet enabled="on" clrnMin="0.1501" clrnNom="0.2251">
				<AllLayers/>
				<ObjectsAffected>
					<NetGroupRef name="kicad_default"/>
					<AllNets/>
				</ObjectsAffected>
			</ClearanceNetToNet>
			<ClearanceNetToNet enabled="on" clrnMin="0.1501" clrnNom="0.2251">
				<AllLayers/>
				<ObjectsAffected>
					<NetGroupRef name="Wide"/>
					<AllNets/>
				</ObjectsAffected>
			</ClearanceNetToNet>
		</RulesClearancesNetToNet>
		<RulesClearancesCompToComp>
			<ClearanceCompToComp enabled="on" clrn="0.25">
				<ObjectsAffected>
					<AllComps/>
					<AllComps/>
				</ObjectsAffected>
			</ClearanceCompToComp>
		</RulesClearancesCompToComp>
		<RulesClearancesToBoard wires="0.3" comps="0.3"/>
		<RulesViastacksOfNets>
			<ViastacksOfNets enabled="on">
				<ObjectsAffected>
					<AllNets/>
				</ObjectsAffected>
				<Viastacks>
					<AllViastacks/>
				</Viastacks>
			</ViastacksOfNets>
		</RulesViastacksOfNets>
		<NetProperties>
			<NetProperty flexfix="off" route="on">
				<NetRef name="GND"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(DD1-VDDA)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="+PwrMCU"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="+PwrCtrled"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/ACC_PWR"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/ADC_BAT"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(C13-Pad1)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="+PwrUnst"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/+5V_MID"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="+BATT"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/LEDA"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/LEDIRC"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(D2-PadC)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(D3-PadC)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(D4-PadC)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(D5-PadC)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(D6-PadA)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/VIBRO_OUT"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="+5vUSB"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(DA1-Vfb)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(DA1-SW)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/PWR_EN"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(DA2-PROG)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DA2-~{STDBY}-Pad6)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/IS_CHARGING"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/BTN3"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PC15-Pad4)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/MCU_RST"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/BTN1"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/BTN2"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PA3-Pad13)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/IR_LED_DAC"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/GREEN_IN"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/ACC_MISO"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/ACC_MOSI"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/WHITE_IN"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/VIBRO_CTRL"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PB10-Pad21)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PB11-Pad22)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PB12-Pad25)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PB13-Pad26)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/ACC_INT1"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/BAT_MEAS_EN"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/UART_TX"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/UART_RX"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/USB_D-"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/USB_D+"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/SWDIO"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/SWCLK"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/ACC_CS"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/ACC_SCK"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/SYS_LED"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(DD1-PB5)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PB6-Pad42)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PB7-Pad43)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PB8-Pad45)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-PB9-Pad46)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD2-INT2-Pad9)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD2-NC-Pad10)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD2-NC-Pad11)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(Q1-B)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/IR_INTERM"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/IR_TX_OUT"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(Q3-B)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/GREEN_OUT"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(Q4-B)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/WHITE_OUT"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(Q5-D)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="Net-(Q6-B)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/LEDGC"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/LEDWC"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/USB_CC1_IN"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="/USB_CC2_IN"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(XL7-SBU1-PadA8)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(XL7-SBU2-PadB8)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(XL7-PadSHLD1)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(XL7-PadSHLD2)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(XL7-PadSHLD3)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(XL7-PadSHLD4)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-OSCOUT-Pad6)"/>
			</NetProperty>
			<NetProperty flexfix="off" route="on">
				<NetRef name="unconnected-(DD1-OSCIN-Pad5)"/>
			</NetProperty>
		</NetProperties>
		<PadConnectSettings mode="AutoConnect"/>
	</Rules>

	<Connectivity version="1.3">
		<Vias>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="168.3038" y="-104.5488"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="169.7546" y="-105.2455"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="176.0021" y="-103.1259"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="170.2254" y="-102.7001"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="110.656" y="-106.1622"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+5vUSB"/>
				<Org x="112.0947" y="-96.8384"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+5vUSB"/>
				<Org x="112.1007" y="-104.2948"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/USB_D+"/>
				<Org x="111.6995" y="-102.9987"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/USB_D-"/>
				<Org x="111.6911" y="-101.4016"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="110.715" y="-97.9864"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/USB_D-"/>
				<Org x="112.6567" y="-102.9304"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/USB_D+"/>
				<Org x="112.773" y="-101.9581"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/LEDWC"/>
				<Org x="210.277" y="-101.214"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/LEDGC"/>
				<Org x="208.802" y="-101.23"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/IR_INTERM"/>
				<Org x="199.369" y="-108.358"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="Net-(DD1-PB5)"/>
				<Org x="116.783" y="-96.6042"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="Net-(DD1-PB5)"/>
				<Org x="178.0035" y="-103.8445"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/SYS_LED"/>
				<Org x="177.1726" y="-104.0932"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_SCK"/>
				<Org x="186.0658" y="-108.7684"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_SCK"/>
				<Org x="178.6866" y="-106.2751"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_CS"/>
				<Org x="177.1681" y="-106.2951"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_CS"/>
				<Org x="185.4886" y="-108.2496"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/USB_D+"/>
				<Org x="177.615" y="-100.515"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/USB_D-"/>
				<Org x="176.707" y="-100.51"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BAT_MEAS_EN"/>
				<Org x="172.2748" y="-106.9111"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BAT_MEAS_EN"/>
				<Org x="173.4692" y="-101.1961"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_INT1"/>
				<Org x="177.8711" y="-99.4409"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/VIBRO_CTRL"/>
				<Org x="188.9724" y="-97.5687"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/VIBRO_CTRL"/>
				<Org x="179.0211" y="-98.4295"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/WHITE_IN"/>
				<Org x="179.4246" y="-97.6952"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/WHITE_IN"/>
				<Org x="192.4735" y="-96.4467"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_MOSI"/>
				<Org x="182.2353" y="-108.7874"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_MOSI"/>
				<Org x="179.7326" y="-98.8991"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_MISO"/>
				<Org x="179.6222" y="-100.3912"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_MISO"/>
				<Org x="179.8579" y="-108.701"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/GREEN_IN"/>
				<Org x="190.1408" y="-97.7866"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/GREEN_IN"/>
				<Org x="180.795" y="-97.6975"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/IR_LED_DAC"/>
				<Org x="193.2295" y="-106.849"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/IR_LED_DAC"/>
				<Org x="180.8386" y="-100.0237"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BTN2"/>
				<Org x="199.3408" y="-103.8749"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BTN2"/>
				<Org x="182.696" y="-97.6151"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BTN2"/>
				<Org x="199.3918" y="-100.5251"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BTN1"/>
				<Org x="190.864" y="-106.674"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BTN1"/>
				<Org x="198.5157" y="-103.8749"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BTN1"/>
				<Org x="198.5667" y="-100.5251"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BTN1"/>
				<Org x="180.8245" y="-101.9745"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/MCU_RST"/>
				<Org x="188.3805" y="-106.9"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/MCU_RST"/>
				<Org x="181.6884" y="-103.8778"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/BTN3"/>
				<Org x="187.499" y="-104.893"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/IS_CHARGING"/>
				<Org x="182.4049" y="-102.9006"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/IS_CHARGING"/>
				<Org x="112.9433" y="-108.7331"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/PWR_EN"/>
				<Org x="187.3118" y="-103.8473"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/PWR_EN"/>
				<Org x="178.3451" y="-97.842"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+5vUSB"/>
				<Org x="112.7308" y="-96.8508"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/LEDIRC"/>
				<Org x="209.5503" y="-104.1"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/LEDIRC"/>
				<Org x="208.0501" y="-103.939"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/LEDIRC"/>
				<Org x="208.8002" y="-104.0712"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/LEDA"/>
				<Org x="211.2749" y="-100.4645"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/LEDA"/>
				<Org x="209.7747" y="-100.3905"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/LEDA"/>
				<Org x="210.5248" y="-100.3889"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ADC_BAT"/>
				<Org x="180.044" y="-103.1272"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="/ACC_PWR"/>
				<Org x="177.3092" y="-98.8234"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+PwrCtrled"/>
				<Org x="188.9313" y="-95.7243"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+PwrCtrled"/>
				<Org x="189.6756" y="-95.7346"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+PwrCtrled"/>
				<Org x="188.1754" y="-95.7346"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+PwrMCU"/>
				<Org x="194.5751" y="-100.9909"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+PwrMCU"/>
				<Org x="172.6624" y="-100.8406"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+PwrMCU"/>
				<Org x="173.0887" y="-106.026"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+PwrMCU"/>
				<Org x="186.9704" y="-99.7497"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+PwrMCU"/>
				<Org x="182.8" y="-104.45"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="+PwrMCU"/>
				<Org x="183.5811" y="-97.4447"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="169.9681" y="-99.8001"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="196.2844" y="-100.9687"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="185.459" y="-102.488"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="202.375" y="-105.46"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="170.5378" y="-100.7158"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="196.944" y="-106.9337"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="202.0927" y="-106.749"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="186.026" y="-105.051"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="177.4011" y="-108.6804"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="184.5292" y="-106.7003"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="170.2519" y="-101.8224"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="178.8419" y="-101.8797"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="200.02" y="-105.122"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="173.8569" y="-102.4636"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="181.919" y="-107.1605"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="196.2828" y="-103.5056"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="113.6673" y="-99.1542"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="194.919" y="-106.751"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="168.294" y="-99.7955"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="187.6233" y="-98.414"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="173.1199" y="-97.551"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="111.14" y="-106.7407"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="181.6041" y="-102.2146"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="180.606" y="-104.088"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="176.0881" y="-97.702"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="169.218" y="-100.077"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="175.0296" y="-104.4866"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="188.527" y="-108.798"/>
			</Via>
			<Via fixed="on">
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="116.8035" y="-106.7482"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="200.032" y="-98.9316"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="186.6834" y="-108.234"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="199.8881" y="-97.4663"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="197.42" y="-104.446"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="190.791" y="-99.1934"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="197.304" y="-102.091"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="189.074" y="-107.96"/>
			</Via>
			<Via>
				<ViastackRef name="Via[0-3]_600:300_um"/>
				<NetRef name="GND"/>
				<Org x="197.4639" y="-97.2466"/>
			</Via>
		</Vias>
		<ZippedWires>
			<ZippedWire id="zwire_0" fixed="on">
				<LayerRef name="F.Cu"/>
				<DiffSignalRef name="/USB_D_XL7"/>
				<Start x="111.5395" y="-102.2301"/>
				<TrackLine>
					<End x="111.8748" y="-102.2304"/>
				</TrackLine>
				<TrackLine>
					<End x="112.2473" y="-102.3447"/>
				</TrackLine>
			</ZippedWire>
			<ZippedWire id="zwire_1" fixed="on">
				<LayerRef name="In1.Cu"/>
				<DiffSignalRef name="/USB_D_XL7"/>
				<Start x="113.1149" y="-102.4841"/>
				<TrackLine>
					<End x="113.3606" y="-102.5186"/>
				</TrackLine>
				<TrackLine>
					<End x="113.602" y="-102.4496"/>
				</TrackLine>
				<TrackLine>
					<End x="113.7184" y="-102.3677"/>
				</TrackLine>
				<TrackLine>
					<End x="113.9038" y="-102.1608"/>
				</TrackLine>
				<TrackLine>
					<End x="114.0331" y="-101.803"/>
				</TrackLine>
				<TrackLine>
					<End x="114.3188" y="-99.9523"/>
				</TrackLine>
				<TrackLine>
					<End x="114.5266" y="-99.1573"/>
				</TrackLine>
				<TrackLine>
					<End x="114.8522" y="-97.9274"/>
				</TrackLine>
				<TrackLine>
					<End x="115.9629" y="-96.2645"/>
				</TrackLine>
				<TrackLine>
					<End x="116.4433" y="-95.7841"/>
				</TrackLine>
				<TrackLine>
					<End x="117.1227" y="-95.7841"/>
				</TrackLine>
				<TrackLine>
					<End x="166.7545" y="-95.975"/>
				</TrackLine>
				<TrackLine>
					<End x="166.8026" y="-95.9791"/>
				</TrackLine>
				<TrackLine>
					<End x="166.912" y="-95.9886"/>
				</TrackLine>
				<TrackLine>
					<End x="166.9376" y="-95.9909"/>
				</TrackLine>
				<TrackLine>
					<End x="173.4596" y="-96.7309"/>
				</TrackLine>
				<TrackLine>
					<End x="173.94" y="-97.2113"/>
				</TrackLine>
				<TrackLine>
					<End x="176.8023" y="-99.4"/>
				</TrackLine>
				<TrackLine>
					<End x="177.0354" y="-99.5868"/>
				</TrackLine>
				<TrackLine>
					<End x="177.163" y="-99.842"/>
				</TrackLine>
				<TrackLine>
					<End x="177.1683" y="-100.1057"/>
				</TrackLine>
			</ZippedWire>
		</ZippedWires>
		<Wires>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire fixed="on" width="0.45">
					<Start x="190.1" y="-102.2"/>
					<TrackLine>
						<End x="189.355" y="-102.201"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire fixed="on" width="0.45">
					<Start x="189.355" y="-102.201"/>
					<TrackLine>
						<End x="189.2" y="-101.575"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire fixed="on" width="0.45">
					<Start x="190.1" y="-102.2"/>
					<TrackLine>
						<End x="189.355" y="-102.201"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire fixed="on" width="0.45">
					<Start x="189.355" y="-102.201"/>
					<TrackLine>
						<End x="189.2" y="-101.575"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire fixed="on" width="0.45">
					<Start x="189.355" y="-102.201"/>
					<TrackLine>
						<End x="189.2" y="-101.575"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire fixed="on" width="0.45">
					<Start x="190.1" y="-102.2"/>
					<TrackLine>
						<End x="189.355" y="-102.201"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="186.026" y="-105.051"/>
					<TrackLine>
						<End x="185.6797" y="-105.188"/>
					</TrackLine>
					<TrackLine>
						<End x="185.5759" y="-105.2"/>
					</TrackLine>
					<TrackLine>
						<End x="185.1" y="-105.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="185.3" y="-101.9"/>
					<TrackLine>
						<End x="185.6081" y="-102.3668"/>
					</TrackLine>
					<TrackLine>
						<End x="185.459" y="-102.488"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="173.8569" y="-102.4636"/>
					<TrackLine>
						<End x="173.5081" y="-102.9186"/>
					</TrackLine>
					<TrackLine>
						<End x="173.5081" y="-103.0331"/>
					</TrackLine>
					<TrackLine>
						<End x="173.2" y="-103.5"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="190" y="-107.8"/>
					<TrackLine>
						<End x="189.5241" y="-107.8"/>
					</TrackLine>
					<TrackLine>
						<End x="189.4203" y="-107.812"/>
					</TrackLine>
					<TrackLine>
						<End x="189.074" y="-107.96"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="188.5" y="-105"/>
					<TrackLine>
						<End x="188.5" y="-104.4991"/>
					</TrackLine>
					<TrackLine>
						<End x="188.5" y="-103.45"/>
					</TrackLine>
					<TrackLine>
						<End x="188.5" y="-103.2"/>
					</TrackLine>
					<TrackLine>
						<End x="188.4" y="-102.825"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="169.94" y="-98.9"/>
					<TrackLine>
						<End x="170.14" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="170.39" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="170.4936" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="170.64" y="-98.5536"/>
					</TrackLine>
					<TrackLine>
						<End x="170.9349" y="-98.2532"/>
					</TrackLine>
					<TrackLine>
						<End x="171.2132" y="-97.9749"/>
					</TrackLine>
					<TrackLine>
						<End x="172.8611" y="-96.9993"/>
					</TrackLine>
					<TrackLine>
						<End x="172.868" y="-96.9924"/>
					</TrackLine>
					<TrackLine>
						<End x="173.3" y="-96.6"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="113.6673" y="-99.1542"/>
					<TrackLine>
						<End x="114.5233" y="-99.4919"/>
					</TrackLine>
					<TrackLine>
						<End x="114.5331" y="-99.4919"/>
					</TrackLine>
					<TrackLine>
						<End x="115" y="-99.8"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Start x="181.45" y="-105.15"/>
					<TrackLine>
						<End x="181.45" y="-104.685"/>
					</TrackLine>
					<TrackLine>
						<End x="181.4134" y="-104.4931"/>
					</TrackLine>
					<TrackLine>
						<End x="181.1419" y="-104.2216"/>
					</TrackLine>
					<TrackLine>
						<End x="180.606" y="-104.088"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="198.676" y="-97.1"/>
					<TrackLine>
						<End x="199.188" y="-97.4663"/>
					</TrackLine>
					<TrackLine>
						<End x="199.438" y="-97.4663"/>
					</TrackLine>
					<TrackLine>
						<End x="199.8881" y="-97.4663"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Start x="174.95" y="-103.15"/>
					<TrackLine>
						<End x="175.415" y="-103.15"/>
					</TrackLine>
					<TrackLine>
						<End x="176.0021" y="-103.1259"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="185.3" y="-100.4"/>
					<TrackLine>
						<End x="184.7991" y="-100.4"/>
					</TrackLine>
					<TrackLine>
						<End x="184.7007" y="-100.4"/>
					</TrackLine>
					<TrackLine>
						<End x="184.399" y="-100.273"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="174.1005" y="-103.164"/>
					<TrackLine>
						<End x="173.6918" y="-103.2169"/>
					</TrackLine>
					<TrackLine>
						<End x="173.2" y="-103.5"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="168.5" y="-98.2"/>
					<TrackLine>
						<End x="168.9569" y="-98.5674"/>
					</TrackLine>
					<TrackLine>
						<End x="168.9639" y="-98.5743"/>
					</TrackLine>
					<TrackLine>
						<End x="169.3864" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="169.49" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="169.74" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="169.94" y="-98.9"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="179.9907" y="-104.2242"/>
							<Dot x="179.8588" y="-104.2711"/>
							<Dot x="179.9611" y="-104.5589"/>
							<Dot x="180.1124" y="-104.2935"/>
						</Teardrop>
					</Teardrops>
					<Start x="179.95" y="-105.15"/>
					<TrackLine>
						<End x="179.95" y="-104.685"/>
					</TrackLine>
					<TrackLine>
						<End x="179.9907" y="-104.2242"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="198.676" y="-97.1"/>
					<TrackLine>
						<End x="198.164" y="-97.2466"/>
					</TrackLine>
					<TrackLine>
						<End x="197.914" y="-97.2466"/>
					</TrackLine>
					<TrackLine>
						<End x="197.4639" y="-97.2466"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="187.6233" y="-98.414"/>
					<TrackLine>
						<End x="187.5069" y="-98.2266"/>
					</TrackLine>
					<TrackLine>
						<End x="187.2743" y="-97.7639"/>
					</TrackLine>
					<TrackLine>
						<End x="187.2674" y="-97.7569"/>
					</TrackLine>
					<TrackLine>
						<End x="186.9" y="-97.3"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="176.8509" y="-97.6496"/>
							<Dot x="176.9872" y="-97.6178"/>
							<Dot x="176.9179" y="-97.3204"/>
							<Dot x="176.7378" y="-97.567"/>
						</Teardrop>
					</Teardrops>
					<Start x="176.95" y="-96.65"/>
					<TrackLine>
						<End x="176.95" y="-97.115"/>
					</TrackLine>
					<TrackLine>
						<End x="176.9201" y="-97.3097"/>
					</TrackLine>
					<TrackLine>
						<End x="176.8509" y="-97.6496"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="110.715" y="-97.9864"/>
					<TrackLine>
						<End x="110.715" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="110.715" y="-98.95"/>
					</TrackLine>
					<TrackLine>
						<End x="110.7" y="-99"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="182.4464" y="-100.2823"/>
							<Dot x="182.5386" y="-100.3877"/>
							<Dot x="182.7684" y="-100.1864"/>
							<Dot x="182.466" y="-100.1437"/>
						</Teardrop>
					</Teardrops>
					<Start x="183.45" y="-100.15"/>
					<TrackLine>
						<End x="182.985" y="-100.15"/>
					</TrackLine>
					<TrackLine>
						<End x="182.7903" y="-100.1799"/>
					</TrackLine>
					<TrackLine>
						<End x="182.4464" y="-100.2823"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="189.2" y="-101.575"/>
					<TrackLine>
						<End x="189.2851" y="-101.2"/>
					</TrackLine>
					<TrackLine>
						<End x="189.2851" y="-100.95"/>
					</TrackLine>
					<TrackLine>
						<End x="189.3169" y="-100.3918"/>
					</TrackLine>
					<TrackLine>
						<End x="189.6" y="-99.9"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="116.6009" y="-106.6"/>
					<TrackLine>
						<End x="116.8035" y="-106.7482"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="115.1" y="-106.6"/>
					<TrackLine>
						<End x="115.6009" y="-106.6"/>
					</TrackLine>
					<TrackLine>
						<End x="116.1" y="-106.6"/>
					</TrackLine>
					<TrackLine>
						<End x="116.6009" y="-106.6"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="171.7" y="-102"/>
					<TrackLine>
						<End x="171.7" y="-102.4759"/>
					</TrackLine>
					<TrackLine>
						<End x="171.7" y="-103.0241"/>
					</TrackLine>
					<TrackLine>
						<End x="171.7" y="-103.5"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="112.1" y="-106.6"/>
					<TrackLine>
						<End x="112.6009" y="-106.6"/>
					</TrackLine>
					<TrackLine>
						<End x="113.0991" y="-106.6"/>
					</TrackLine>
					<TrackLine>
						<End x="113.6" y="-106.6"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="184.399" y="-100.273"/>
							<Dot x="184.3757" y="-100.1349"/>
							<Dot x="184.1097" y="-100.1799"/>
							<Dot x="184.2995" y="-100.3715"/>
						</Teardrop>
					</Teardrops>
					<Start x="184.399" y="-100.273"/>
					<TrackLine>
						<End x="184.1097" y="-100.1799"/>
					</TrackLine>
					<TrackLine>
						<End x="183.915" y="-100.15"/>
					</TrackLine>
					<TrackLine>
						<End x="183.45" y="-100.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="110.7" y="-105.4"/>
					<TrackLine>
						<End x="110.656" y="-105.45"/>
					</TrackLine>
					<TrackLine>
						<End x="110.656" y="-105.7"/>
					</TrackLine>
					<TrackLine>
						<End x="110.656" y="-106.1622"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="202.189" y="-107.916"/>
					<TrackLine>
						<End x="202.0927" y="-107.7088"/>
					</TrackLine>
					<TrackLine>
						<End x="202.0927" y="-107.4588"/>
					</TrackLine>
					<TrackLine>
						<End x="202.0927" y="-106.749"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="178.3566" y="-107.9347"/>
					<TrackLine>
						<End x="177.4011" y="-108.6804"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="185.3" y="-101.9"/>
					<TrackLine>
						<End x="185.3" y="-101.4241"/>
					</TrackLine>
					<TrackLine>
						<End x="185.3" y="-100.8759"/>
					</TrackLine>
					<TrackLine>
						<End x="185.3" y="-100.4"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="191.7" y="-99.7"/>
					<TrackLine>
						<End x="191.7" y="-99.1991"/>
					</TrackLine>
					<TrackLine>
						<End x="191.7" y="-98.7009"/>
					</TrackLine>
					<TrackLine>
						<End x="191.7" y="-98.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="191.7" y="-98.2"/>
					<TrackLine>
						<End x="191.268" y="-98.5924"/>
					</TrackLine>
					<TrackLine>
						<End x="191.2483" y="-98.6122"/>
					</TrackLine>
					<TrackLine>
						<End x="190.8188" y="-99.0721"/>
					</TrackLine>
					<TrackLine>
						<End x="190.791" y="-99.1934"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="174.1005" y="-103.164"/>
							<Dot x="174.1634" y="-103.2891"/>
							<Dot x="174.4363" y="-103.1518"/>
							<Dot x="174.1542" y="-103.0347"/>
						</Teardrop>
					</Teardrops>
					<Start x="174.95" y="-103.15"/>
					<TrackLine>
						<End x="174.485" y="-103.15"/>
					</TrackLine>
					<TrackLine>
						<End x="174.1005" y="-103.164"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="185.1" y="-105.2"/>
					<TrackLine>
						<End x="184.8169" y="-105.6918"/>
					</TrackLine>
					<TrackLine>
						<End x="184.8169" y="-105.7017"/>
					</TrackLine>
					<TrackLine>
						<End x="184.5292" y="-106.7003"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="110.656" y="-106.1622"/>
					<TrackLine>
						<End x="111.14" y="-106.7407"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="189.6" y="-99.9"/>
					<TrackLine>
						<End x="190.0759" y="-99.9"/>
					</TrackLine>
					<TrackLine>
						<End x="190.1797" y="-99.912"/>
					</TrackLine>
					<TrackLine>
						<End x="190.4699" y="-99.9685"/>
					</TrackLine>
					<TrackLine>
						<End x="191.2052" y="-100.0081"/>
					</TrackLine>
					<TrackLine>
						<End x="191.2331" y="-100.0081"/>
					</TrackLine>
					<TrackLine>
						<End x="191.7" y="-99.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="181.6041" y="-102.2146"/>
					<TrackLine>
						<End x="181.3578" y="-102.4669"/>
					</TrackLine>
					<TrackLine>
						<End x="180.606" y="-104.088"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="179.9907" y="-104.2242"/>
					<TrackLine>
						<End x="179.2689" y="-103.4483"/>
					</TrackLine>
					<TrackLine>
						<End x="178.8419" y="-101.8797"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="112.1" y="-106.6"/>
					<TrackLine>
						<End x="111.6085" y="-106.8603"/>
					</TrackLine>
					<TrackLine>
						<End x="111.5897" y="-106.8603"/>
					</TrackLine>
					<TrackLine>
						<End x="111.4953" y="-106.8505"/>
					</TrackLine>
					<TrackLine>
						<End x="111.14" y="-106.7407"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="173.1199" y="-97.551"/>
					<TrackLine>
						<End x="173.0169" y="-97.1198"/>
					</TrackLine>
					<TrackLine>
						<End x="173.0169" y="-97.0918"/>
					</TrackLine>
					<TrackLine>
						<End x="173.3" y="-96.6"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="113.6" y="-106.6"/>
					<TrackLine>
						<End x="114.1009" y="-106.6"/>
					</TrackLine>
					<TrackLine>
						<End x="114.5991" y="-106.6"/>
					</TrackLine>
					<TrackLine>
						<End x="115.1" y="-106.6"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="182.4464" y="-100.2823"/>
					<TrackLine>
						<End x="182.2243" y="-100.6283"/>
					</TrackLine>
					<TrackLine>
						<End x="182.0792" y="-100.7748"/>
					</TrackLine>
					<TrackLine>
						<End x="181.6041" y="-102.2146"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="171.7" y="-103.5"/>
					<TrackLine>
						<End x="172.2009" y="-103.5"/>
					</TrackLine>
					<TrackLine>
						<End x="172.6991" y="-103.5"/>
					</TrackLine>
					<TrackLine>
						<End x="173.2" y="-103.5"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="180.606" y="-104.088"/>
					<TrackLine>
						<End x="180.2027" y="-104.088"/>
					</TrackLine>
					<TrackLine>
						<End x="179.9907" y="-104.2242"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="178.8419" y="-101.8797"/>
					<TrackLine>
						<End x="178.7652" y="-100.0386"/>
					</TrackLine>
					<TrackLine>
						<End x="178.6345" y="-99.1247"/>
					</TrackLine>
					<TrackLine>
						<End x="178.1873" y="-98.6775"/>
					</TrackLine>
					<TrackLine>
						<End x="178.05" y="-98.5545"/>
					</TrackLine>
					<TrackLine>
						<End x="177.6043" y="-98.1109"/>
					</TrackLine>
					<TrackLine>
						<End x="176.8509" y="-97.6496"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="185.3" y="-100.4"/>
					<TrackLine>
						<End x="185.6924" y="-99.968"/>
					</TrackLine>
					<TrackLine>
						<End x="186.1953" y="-99.4286"/>
					</TrackLine>
					<TrackLine>
						<End x="186.6493" y="-98.9746"/>
					</TrackLine>
					<TrackLine>
						<End x="187.5987" y="-98.4376"/>
					</TrackLine>
					<TrackLine>
						<End x="187.6233" y="-98.414"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="176.0881" y="-97.702"/>
					<TrackLine>
						<End x="176.1973" y="-97.7251"/>
					</TrackLine>
					<TrackLine>
						<End x="176.7027" y="-97.7251"/>
					</TrackLine>
					<TrackLine>
						<End x="176.8509" y="-97.6496"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DD1-VDDA)"/>
				<Subwire width="0.15">
					<Start x="185.3" y="-98.8"/>
					<TrackLine>
						<End x="185.3" y="-98.3991"/>
					</TrackLine>
					<TrackLine>
						<End x="185.3" y="-98.3241"/>
					</TrackLine>
					<TrackLine>
						<End x="185.3" y="-97.8009"/>
					</TrackLine>
					<TrackLine>
						<End x="185.3" y="-97.7259"/>
					</TrackLine>
					<TrackLine>
						<End x="185.3" y="-97.3"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DD1-VDDA)"/>
				<Subwire width="0.15">
					<Start x="185.3" y="-97.3"/>
					<TrackLine>
						<End x="184.868" y="-96.9076"/>
					</TrackLine>
					<TrackLine>
						<End x="184.8611" y="-96.9007"/>
					</TrackLine>
					<TrackLine>
						<End x="184.2772" y="-96.6863"/>
					</TrackLine>
					<TrackLine>
						<End x="184.2728" y="-96.682"/>
					</TrackLine>
					<TrackLine>
						<End x="184" y="-96.4"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DD1-VDDA)"/>
				<Subwire width="0.15">
					<Start x="183.45" y="-99.65"/>
					<TrackLine>
						<End x="183.915" y="-99.65"/>
					</TrackLine>
					<TrackLine>
						<End x="184.0952" y="-99.5851"/>
					</TrackLine>
					<TrackLine>
						<End x="184.8361" y="-99.1743"/>
					</TrackLine>
					<TrackLine>
						<End x="184.843" y="-99.1674"/>
					</TrackLine>
					<TrackLine>
						<End x="185.3" y="-98.8"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire fixed="on" width="0.5">
					<Start x="183.5" y="-105.2"/>
					<TrackLine>
						<End x="183.2217" y="-104.9018"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire fixed="on" width="0.5">
					<Start x="183.5" y="-105.2"/>
					<TrackLine>
						<End x="182.8" y="-104.45"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire fixed="on" width="0.5">
					<Start x="183.5" y="-105.2"/>
					<TrackLine>
						<End x="182.8" y="-104.45"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="172.6624" y="-100.8406"/>
					<TrackLine>
						<End x="172.4384" y="-100.5391"/>
					</TrackLine>
					<TrackLine>
						<End x="172.2993" y="-100.4"/>
					</TrackLine>
					<TrackLine>
						<End x="172.2009" y="-100.4"/>
					</TrackLine>
					<TrackLine>
						<End x="171.7" y="-100.4"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="194.5751" y="-100.9909"/>
					<TrackLine>
						<End x="194.9" y="-104.2964"/>
					</TrackLine>
					<TrackLine>
						<End x="194.9" y="-104.4"/>
					</TrackLine>
					<TrackLine>
						<End x="194.9" y="-104.65"/>
					</TrackLine>
					<TrackLine>
						<End x="195.15" y="-105.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="183.0374" y="-104.7044"/>
							<Dot x="183.1454" y="-104.7023"/>
							<Dot x="183.1432" y="-104.5922"/>
							<Dot x="183.0332" y="-104.5965"/>
						</Teardrop>
					</Teardrops>
					<Start x="183.45" y="-103.65"/>
					<TrackLine>
						<End x="183.1432" y="-103.675"/>
					</TrackLine>
					<TrackLine>
						<End x="183.1432" y="-103.785"/>
					</TrackLine>
					<TrackLine>
						<End x="183.1432" y="-104.5922"/>
					</TrackLine>
					<TrackLine>
						<End x="183.0374" y="-104.7044"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire fixed="on" width="0.5">
					<Start x="183.0374" y="-104.7044"/>
					<TrackLine>
						<End x="182.8" y="-104.45"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="171.86" y="-98.9"/>
					<TrackLine>
						<End x="172.06" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="172.31" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="172.4136" y="-98.7"/>
					</TrackLine>
					<TrackLine>
						<End x="173.441" y="-98.3261"/>
					</TrackLine>
					<TrackLine>
						<End x="173.895" y="-97.8721"/>
					</TrackLine>
					<TrackLine>
						<End x="174.5326" y="-97.0569"/>
					</TrackLine>
					<TrackLine>
						<End x="174.9" y="-96.6"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="182.3471" y="-105.1042"/>
							<Dot x="182.2888" y="-104.9769"/>
							<Dot x="182.0111" y="-105.1042"/>
							<Dot x="182.2888" y="-105.2315"/>
						</Teardrop>
					</Teardrops>
					<Start x="181.95" y="-105.15"/>
					<TrackLine>
						<End x="181.95" y="-105.1042"/>
					</TrackLine>
					<TrackLine>
						<End x="182.3471" y="-105.1042"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="174.1325" y="-104.0551"/>
					<TrackLine>
						<End x="173.5924" y="-104.668"/>
					</TrackLine>
					<TrackLine>
						<End x="173.2" y="-105.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="195.15" y="-99.3"/>
					<TrackLine>
						<End x="194.9" y="-99.75"/>
					</TrackLine>
					<TrackLine>
						<End x="194.9" y="-100"/>
					</TrackLine>
					<TrackLine>
						<End x="194.9" y="-100.1036"/>
					</TrackLine>
					<TrackLine>
						<End x="194.5751" y="-100.9909"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.22">
					<Start x="174.9" y="-96.6"/>
					<TrackLine>
						<End x="175.3759" y="-96.6"/>
					</TrackLine>
					<TrackLine>
						<End x="176.45" y="-96.6"/>
					</TrackLine>
					<TrackLine>
						<End x="176.45" y="-96.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="173.2" y="-105.1"/>
					<TrackLine>
						<End x="172.6991" y="-105.1"/>
					</TrackLine>
					<TrackLine>
						<End x="172.2009" y="-105.1"/>
					</TrackLine>
					<TrackLine>
						<End x="171.7" y="-105.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="171.7" y="-100.4"/>
					<TrackLine>
						<End x="171.7" y="-99.9241"/>
					</TrackLine>
					<TrackLine>
						<End x="171.7" y="-99.35"/>
					</TrackLine>
					<TrackLine>
						<End x="171.7" y="-99.1"/>
					</TrackLine>
					<TrackLine>
						<End x="171.86" y="-98.9"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="183" y="-96.4"/>
					<TrackLine>
						<End x="183.232" y="-96.7228"/>
					</TrackLine>
					<TrackLine>
						<End x="183.2363" y="-96.7272"/>
					</TrackLine>
					<TrackLine>
						<End x="183.2684" y="-96.9033"/>
					</TrackLine>
					<TrackLine>
						<End x="183.5811" y="-97.4447"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="183.5" y="-105.2"/>
					<TrackLine>
						<End x="183.5" y="-105.7009"/>
					</TrackLine>
					<TrackLine>
						<End x="183.5" y="-107.1847"/>
					</TrackLine>
					<TrackLine>
						<End x="183.5" y="-107.4347"/>
					</TrackLine>
					<TrackLine>
						<End x="183.4366" y="-107.9347"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="182.3471" y="-105.1042"/>
					<TrackLine>
						<End x="183.0638" y="-105.1041"/>
					</TrackLine>
					<TrackLine>
						<End x="183.2176" y="-105.2574"/>
					</TrackLine>
					<TrackLine>
						<End x="183.4242" y="-105.2574"/>
					</TrackLine>
					<TrackLine>
						<End x="183.5" y="-105.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="183.5" y="-105.2"/>
					<TrackLine>
						<End x="183.3209" y="-105.0081"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire fixed="on" width="0.5">
					<Start x="183.2217" y="-104.9018"/>
					<TrackLine>
						<End x="183.0374" y="-104.7044"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="173.2" y="-105.1"/>
					<TrackLine>
						<End x="173.2" y="-105.5759"/>
					</TrackLine>
					<TrackLine>
						<End x="173.188" y="-105.6797"/>
					</TrackLine>
					<TrackLine>
						<End x="173.0887" y="-106.026"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="174.1325" y="-104.0551"/>
							<Dot x="174.2668" y="-104.0947"/>
							<Dot x="174.3531" y="-103.8016"/>
							<Dot x="174.0748" y="-103.9275"/>
						</Teardrop>
					</Teardrops>
					<Start x="174.95" y="-103.65"/>
					<TrackLine>
						<End x="174.485" y="-103.65"/>
					</TrackLine>
					<TrackLine>
						<End x="174.1325" y="-104.0551"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="193.2" y="-105"/>
					<TrackLine>
						<End x="193.2" y="-104.4991"/>
					</TrackLine>
					<TrackLine>
						<End x="193.2" y="-104.4007"/>
					</TrackLine>
					<TrackLine>
						<End x="193.25" y="-103.3036"/>
					</TrackLine>
					<TrackLine>
						<End x="193.25" y="-103.2"/>
					</TrackLine>
					<TrackLine>
						<End x="193.25" y="-102.95"/>
					</TrackLine>
					<TrackLine>
						<End x="193.525" y="-102"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="193.525" y="-102"/>
					<TrackLine>
						<End x="193.3" y="-101.05"/>
					</TrackLine>
					<TrackLine>
						<End x="193.3" y="-100.8"/>
					</TrackLine>
					<TrackLine>
						<End x="193.3" y="-100.2009"/>
					</TrackLine>
					<TrackLine>
						<End x="193.3" y="-99.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="193.3" y="-99.7"/>
					<TrackLine>
						<End x="193.3" y="-99.1991"/>
					</TrackLine>
					<TrackLine>
						<End x="193.3" y="-98.7009"/>
					</TrackLine>
					<TrackLine>
						<End x="193.3" y="-98.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="201.3" y="-100.95"/>
					<TrackLine>
						<End x="201.512" y="-100.4"/>
					</TrackLine>
					<TrackLine>
						<End x="201.512" y="-100.15"/>
					</TrackLine>
					<TrackLine>
						<End x="201.512" y="-97.989"/>
					</TrackLine>
					<TrackLine>
						<End x="201.512" y="-97.739"/>
					</TrackLine>
					<TrackLine>
						<End x="201.724" y="-97.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="189.6756" y="-95.7346"/>
					<TrackLine>
						<End x="188.9313" y="-95.7243"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="188.1754" y="-95.7346"/>
					<TrackLine>
						<End x="188.9313" y="-95.7243"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="189.6756" y="-95.7346"/>
					<TrackLine>
						<End x="192.1524" y="-97.2218"/>
					</TrackLine>
					<TrackLine>
						<End x="192.2255" y="-97.2421"/>
					</TrackLine>
					<TrackLine>
						<End x="192.2642" y="-97.2679"/>
					</TrackLine>
					<TrackLine>
						<End x="192.3029" y="-97.2938"/>
					</TrackLine>
					<TrackLine>
						<End x="192.9128" y="-97.7233"/>
					</TrackLine>
					<TrackLine>
						<End x="192.9326" y="-97.743"/>
					</TrackLine>
					<TrackLine>
						<End x="193.3" y="-98.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="193.3" y="-98.2"/>
					<TrackLine>
						<End x="193.7759" y="-98.2"/>
					</TrackLine>
					<TrackLine>
						<End x="194.4532" y="-98.1249"/>
					</TrackLine>
					<TrackLine>
						<End x="194.8468" y="-98.1249"/>
					</TrackLine>
					<TrackLine>
						<End x="195.8468" y="-98.1249"/>
					</TrackLine>
					<TrackLine>
						<End x="196.1251" y="-98.4032"/>
					</TrackLine>
					<TrackLine>
						<End x="197.7916" y="-100.8462"/>
					</TrackLine>
					<TrackLine>
						<End x="198.2456" y="-101.3002"/>
					</TrackLine>
					<TrackLine>
						<End x="200" y="-101.3002"/>
					</TrackLine>
					<TrackLine>
						<End x="200.25" y="-101.3002"/>
					</TrackLine>
					<TrackLine>
						<End x="201.3" y="-100.95"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/ACC_PWR"/>
				<Subwire width="0.15">
					<Start x="177.3092" y="-98.8234"/>
					<TrackLine>
						<End x="175.415" y="-99.15"/>
					</TrackLine>
					<TrackLine>
						<End x="174.95" y="-99.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/ADC_BAT"/>
				<Subwire width="0.15">
					<Start x="180.044" y="-103.1272"/>
					<TrackLine>
						<End x="180.2244" y="-101.7259"/>
					</TrackLine>
					<TrackLine>
						<End x="181.3065" y="-100.3498"/>
					</TrackLine>
					<TrackLine>
						<End x="181.399" y="-100.2558"/>
					</TrackLine>
					<TrackLine>
						<End x="181.5212" y="-99.8991"/>
					</TrackLine>
					<TrackLine>
						<End x="182.0632" y="-99.3571"/>
					</TrackLine>
					<TrackLine>
						<End x="182.6494" y="-98.8398"/>
					</TrackLine>
					<TrackLine>
						<End x="182.8048" y="-98.7149"/>
					</TrackLine>
					<TrackLine>
						<End x="182.985" y="-98.65"/>
					</TrackLine>
					<TrackLine>
						<End x="183.45" y="-98.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(C13-Pad1)"/>
				<Subwire width="0.15">
					<Start x="116.6" y="-99.8"/>
					<TrackLine>
						<End x="116.6" y="-99.3741"/>
					</TrackLine>
					<TrackLine>
						<End x="116.6" y="-99.2991"/>
					</TrackLine>
					<TrackLine>
						<End x="116.6" y="-98.8009"/>
					</TrackLine>
					<TrackLine>
						<End x="116.6" y="-98.7259"/>
					</TrackLine>
					<TrackLine>
						<End x="116.6" y="-98.3"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrUnst"/>
				<Subwire fixed="on" width="0.5">
					<Start x="112.011" y="-98.184"/>
					<TrackLine>
						<End x="110.9995" y="-96.8"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrUnst"/>
				<Subwire width="0.5">
					<Start x="168.5" y="-96.6"/>
					<TrackLine>
						<End x="169.0009" y="-96.6"/>
					</TrackLine>
					<TrackLine>
						<End x="169.0993" y="-96.6"/>
					</TrackLine>
					<TrackLine>
						<End x="170.3464" y="-96.5"/>
					</TrackLine>
					<TrackLine>
						<End x="170.45" y="-96.5"/>
					</TrackLine>
					<TrackLine>
						<End x="170.7" y="-96.5"/>
					</TrackLine>
					<TrackLine>
						<End x="170.9" y="-96.3"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrUnst"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="186.8499" y="-101.5048"/>
							<Dot x="186.9509" y="-101.6018"/>
							<Dot x="187.1625" y="-101.3815"/>
							<Dot x="186.8575" y="-101.365"/>
						</Teardrop>
					</Teardrops>
					<Start x="187.5" y="-101.25"/>
					<TrackLine>
						<End x="187.36" y="-101.365"/>
					</TrackLine>
					<TrackLine>
						<End x="187.25" y="-101.365"/>
					</TrackLine>
					<TrackLine>
						<End x="187.2044" y="-101.365"/>
					</TrackLine>
					<TrackLine>
						<End x="186.8499" y="-101.5048"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrUnst"/>
				<Subwire width="0.5">
					<Start x="188" y="-99.9"/>
					<TrackLine>
						<End x="187.568" y="-100.2924"/>
					</TrackLine>
					<TrackLine>
						<End x="187.5611" y="-100.2993"/>
					</TrackLine>
					<TrackLine>
						<End x="187.2915" y="-100.5248"/>
					</TrackLine>
					<TrackLine>
						<End x="187.0532" y="-100.5499"/>
					</TrackLine>
					<TrackLine>
						<End x="186.7749" y="-100.8282"/>
					</TrackLine>
					<TrackLine>
						<End x="186.7749" y="-100.9382"/>
					</TrackLine>
					<TrackLine>
						<End x="186.7749" y="-101.3318"/>
					</TrackLine>
					<TrackLine>
						<End x="186.8499" y="-101.5048"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrUnst"/>
				<Subwire width="0.22">
					<Teardrops>
						<Teardrop>
							<Dot x="186.8499" y="-101.5048"/>
							<Dot x="186.7676" y="-101.6181"/>
							<Dot x="187.0146" y="-101.7977"/>
							<Dot x="186.9894" y="-101.4933"/>
						</Teardrop>
					</Teardrops>
					<Start x="187.5" y="-102.2"/>
					<TrackLine>
						<End x="187.36" y="-102.085"/>
					</TrackLine>
					<TrackLine>
						<End x="187.25" y="-102.085"/>
					</TrackLine>
					<TrackLine>
						<End x="187.2044" y="-102.085"/>
					</TrackLine>
					<TrackLine>
						<End x="187.14" y="-102.0206"/>
					</TrackLine>
					<TrackLine>
						<End x="186.8499" y="-101.5048"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrUnst"/>
				<Subwire width="0.5">
					<Start x="170.9" y="-96.3"/>
					<TrackLine>
						<End x="171.1" y="-96.1"/>
					</TrackLine>
					<TrackLine>
						<End x="171.35" y="-96.1"/>
					</TrackLine>
					<TrackLine>
						<End x="171.4536" y="-96.1"/>
					</TrackLine>
					<TrackLine>
						<End x="172.7745" y="-95.6421"/>
					</TrackLine>
					<TrackLine>
						<End x="172.8201" y="-95.633"/>
					</TrackLine>
					<TrackLine>
						<End x="172.8657" y="-95.624"/>
					</TrackLine>
					<TrackLine>
						<End x="176.1973" y="-95.5749"/>
					</TrackLine>
					<TrackLine>
						<End x="182.6532" y="-95.5743"/>
					</TrackLine>
					<TrackLine>
						<End x="183.0468" y="-95.5743"/>
					</TrackLine>
					<TrackLine>
						<End x="184.3468" y="-95.5743"/>
					</TrackLine>
					<TrackLine>
						<End x="184.3756" y="-95.58"/>
					</TrackLine>
					<TrackLine>
						<End x="184.4044" y="-95.5858"/>
					</TrackLine>
					<TrackLine>
						<End x="187.4255" y="-96.3421"/>
					</TrackLine>
					<TrackLine>
						<End x="187.4642" y="-96.3679"/>
					</TrackLine>
					<TrackLine>
						<End x="187.5029" y="-96.3938"/>
					</TrackLine>
					<TrackLine>
						<End x="187.7812" y="-96.6721"/>
					</TrackLine>
					<TrackLine>
						<End x="187.8329" y="-96.7495"/>
					</TrackLine>
					<TrackLine>
						<End x="188.1973" y="-97.8898"/>
					</TrackLine>
					<TrackLine>
						<End x="188.3984" y="-98.0929"/>
					</TrackLine>
					<TrackLine>
						<End x="188.3984" y="-98.7351"/>
					</TrackLine>
					<TrackLine>
						<End x="188.2831" y="-99.3983"/>
					</TrackLine>
					<TrackLine>
						<End x="188.2831" y="-99.4081"/>
					</TrackLine>
					<TrackLine>
						<End x="188" y="-99.9"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+PwrUnst"/>
				<Subwire width="0.5">
					<Start x="110.9995" y="-96.8"/>
					<TrackLine>
						<End x="111.2499" y="-96.5496"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2499" y="-96.2996"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2499" y="-96.196"/>
					</TrackLine>
					<TrackLine>
						<End x="111.3963" y="-96.0496"/>
					</TrackLine>
					<TrackLine>
						<End x="112.9033" y="-95.8245"/>
					</TrackLine>
					<TrackLine>
						<End x="114.5657" y="-95.824"/>
					</TrackLine>
					<TrackLine>
						<End x="114.9593" y="-95.824"/>
					</TrackLine>
					<TrackLine>
						<End x="117.0343" y="-95.824"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7359" y="-96.02"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7614" y="-96.0222"/>
					</TrackLine>
					<TrackLine>
						<End x="166.8934" y="-96.0336"/>
					</TrackLine>
					<TrackLine>
						<End x="166.919" y="-96.0359"/>
					</TrackLine>
					<TrackLine>
						<End x="168.0361" y="-96.2257"/>
					</TrackLine>
					<TrackLine>
						<End x="168.043" y="-96.2326"/>
					</TrackLine>
					<TrackLine>
						<End x="168.5" y="-96.6"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+BATT"/>
				<Subwire width="0.5">
					<Start x="115.8" y="-102.2"/>
					<TrackLine>
						<End x="116.3" y="-102.2"/>
					</TrackLine>
					<TrackLine>
						<End x="116.3156" y="-104.5237"/>
					</TrackLine>
					<TrackLine>
						<End x="116.3156" y="-104.5335"/>
					</TrackLine>
					<TrackLine>
						<End x="116.6009" y="-105"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+BATT"/>
				<Subwire width="0.5">
					<Start x="115.8" y="-102.2"/>
					<TrackLine>
						<End x="115.3" y="-102.2"/>
					</TrackLine>
					<TrackLine>
						<End x="113.4608" y="-100.4232"/>
					</TrackLine>
					<TrackLine>
						<End x="113.3572" y="-100.4232"/>
					</TrackLine>
					<TrackLine>
						<End x="113.1072" y="-100.4232"/>
					</TrackLine>
					<TrackLine>
						<End x="112.9" y="-100.216"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="211.2749" y="-100.4645"/>
					<TrackLine>
						<End x="211.6214" y="-100.6"/>
					</TrackLine>
					<TrackLine>
						<End x="211.725" y="-100.6"/>
					</TrackLine>
					<TrackLine>
						<End x="211.975" y="-100.6"/>
					</TrackLine>
					<TrackLine>
						<End x="212.7" y="-100.95"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="206.3" y="-100.95"/>
					<TrackLine>
						<End x="207.35" y="-100.4"/>
					</TrackLine>
					<TrackLine>
						<End x="207.6" y="-100.4"/>
					</TrackLine>
					<TrackLine>
						<End x="207.7036" y="-100.4"/>
					</TrackLine>
					<TrackLine>
						<End x="209.7747" y="-100.3905"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="212.7" y="-100.95"/>
					<TrackLine>
						<End x="213.425" y="-100.95"/>
					</TrackLine>
					<TrackLine>
						<End x="213.675" y="-100.95"/>
					</TrackLine>
					<TrackLine>
						<End x="214.625" y="-100.95"/>
					</TrackLine>
					<TrackLine>
						<End x="214.875" y="-100.95"/>
					</TrackLine>
					<TrackLine>
						<End x="215.6" y="-100.95"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="209.7747" y="-100.3905"/>
					<TrackLine>
						<End x="210.5248" y="-100.3889"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="210.5248" y="-100.3889"/>
					<TrackLine>
						<End x="211.2749" y="-100.4645"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="215.6" y="-100.95"/>
					<TrackLine>
						<End x="216.325" y="-100.94"/>
					</TrackLine>
					<TrackLine>
						<End x="216.575" y="-100.94"/>
					</TrackLine>
					<TrackLine>
						<End x="217.3604" y="-100.94"/>
					</TrackLine>
					<TrackLine>
						<End x="217.6104" y="-100.94"/>
					</TrackLine>
					<TrackLine>
						<End x="218.1986" y="-100.93"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDIRC"/>
				<Subwire width="0.5">
					<Start x="208.8002" y="-104.0712"/>
					<TrackLine>
						<End x="209.5503" y="-104.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDIRC"/>
				<Subwire width="0.5">
					<Start x="206.3" y="-103.45"/>
					<TrackLine>
						<End x="206.8" y="-103.45"/>
					</TrackLine>
					<TrackLine>
						<End x="208.0501" y="-103.939"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDIRC"/>
				<Subwire width="0.5">
					<Start x="208.0501" y="-103.939"/>
					<TrackLine>
						<End x="208.8002" y="-104.0712"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(D2-PadC)"/>
				<Subwire width="0.18">
					<Start x="215.6" y="-102.99"/>
					<TrackLine>
						<End x="214.715" y="-103.96"/>
					</TrackLine>
					<TrackLine>
						<End x="214.625" y="-103.96"/>
					</TrackLine>
					<TrackLine>
						<End x="214.5877" y="-103.96"/>
					</TrackLine>
					<TrackLine>
						<End x="213.7827" y="-104.3099"/>
					</TrackLine>
					<TrackLine>
						<End x="213.5673" y="-104.3099"/>
					</TrackLine>
					<TrackLine>
						<End x="211.6173" y="-104.3099"/>
					</TrackLine>
					<TrackLine>
						<End x="210.1078" y="-103.7891"/>
					</TrackLine>
					<TrackLine>
						<End x="210.0273" y="-103.7452"/>
					</TrackLine>
					<TrackLine>
						<End x="209.9536" y="-103.6844"/>
					</TrackLine>
					<TrackLine>
						<End x="209.7898" y="-103.5217"/>
					</TrackLine>
					<TrackLine>
						<End x="209.4639" y="-103.3743"/>
					</TrackLine>
					<TrackLine>
						<End x="209.4569" y="-103.3674"/>
					</TrackLine>
					<TrackLine>
						<End x="209" y="-103"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(D4-PadC)"/>
				<Subwire width="0.5">
					<Start x="212.7" y="-102.99"/>
					<TrackLine>
						<End x="211.975" y="-103"/>
					</TrackLine>
					<TrackLine>
						<End x="211.725" y="-103"/>
					</TrackLine>
					<TrackLine>
						<End x="211.0009" y="-103"/>
					</TrackLine>
					<TrackLine>
						<End x="210.5" y="-103"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire fixed="on" width="0.5">
					<Start x="110.7" y="-104.6"/>
					<TrackLine>
						<End x="111.767" y="-104.6055"/>
					</TrackLine>
					<TrackLine>
						<End x="112.1" y="-105"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="113.789" y="-98.184"/>
					<TrackLine>
						<End x="113.6947" y="-97.9768"/>
					</TrackLine>
					<TrackLine>
						<End x="113.6947" y="-97.7268"/>
					</TrackLine>
					<TrackLine>
						<End x="113.6947" y="-97.3004"/>
					</TrackLine>
					<TrackLine>
						<End x="113.6947" y="-97.0504"/>
					</TrackLine>
					<TrackLine>
						<End x="113.6005" y="-96.8"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="113.6005" y="-96.8"/>
					<TrackLine>
						<End x="113.3501" y="-96.8508"/>
					</TrackLine>
					<TrackLine>
						<End x="113.1001" y="-96.8508"/>
					</TrackLine>
					<TrackLine>
						<End x="112.7308" y="-96.8508"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="115" y="-98.3"/>
					<TrackLine>
						<End x="115" y="-97.7991"/>
					</TrackLine>
					<TrackLine>
						<End x="115" y="-97.3009"/>
					</TrackLine>
					<TrackLine>
						<End x="115" y="-96.8"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="110.7" y="-99.8"/>
					<TrackLine>
						<End x="110.95" y="-99.75"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2" y="-99.75"/>
					</TrackLine>
					<TrackLine>
						<End x="111.3864" y="-99.75"/>
					</TrackLine>
					<TrackLine>
						<End x="112.246" y="-99.2837"/>
					</TrackLine>
					<TrackLine>
						<End x="112.6565" y="-99.0959"/>
					</TrackLine>
					<TrackLine>
						<End x="112.9229" y="-98.8295"/>
					</TrackLine>
					<TrackLine>
						<End x="112.941" y="-98.8114"/>
					</TrackLine>
					<TrackLine>
						<End x="113.0818" y="-98.5376"/>
					</TrackLine>
					<TrackLine>
						<End x="113.2282" y="-98.3912"/>
					</TrackLine>
					<TrackLine>
						<End x="113.3318" y="-98.3912"/>
					</TrackLine>
					<TrackLine>
						<End x="113.5818" y="-98.3912"/>
					</TrackLine>
					<TrackLine>
						<End x="113.789" y="-98.184"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="113.789" y="-98.184"/>
					<TrackLine>
						<End x="113.9962" y="-98.3"/>
					</TrackLine>
					<TrackLine>
						<End x="114.2462" y="-98.3"/>
					</TrackLine>
					<TrackLine>
						<End x="114.5241" y="-98.3"/>
					</TrackLine>
					<TrackLine>
						<End x="115" y="-98.3"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="112.0947" y="-96.8384"/>
					<TrackLine>
						<End x="112.7308" y="-96.8508"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="112.1" y="-105"/>
					<TrackLine>
						<End x="112.1" y="-104.5241"/>
					</TrackLine>
					<TrackLine>
						<End x="112.1007" y="-104.2948"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DA1-Vfb)"/>
				<Subwire width="0.15">
					<Start x="190.1" y="-105"/>
					<TrackLine>
						<End x="190.5009" y="-105"/>
					</TrackLine>
					<TrackLine>
						<End x="190.5759" y="-105"/>
					</TrackLine>
					<TrackLine>
						<End x="191.1241" y="-105"/>
					</TrackLine>
					<TrackLine>
						<End x="191.1991" y="-105"/>
					</TrackLine>
					<TrackLine>
						<End x="191.6" y="-105"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DA1-Vfb)"/>
				<Subwire width="0.15">
					<Start x="190.1" y="-103.15"/>
					<TrackLine>
						<End x="190.1" y="-103.3"/>
					</TrackLine>
					<TrackLine>
						<End x="190.1" y="-103.375"/>
					</TrackLine>
					<TrackLine>
						<End x="190.1" y="-104.4991"/>
					</TrackLine>
					<TrackLine>
						<End x="190.1" y="-104.5741"/>
					</TrackLine>
					<TrackLine>
						<End x="190.1" y="-105"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DA1-SW)"/>
				<Subwire fixed="on" width="0.45">
					<Start x="191.67" y="-101.25"/>
					<TrackLine>
						<End x="191.675" y="-102"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DA1-SW)"/>
				<Subwire fixed="on" width="0.45">
					<Start x="191.67" y="-101.25"/>
					<TrackLine>
						<End x="191.675" y="-102"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DA1-SW)"/>
				<Subwire fixed="on" width="0.45">
					<Start x="190.1" y="-101.25"/>
					<TrackLine>
						<End x="191.67" y="-101.25"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DA1-SW)"/>
				<Subwire fixed="on" width="0.45">
					<Start x="191.67" y="-101.25"/>
					<TrackLine>
						<End x="191.675" y="-102"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DA1-SW)"/>
				<Subwire fixed="on" width="0.45">
					<Start x="191.67" y="-101.25"/>
					<TrackLine>
						<End x="190.1" y="-101.25"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DA1-SW)"/>
				<Subwire fixed="on" width="0.45">
					<Start x="190.1" y="-101.25"/>
					<TrackLine>
						<End x="191.67" y="-101.25"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/PWR_EN"/>
				<Subwire width="0.15">
					<Start x="187.5" y="-103.15"/>
					<TrackLine>
						<End x="187.325" y="-103.3"/>
					</TrackLine>
					<TrackLine>
						<End x="187.325" y="-103.375"/>
					</TrackLine>
					<TrackLine>
						<End x="187.325" y="-103.4061"/>
					</TrackLine>
					<TrackLine>
						<End x="187.3118" y="-103.8473"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/PWR_EN"/>
				<Subwire width="0.15">
					<Start x="178.3451" y="-97.842"/>
					<TrackLine>
						<End x="178.45" y="-97.115"/>
					</TrackLine>
					<TrackLine>
						<End x="178.45" y="-96.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/PWR_EN"/>
				<Subwire width="0.15">
					<Start x="185.3" y="-103.5"/>
					<TrackLine>
						<End x="185.7259" y="-103.3375"/>
					</TrackLine>
					<TrackLine>
						<End x="185.8009" y="-103.3375"/>
					</TrackLine>
					<TrackLine>
						<End x="185.832" y="-103.3375"/>
					</TrackLine>
					<TrackLine>
						<End x="187.2189" y="-103.3"/>
					</TrackLine>
					<TrackLine>
						<End x="187.25" y="-103.3"/>
					</TrackLine>
					<TrackLine>
						<End x="187.325" y="-103.3"/>
					</TrackLine>
					<TrackLine>
						<End x="187.5" y="-103.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/IS_CHARGING"/>
				<Subwire width="0.15">
					<Start x="182.4049" y="-102.9006"/>
					<TrackLine>
						<End x="182.8048" y="-102.7149"/>
					</TrackLine>
					<TrackLine>
						<End x="182.985" y="-102.65"/>
					</TrackLine>
					<TrackLine>
						<End x="183.45" y="-102.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/BTN3"/>
				<Subwire width="0.15">
					<Start x="183.45" y="-103.15"/>
					<TrackLine>
						<End x="183.915" y="-103.15"/>
					</TrackLine>
					<TrackLine>
						<End x="184.1743" y="-103.2149"/>
					</TrackLine>
					<TrackLine>
						<End x="184.3501" y="-103.3907"/>
					</TrackLine>
					<TrackLine>
						<End x="184.5171" y="-103.953"/>
					</TrackLine>
					<TrackLine>
						<End x="184.5429" y="-103.9917"/>
					</TrackLine>
					<TrackLine>
						<End x="184.5688" y="-104.0304"/>
					</TrackLine>
					<TrackLine>
						<End x="184.7446" y="-104.2062"/>
					</TrackLine>
					<TrackLine>
						<End x="184.822" y="-104.2579"/>
					</TrackLine>
					<TrackLine>
						<End x="184.9132" y="-104.276"/>
					</TrackLine>
					<TrackLine>
						<End x="186.2746" y="-104.4509"/>
					</TrackLine>
					<TrackLine>
						<End x="187.499" y="-104.893"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/MCU_RST"/>
				<Subwire width="0.15">
					<Start x="188.3805" y="-106.9"/>
					<TrackLine>
						<End x="187.7941" y="-107.768"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/MCU_RST"/>
				<Subwire width="0.15">
					<Start x="183.45" y="-100.65"/>
					<TrackLine>
						<End x="182.985" y="-100.65"/>
					</TrackLine>
					<TrackLine>
						<End x="182.8212" y="-100.7546"/>
					</TrackLine>
					<TrackLine>
						<End x="182.5896" y="-100.9862"/>
					</TrackLine>
					<TrackLine>
						<End x="182.1293" y="-102.4321"/>
					</TrackLine>
					<TrackLine>
						<End x="181.8797" y="-102.6831"/>
					</TrackLine>
					<TrackLine>
						<End x="181.6884" y="-103.8778"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/BTN1"/>
				<Subwire width="0.15">
					<Start x="191.6" y="-107.8"/>
					<TrackLine>
						<End x="192.0319" y="-107.4076"/>
					</TrackLine>
					<TrackLine>
						<End x="192.0517" y="-107.3878"/>
					</TrackLine>
					<TrackLine>
						<End x="192.6294" y="-106.6004"/>
					</TrackLine>
					<TrackLine>
						<End x="192.9809" y="-106.2489"/>
					</TrackLine>
					<TrackLine>
						<End x="194.6704" y="-106.1509"/>
					</TrackLine>
					<TrackLine>
						<End x="195.7743" y="-106.1001"/>
					</TrackLine>
					<TrackLine>
						<End x="196.9511" y="-105.1267"/>
					</TrackLine>
					<TrackLine>
						<End x="198.35" y="-105.1267"/>
					</TrackLine>
					<TrackLine>
						<End x="198.425" y="-105.1267"/>
					</TrackLine>
					<TrackLine>
						<End x="198.85" y="-105.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/BTN1"/>
				<Subwire width="0.15">
					<Start x="198.85" y="-105.1"/>
					<TrackLine>
						<End x="198.5157" y="-104.475"/>
					</TrackLine>
					<TrackLine>
						<End x="198.5157" y="-104.4"/>
					</TrackLine>
					<TrackLine>
						<End x="198.5157" y="-103.8749"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/BTN1"/>
				<Subwire width="0.15">
					<Start x="183.45" y="-99.15"/>
					<TrackLine>
						<End x="182.985" y="-99.15"/>
					</TrackLine>
					<TrackLine>
						<End x="182.8048" y="-99.2149"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2185" y="-99.7322"/>
					</TrackLine>
					<TrackLine>
						<End x="181.8963" y="-100.0544"/>
					</TrackLine>
					<TrackLine>
						<End x="181.8248" y="-100.1694"/>
					</TrackLine>
					<TrackLine>
						<End x="181.7344" y="-100.3948"/>
					</TrackLine>
					<TrackLine>
						<End x="181.5908" y="-100.5398"/>
					</TrackLine>
					<TrackLine>
						<End x="180.8245" y="-101.9745"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/BTN1"/>
				<Subwire width="0.15">
					<Start x="190.864" y="-106.674"/>
					<TrackLine>
						<End x="191.2257" y="-107.3361"/>
					</TrackLine>
					<TrackLine>
						<End x="191.2326" y="-107.343"/>
					</TrackLine>
					<TrackLine>
						<End x="191.6" y="-107.8"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/BTN1"/>
				<Subwire width="0.15">
					<Start x="198.5667" y="-100.5251"/>
					<TrackLine>
						<End x="198.5667" y="-100"/>
					</TrackLine>
					<TrackLine>
						<End x="198.5667" y="-99.925"/>
					</TrackLine>
					<TrackLine>
						<End x="198.85" y="-99.3"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/BTN2"/>
				<Subwire width="0.15">
					<Start x="183.45" y="-98.15"/>
					<TrackLine>
						<End x="182.985" y="-98.15"/>
					</TrackLine>
					<TrackLine>
						<End x="182.696" y="-97.6151"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/IR_LED_DAC"/>
				<Subwire width="0.15">
					<Start x="193.2295" y="-106.849"/>
					<TrackLine>
						<End x="193.2169" y="-107.2802"/>
					</TrackLine>
					<TrackLine>
						<End x="193.2169" y="-107.3081"/>
					</TrackLine>
					<TrackLine>
						<End x="193.5" y="-107.8"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/IR_LED_DAC"/>
				<Subwire width="0.15">
					<Start x="181.45" y="-96.65"/>
					<TrackLine>
						<End x="181.45" y="-97.115"/>
					</TrackLine>
					<TrackLine>
						<End x="181.3951" y="-97.9461"/>
					</TrackLine>
					<TrackLine>
						<End x="180.8386" y="-100.0237"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/GREEN_IN"/>
				<Subwire width="0.15">
					<Start x="180.795" y="-97.6975"/>
					<TrackLine>
						<End x="180.95" y="-97.115"/>
					</TrackLine>
					<TrackLine>
						<End x="180.95" y="-96.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/ACC_MISO"/>
				<Subwire width="0.15">
					<Start x="179.6222" y="-100.3912"/>
					<TrackLine>
						<End x="180.3327" y="-99.1477"/>
					</TrackLine>
					<TrackLine>
						<End x="180.3327" y="-98.6505"/>
					</TrackLine>
					<TrackLine>
						<End x="180.2632" y="-97.9178"/>
					</TrackLine>
					<TrackLine>
						<End x="180.2632" y="-97.4772"/>
					</TrackLine>
					<TrackLine>
						<End x="180.3717" y="-97.2897"/>
					</TrackLine>
					<TrackLine>
						<End x="180.45" y="-97.115"/>
					</TrackLine>
					<TrackLine>
						<End x="180.45" y="-96.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/ACC_MOSI"/>
				<Subwire width="0.15">
					<Start x="179.7326" y="-98.8991"/>
					<TrackLine>
						<End x="179.9564" y="-97.9155"/>
					</TrackLine>
					<TrackLine>
						<End x="179.9564" y="-97.4749"/>
					</TrackLine>
					<TrackLine>
						<End x="179.95" y="-97.115"/>
					</TrackLine>
					<TrackLine>
						<End x="179.95" y="-96.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/WHITE_IN"/>
				<Subwire width="0.15">
					<Start x="179.4246" y="-97.6952"/>
					<TrackLine>
						<End x="179.45" y="-97.115"/>
					</TrackLine>
					<TrackLine>
						<End x="179.45" y="-96.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/VIBRO_CTRL"/>
				<Subwire width="0.15">
					<Start x="179.0211" y="-98.4295"/>
					<TrackLine>
						<End x="178.8848" y="-97.9188"/>
					</TrackLine>
					<TrackLine>
						<End x="178.8848" y="-97.4716"/>
					</TrackLine>
					<TrackLine>
						<End x="178.95" y="-97.115"/>
					</TrackLine>
					<TrackLine>
						<End x="178.95" y="-96.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/ACC_INT1"/>
				<Subwire width="0.15">
					<Start x="177.8711" y="-99.4409"/>
					<TrackLine>
						<End x="176.3031" y="-99.5348"/>
					</TrackLine>
					<TrackLine>
						<End x="175.415" y="-99.65"/>
					</TrackLine>
					<TrackLine>
						<End x="174.95" y="-99.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/BAT_MEAS_EN"/>
				<Subwire width="0.15">
					<Start x="173.4692" y="-101.1961"/>
					<TrackLine>
						<End x="174.0499" y="-100.4698"/>
					</TrackLine>
					<TrackLine>
						<End x="174.3048" y="-100.2149"/>
					</TrackLine>
					<TrackLine>
						<End x="174.485" y="-100.15"/>
					</TrackLine>
					<TrackLine>
						<End x="174.95" y="-100.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/UART_TX"/>
				<Subwire width="0.15">
					<Start x="173.2766" y="-107.9347"/>
					<TrackLine>
						<End x="175.3825" y="-108.9828"/>
					</TrackLine>
					<TrackLine>
						<End x="176.2507" y="-108.9828"/>
					</TrackLine>
					<TrackLine>
						<End x="176.8647" y="-108.3688"/>
					</TrackLine>
					<TrackLine>
						<End x="176.8647" y="-107.5006"/>
					</TrackLine>
					<TrackLine>
						<End x="176.1929" y="-106.699"/>
					</TrackLine>
					<TrackLine>
						<End x="176.0149" y="-105.7952"/>
					</TrackLine>
					<TrackLine>
						<End x="176.0149" y="-105.4348"/>
					</TrackLine>
					<TrackLine>
						<End x="176.0149" y="-104.5048"/>
					</TrackLine>
					<TrackLine>
						<End x="176.5942" y="-103.8536"/>
					</TrackLine>
					<TrackLine>
						<End x="176.9339" y="-103.5119"/>
					</TrackLine>
					<TrackLine>
						<End x="177.6941" y="-101.8199"/>
					</TrackLine>
					<TrackLine>
						<End x="178.1521" y="-100.7375"/>
					</TrackLine>
					<TrackLine>
						<End x="178.1521" y="-100.2925"/>
					</TrackLine>
					<TrackLine>
						<End x="177.8375" y="-99.9779"/>
					</TrackLine>
					<TrackLine>
						<End x="177.6486" y="-99.978"/>
					</TrackLine>
					<TrackLine>
						<End x="176.9556" y="-99.9099"/>
					</TrackLine>
					<TrackLine>
						<End x="176.4584" y="-99.9099"/>
					</TrackLine>
					<TrackLine>
						<End x="175.5952" y="-100.5851"/>
					</TrackLine>
					<TrackLine>
						<End x="175.415" y="-100.65"/>
					</TrackLine>
					<TrackLine>
						<End x="174.95" y="-100.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/UART_RX"/>
				<Subwire width="0.15">
					<Start x="174.95" y="-101.15"/>
					<TrackLine>
						<End x="174.485" y="-101.15"/>
					</TrackLine>
					<TrackLine>
						<End x="174.3048" y="-101.2149"/>
					</TrackLine>
					<TrackLine>
						<End x="173.7178" y="-101.7962"/>
					</TrackLine>
					<TrackLine>
						<End x="173.2206" y="-101.7962"/>
					</TrackLine>
					<TrackLine>
						<End x="172.4138" y="-101.4407"/>
					</TrackLine>
					<TrackLine>
						<End x="172.2554" y="-101.2938"/>
					</TrackLine>
					<TrackLine>
						<End x="172.2167" y="-101.2679"/>
					</TrackLine>
					<TrackLine>
						<End x="172.178" y="-101.2421"/>
					</TrackLine>
					<TrackLine>
						<End x="172.1324" y="-101.233"/>
					</TrackLine>
					<TrackLine>
						<End x="172.0868" y="-101.224"/>
					</TrackLine>
					<TrackLine>
						<End x="171.5618" y="-101.224"/>
					</TrackLine>
					<TrackLine>
						<End x="171.3132" y="-101.224"/>
					</TrackLine>
					<TrackLine>
						<End x="171.2676" y="-101.233"/>
					</TrackLine>
					<TrackLine>
						<End x="171.222" y="-101.2421"/>
					</TrackLine>
					<TrackLine>
						<End x="171.1833" y="-101.2679"/>
					</TrackLine>
					<TrackLine>
						<End x="171.1446" y="-101.2938"/>
					</TrackLine>
					<TrackLine>
						<End x="170.9688" y="-101.4696"/>
					</TrackLine>
					<TrackLine>
						<End x="170.9429" y="-101.5083"/>
					</TrackLine>
					<TrackLine>
						<End x="170.9171" y="-101.547"/>
					</TrackLine>
					<TrackLine>
						<End x="170.908" y="-101.5926"/>
					</TrackLine>
					<TrackLine>
						<End x="170.899" y="-101.6382"/>
					</TrackLine>
					<TrackLine>
						<End x="170.7366" y="-107.9347"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="176.975" y="-100.914"/>
					<TrackLine>
						<End x="176.975" y="-101.267"/>
					</TrackLine>
					<TrackLine>
						<End x="176.929" y="-101.535"/>
					</TrackLine>
					<TrackLine>
						<End x="176.821" y="-101.654"/>
					</TrackLine>
					<TrackLine>
						<End x="176.54" y="-101.735"/>
					</TrackLine>
					<TrackLine>
						<End x="176.246" y="-101.742"/>
					</TrackLine>
					<TrackLine>
						<End x="175.849" y="-101.731"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.849" y="-101.731"/>
					<TrackLine>
						<End x="175.415" y="-101.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.849" y="-101.731"/>
					<TrackLine>
						<End x="175.415" y="-101.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="176.975" y="-100.914"/>
					<TrackLine>
						<End x="176.707" y="-100.51"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.415" y="-101.65"/>
					<TrackLine>
						<End x="174.95" y="-101.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="176.707" y="-100.51"/>
					<TrackLine>
						<End x="176.975" y="-100.914"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.849" y="-101.731"/>
					<TrackLine>
						<End x="175.415" y="-101.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="176.975" y="-100.914"/>
					<TrackLine>
						<End x="176.707" y="-100.51"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="174.95" y="-101.65"/>
					<TrackLine>
						<End x="175.415" y="-101.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.415" y="-101.65"/>
					<TrackLine>
						<End x="174.95" y="-101.65"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="112.193" y="-102.5216"/>
					<TrackLine>
						<End x="112.6567" y="-102.9304"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="110.7" y="-102.45"/>
					<TrackLine>
						<End x="111.5393" y="-102.4151"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire width="0.22">
					<Start x="110.7" y="-101.45"/>
					<TrackLine>
						<End x="111.09" y="-101.41"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2" y="-101.41"/>
					</TrackLine>
					<TrackLine>
						<End x="111.3284" y="-101.41"/>
					</TrackLine>
					<TrackLine>
						<End x="111.6911" y="-101.4016"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.838" y="-102.101"/>
					<TrackLine>
						<End x="175.415" y="-102.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="177.345" y="-100.914"/>
					<TrackLine>
						<End x="177.345" y="-101.267"/>
					</TrackLine>
					<TrackLine>
						<End x="177.345" y="-101.283"/>
					</TrackLine>
					<TrackLine>
						<End x="177.343" y="-101.315"/>
					</TrackLine>
					<TrackLine>
						<End x="177.34" y="-101.33"/>
					</TrackLine>
					<TrackLine>
						<End x="177.293" y="-101.598"/>
					</TrackLine>
					<TrackLine>
						<End x="177.284" y="-101.65"/>
					</TrackLine>
					<TrackLine>
						<End x="177.238" y="-101.745"/>
					</TrackLine>
					<TrackLine>
						<End x="177.203" y="-101.784"/>
					</TrackLine>
					<TrackLine>
						<End x="177.095" y="-101.902"/>
					</TrackLine>
					<TrackLine>
						<End x="177.06" y="-101.941"/>
					</TrackLine>
					<TrackLine>
						<End x="176.973" y="-101.995"/>
					</TrackLine>
					<TrackLine>
						<End x="176.924" y="-102.009"/>
					</TrackLine>
					<TrackLine>
						<End x="176.642" y="-102.091"/>
					</TrackLine>
					<TrackLine>
						<End x="176.619" y="-102.097"/>
					</TrackLine>
					<TrackLine>
						<End x="176.572" y="-102.104"/>
					</TrackLine>
					<TrackLine>
						<End x="176.548" y="-102.105"/>
					</TrackLine>
					<TrackLine>
						<End x="176.255" y="-102.112"/>
					</TrackLine>
					<TrackLine>
						<End x="176.236" y="-102.112"/>
					</TrackLine>
					<TrackLine>
						<End x="175.838" y="-102.101"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.838" y="-102.101"/>
					<TrackLine>
						<End x="175.415" y="-102.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="177.615" y="-100.515"/>
					<TrackLine>
						<End x="177.345" y="-100.914"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.415" y="-102.15"/>
					<TrackLine>
						<End x="174.95" y="-102.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.838" y="-102.101"/>
					<TrackLine>
						<End x="175.415" y="-102.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="177.345" y="-100.914"/>
					<TrackLine>
						<End x="177.615" y="-100.515"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="174.95" y="-102.15"/>
					<TrackLine>
						<End x="175.415" y="-102.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="175.415" y="-102.15"/>
					<TrackLine>
						<End x="174.95" y="-102.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="177.615" y="-100.515"/>
					<TrackLine>
						<End x="177.345" y="-100.914"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="112.3016" y="-102.1678"/>
					<TrackLine>
						<End x="112.773" y="-101.9581"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="110.7" y="-101.95"/>
					<TrackLine>
						<End x="111.1644" y="-101.981"/>
					</TrackLine>
					<TrackLine>
						<End x="111.5397" y="-102.0451"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire width="0.22">
					<Start x="110.7" y="-102.95"/>
					<TrackLine>
						<End x="111.09" y="-102.99"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2" y="-102.99"/>
					</TrackLine>
					<TrackLine>
						<End x="111.3284" y="-102.99"/>
					</TrackLine>
					<TrackLine>
						<End x="111.6995" y="-102.9987"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/SWDIO"/>
				<Subwire width="0.15">
					<Start x="174.95" y="-102.65"/>
					<TrackLine>
						<End x="175.415" y="-102.65"/>
					</TrackLine>
					<TrackLine>
						<End x="175.7625" y="-102.5475"/>
					</TrackLine>
					<TrackLine>
						<End x="176.2417" y="-102.5475"/>
					</TrackLine>
					<TrackLine>
						<End x="176.5805" y="-102.8863"/>
					</TrackLine>
					<TrackLine>
						<End x="176.5805" y="-103.3655"/>
					</TrackLine>
					<TrackLine>
						<End x="176.2408" y="-103.7072"/>
					</TrackLine>
					<TrackLine>
						<End x="175.6398" y="-104.3494"/>
					</TrackLine>
					<TrackLine>
						<End x="175.6398" y="-105.2794"/>
					</TrackLine>
					<TrackLine>
						<End x="175.6398" y="-105.9506"/>
					</TrackLine>
					<TrackLine>
						<End x="175.8166" y="-107.9347"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/SWCLK"/>
				<Subwire width="0.15">
					<Start x="180.8966" y="-107.9347"/>
					<TrackLine>
						<End x="178.7916" y="-106.8846"/>
					</TrackLine>
					<TrackLine>
						<End x="177.9216" y="-106.8846"/>
					</TrackLine>
					<TrackLine>
						<End x="177.4167" y="-106.8952"/>
					</TrackLine>
					<TrackLine>
						<End x="176.9195" y="-106.8952"/>
					</TrackLine>
					<TrackLine>
						<End x="176.568" y="-106.5437"/>
					</TrackLine>
					<TrackLine>
						<End x="176.45" y="-105.615"/>
					</TrackLine>
					<TrackLine>
						<End x="176.45" y="-105.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/ACC_CS"/>
				<Subwire width="0.15">
					<Start x="177.1681" y="-106.2951"/>
					<TrackLine>
						<End x="176.95" y="-105.615"/>
					</TrackLine>
					<TrackLine>
						<End x="176.95" y="-105.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/ACC_SCK"/>
				<Subwire width="0.15">
					<Start x="178.6866" y="-106.2751"/>
					<TrackLine>
						<End x="177.7703" y="-106.0489"/>
					</TrackLine>
					<TrackLine>
						<End x="177.5161" y="-105.7947"/>
					</TrackLine>
					<TrackLine>
						<End x="177.45" y="-105.615"/>
					</TrackLine>
					<TrackLine>
						<End x="177.45" y="-105.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/SYS_LED"/>
				<Subwire width="0.15">
					<Start x="177.1726" y="-104.0932"/>
					<TrackLine>
						<End x="177.6198" y="-104.2751"/>
					</TrackLine>
					<TrackLine>
						<End x="177.8599" y="-104.5152"/>
					</TrackLine>
					<TrackLine>
						<End x="177.95" y="-104.685"/>
					</TrackLine>
					<TrackLine>
						<End x="177.95" y="-105.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DD1-PB5)"/>
				<Subwire width="0.15">
					<Start x="178.0035" y="-103.8445"/>
					<TrackLine>
						<End x="178.3851" y="-104.5048"/>
					</TrackLine>
					<TrackLine>
						<End x="178.45" y="-104.685"/>
					</TrackLine>
					<TrackLine>
						<End x="178.45" y="-105.15"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(DD1-PB5)"/>
				<Subwire width="0.2">
					<Start x="116.6" y="-96.8"/>
					<TrackLine>
						<End x="116.783" y="-96.6042"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="Net-(Q1-B)"/>
				<Subwire width="0.15">
					<Start x="195.1" y="-107.8"/>
					<TrackLine>
						<End x="195.5009" y="-107.858"/>
					</TrackLine>
					<TrackLine>
						<End x="195.5759" y="-107.858"/>
					</TrackLine>
					<TrackLine>
						<End x="196.1864" y="-107.858"/>
					</TrackLine>
					<TrackLine>
						<End x="196.2614" y="-107.858"/>
					</TrackLine>
					<TrackLine>
						<End x="196.6436" y="-107.916"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/IR_INTERM"/>
				<Subwire width="0.15">
					<Start x="199.369" y="-108.358"/>
					<TrackLine>
						<End x="199.9227" y="-108.2982"/>
					</TrackLine>
					<TrackLine>
						<End x="199.9538" y="-108.2982"/>
					</TrackLine>
					<TrackLine>
						<End x="200.0288" y="-108.2982"/>
					</TrackLine>
					<TrackLine>
						<End x="200.411" y="-107.916"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/IR_INTERM"/>
				<Subwire width="0.15">
					<Start x="198.4216" y="-107.916"/>
					<TrackLine>
						<End x="198.8038" y="-108.2982"/>
					</TrackLine>
					<TrackLine>
						<End x="198.8788" y="-108.2982"/>
					</TrackLine>
					<TrackLine>
						<End x="198.9099" y="-108.2982"/>
					</TrackLine>
					<TrackLine>
						<End x="199.369" y="-108.358"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/IR_TX_OUT"/>
				<Subwire width="0.5">
					<Start x="201.3" y="-105.884"/>
					<TrackLine>
						<End x="201.3" y="-105.6768"/>
					</TrackLine>
					<TrackLine>
						<End x="201.3" y="-105.4268"/>
					</TrackLine>
					<TrackLine>
						<End x="201.3" y="-103.45"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/IR_TX_OUT"/>
				<Subwire width="0.5">
					<Start x="197.5326" y="-105.884"/>
					<TrackLine>
						<End x="197.7398" y="-106.0912"/>
					</TrackLine>
					<TrackLine>
						<End x="197.7398" y="-106.3412"/>
					</TrackLine>
					<TrackLine>
						<End x="197.7398" y="-106.4448"/>
					</TrackLine>
					<TrackLine>
						<End x="197.8862" y="-106.5912"/>
					</TrackLine>
					<TrackLine>
						<End x="198.0934" y="-106.5912"/>
					</TrackLine>
					<TrackLine>
						<End x="200.7392" y="-106.0912"/>
					</TrackLine>
					<TrackLine>
						<End x="200.8428" y="-106.0912"/>
					</TrackLine>
					<TrackLine>
						<End x="201.0928" y="-106.0912"/>
					</TrackLine>
					<TrackLine>
						<End x="201.3" y="-105.884"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDGC"/>
				<Subwire width="0.5">
					<Start x="209" y="-101.4"/>
					<TrackLine>
						<End x="208.802" y="-101.23"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/LEDWC"/>
				<Subwire width="0.5">
					<Start x="210.277" y="-101.214"/>
					<TrackLine>
						<End x="210.5" y="-101.4"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_CC1_IN"/>
				<Subwire width="0.15">
					<Start x="110.7" y="-100.95"/>
					<TrackLine>
						<End x="111.125" y="-100.875"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2" y="-100.875"/>
					</TrackLine>
					<TrackLine>
						<End x="111.3139" y="-100.875"/>
					</TrackLine>
					<TrackLine>
						<End x="111.4425" y="-100.8015"/>
					</TrackLine>
					<TrackLine>
						<End x="111.9397" y="-100.8015"/>
					</TrackLine>
					<TrackLine>
						<End x="113.0216" y="-101.358"/>
					</TrackLine>
					<TrackLine>
						<End x="113.3731" y="-101.7095"/>
					</TrackLine>
					<TrackLine>
						<End x="114.9125" y="-104.493"/>
					</TrackLine>
					<TrackLine>
						<End x="114.9125" y="-104.5241"/>
					</TrackLine>
					<TrackLine>
						<End x="114.9125" y="-104.5991"/>
					</TrackLine>
					<TrackLine>
						<End x="115.1" y="-105"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_CC2_IN"/>
				<Subwire width="0.15">
					<Start x="110.7" y="-103.95"/>
					<TrackLine>
						<End x="111.125" y="-103.875"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2" y="-103.875"/>
					</TrackLine>
					<TrackLine>
						<End x="111.3139" y="-103.875"/>
					</TrackLine>
					<TrackLine>
						<End x="111.8521" y="-103.6947"/>
					</TrackLine>
					<TrackLine>
						<End x="112.3493" y="-103.6947"/>
					</TrackLine>
					<TrackLine>
						<End x="113.3686" y="-104.4491"/>
					</TrackLine>
					<TrackLine>
						<End x="113.4125" y="-104.493"/>
					</TrackLine>
					<TrackLine>
						<End x="113.4125" y="-104.5241"/>
					</TrackLine>
					<TrackLine>
						<End x="113.4125" y="-104.5991"/>
					</TrackLine>
					<TrackLine>
						<End x="113.6" y="-105"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="168.7" y="-102.2"/>
					<TrackLine>
						<End x="169.5146" y="-101.0479"/>
					</TrackLine>
					<TrackLine>
						<End x="169.5166" y="-101.046"/>
					</TrackLine>
					<TrackLine>
						<End x="170.5378" y="-100.7158"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="176.0021" y="-103.1259"/>
					<TrackLine>
						<End x="178.8419" y="-101.8797"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="173.8569" y="-102.4636"/>
					<TrackLine>
						<End x="174.2443" y="-101.5172"/>
					</TrackLine>
					<TrackLine>
						<End x="174.2443" y="-100.875"/>
					</TrackLine>
					<TrackLine>
						<End x="173.7903" y="-100.421"/>
					</TrackLine>
					<TrackLine>
						<End x="172.9835" y="-100.0655"/>
					</TrackLine>
					<TrackLine>
						<End x="172.3413" y="-100.0655"/>
					</TrackLine>
					<TrackLine>
						<End x="170.5378" y="-100.7158"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="176.0021" y="-103.1259"/>
					<TrackLine>
						<End x="173.8569" y="-102.4636"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="181.6041" y="-102.2146"/>
					<TrackLine>
						<End x="182.0838" y="-102.1255"/>
					</TrackLine>
					<TrackLine>
						<End x="182.726" y="-102.1255"/>
					</TrackLine>
					<TrackLine>
						<End x="185.459" y="-102.488"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="178.8419" y="-101.8797"/>
					<TrackLine>
						<End x="180.5034" y="-101.1994"/>
					</TrackLine>
					<TrackLine>
						<End x="181.1456" y="-101.1994"/>
					</TrackLine>
					<TrackLine>
						<End x="181.5996" y="-101.6534"/>
					</TrackLine>
					<TrackLine>
						<End x="181.6041" y="-102.2146"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/PWR_EN"/>
				<Subwire width="0.15">
					<Start x="187.3118" y="-103.8473"/>
					<TrackLine>
						<End x="186.0591" y="-102.2394"/>
					</TrackLine>
					<TrackLine>
						<End x="185.7076" y="-101.8879"/>
					</TrackLine>
					<TrackLine>
						<End x="181.3637" y="-100.6493"/>
					</TrackLine>
					<TrackLine>
						<End x="180.59" y="-100.6238"/>
					</TrackLine>
					<TrackLine>
						<End x="180.2385" y="-100.2723"/>
					</TrackLine>
					<TrackLine>
						<End x="180.2223" y="-100.1426"/>
					</TrackLine>
					<TrackLine>
						<End x="179.8708" y="-99.7911"/>
					</TrackLine>
					<TrackLine>
						<End x="178.7725" y="-99.0296"/>
					</TrackLine>
					<TrackLine>
						<End x="178.421" y="-98.6781"/>
					</TrackLine>
					<TrackLine>
						<End x="178.3451" y="-97.842"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/IS_CHARGING"/>
				<Subwire width="0.15">
					<Start x="182.4049" y="-102.9006"/>
					<TrackLine>
						<End x="180.3832" y="-103.5501"/>
					</TrackLine>
					<TrackLine>
						<End x="180.2668" y="-103.6651"/>
					</TrackLine>
					<TrackLine>
						<End x="172.5234" y="-107.5112"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7818" y="-108.1953"/>
					</TrackLine>
					<TrackLine>
						<End x="112.9433" y="-108.7331"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/BTN1"/>
				<Subwire width="0.15">
					<Start x="198.5157" y="-103.8749"/>
					<TrackLine>
						<End x="198.5667" y="-100.5251"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/BTN2"/>
				<Subwire width="0.15">
					<Start x="182.696" y="-97.6151"/>
					<TrackLine>
						<End x="183.3325" y="-98.0448"/>
					</TrackLine>
					<TrackLine>
						<End x="190.5424" y="-99.7935"/>
					</TrackLine>
					<TrackLine>
						<End x="198.8153" y="-99.925"/>
					</TrackLine>
					<TrackLine>
						<End x="199.1668" y="-100.2765"/>
					</TrackLine>
					<TrackLine>
						<End x="199.3918" y="-100.5251"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/BTN2"/>
				<Subwire width="0.15">
					<Start x="199.3918" y="-100.5251"/>
					<TrackLine>
						<End x="199.3408" y="-103.8749"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/IR_LED_DAC"/>
				<Subwire width="0.15">
					<Start x="180.8386" y="-100.0237"/>
					<TrackLine>
						<End x="185.8629" y="-101.5128"/>
					</TrackLine>
					<TrackLine>
						<End x="186.4342" y="-102.0841"/>
					</TrackLine>
					<TrackLine>
						<End x="187.7666" y="-103.5467"/>
					</TrackLine>
					<TrackLine>
						<End x="187.9033" y="-103.6834"/>
					</TrackLine>
					<TrackLine>
						<End x="193.2295" y="-106.849"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/GREEN_IN"/>
				<Subwire width="0.15">
					<Start x="190.1408" y="-97.7866"/>
					<TrackLine>
						<End x="189.221" y="-96.9686"/>
					</TrackLine>
					<TrackLine>
						<End x="183.985" y="-96.4695"/>
					</TrackLine>
					<TrackLine>
						<End x="183.1772" y="-96.4695"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2921" y="-96.6399"/>
					</TrackLine>
					<TrackLine>
						<End x="180.795" y="-97.6975"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/WHITE_IN"/>
				<Subwire width="0.15">
					<Start x="192.4735" y="-96.4467"/>
					<TrackLine>
						<End x="187.9268" y="-96.3347"/>
					</TrackLine>
					<TrackLine>
						<End x="184.1253" y="-96.0944"/>
					</TrackLine>
					<TrackLine>
						<End x="183.0369" y="-96.0944"/>
					</TrackLine>
					<TrackLine>
						<End x="182.1518" y="-96.2648"/>
					</TrackLine>
					<TrackLine>
						<End x="182.123" y="-96.2767"/>
					</TrackLine>
					<TrackLine>
						<End x="180.5464" y="-97.0974"/>
					</TrackLine>
					<TrackLine>
						<End x="179.4246" y="-97.6952"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/VIBRO_CTRL"/>
				<Subwire width="0.15">
					<Start x="188.9724" y="-97.5687"/>
					<TrackLine>
						<End x="183.8297" y="-96.8446"/>
					</TrackLine>
					<TrackLine>
						<End x="183.3325" y="-96.8446"/>
					</TrackLine>
					<TrackLine>
						<End x="182.4474" y="-97.015"/>
					</TrackLine>
					<TrackLine>
						<End x="181.0436" y="-98.2976"/>
					</TrackLine>
					<TrackLine>
						<End x="179.484" y="-98.299"/>
					</TrackLine>
					<TrackLine>
						<End x="179.0211" y="-98.4295"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/BAT_MEAS_EN"/>
				<Subwire width="0.15">
					<Start x="172.2748" y="-106.9111"/>
					<TrackLine>
						<End x="172.4886" y="-105.7774"/>
					</TrackLine>
					<TrackLine>
						<End x="173.4692" y="-101.1961"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="176.9833" y="-100.1094"/>
					<TrackLine>
						<End x="176.707" y="-100.51"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22">
					<Start x="112.6567" y="-102.9304"/>
					<TrackLine>
						<End x="113.0892" y="-102.6673"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="112.773" y="-101.9581"/>
					<TrackLine>
						<End x="113.1406" y="-102.3009"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22">
					<Start x="177.3533" y="-100.102"/>
					<TrackLine>
						<End x="177.615" y="-100.515"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/ACC_CS"/>
				<Subwire width="0.15">
					<Start x="185.4886" y="-108.2496"/>
					<TrackLine>
						<End x="184.1253" y="-107.6755"/>
					</TrackLine>
					<TrackLine>
						<End x="182.1676" y="-106.5604"/>
					</TrackLine>
					<TrackLine>
						<End x="181.6704" y="-106.5604"/>
					</TrackLine>
					<TrackLine>
						<End x="178.9352" y="-106.8752"/>
					</TrackLine>
					<TrackLine>
						<End x="178.438" y="-106.8752"/>
					</TrackLine>
					<TrackLine>
						<End x="177.1681" y="-106.2951"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/ACC_SCK"/>
				<Subwire width="0.15">
					<Start x="186.0658" y="-108.7684"/>
					<TrackLine>
						<End x="186.086" y="-108.4971"/>
					</TrackLine>
					<TrackLine>
						<End x="186.086" y="-108.0021"/>
					</TrackLine>
					<TrackLine>
						<End x="185.7361" y="-107.6522"/>
					</TrackLine>
					<TrackLine>
						<End x="184.2806" y="-107.3004"/>
					</TrackLine>
					<TrackLine>
						<End x="182.3229" y="-106.1853"/>
					</TrackLine>
					<TrackLine>
						<End x="181.5151" y="-106.1853"/>
					</TrackLine>
					<TrackLine>
						<End x="178.6866" y="-106.2751"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="181.919" y="-107.1605"/>
					<TrackLine>
						<End x="180.606" y="-104.088"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="185.459" y="-102.488"/>
					<TrackLine>
						<End x="186.026" y="-105.051"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="176.0881" y="-97.702"/>
					<TrackLine>
						<End x="173.1199" y="-97.551"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="184.5292" y="-106.7003"/>
					<TrackLine>
						<End x="185.8097" y="-107.4745"/>
					</TrackLine>
					<TrackLine>
						<End x="186.6834" y="-108.234"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="184.5292" y="-106.7003"/>
					<TrackLine>
						<End x="181.919" y="-107.1605"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="177.4011" y="-108.6804"/>
					<TrackLine>
						<End x="175.0296" y="-104.4866"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="190.791" y="-99.1934"/>
					<TrackLine>
						<End x="197.4639" y="-97.2466"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="113.6673" y="-99.1542"/>
					<TrackLine>
						<End x="113.5481" y="-102.2792"/>
					</TrackLine>
					<TrackLine>
						<End x="113.4318" y="-103.2515"/>
					</TrackLine>
					<TrackLine>
						<End x="112.8758" y="-104.6159"/>
					</TrackLine>
					<TrackLine>
						<End x="111.4065" y="-106.4731"/>
					</TrackLine>
					<TrackLine>
						<End x="111.14" y="-106.7407"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="175.0296" y="-104.4866"/>
					<TrackLine>
						<End x="173.8569" y="-102.4636"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="196.944" y="-106.9337"/>
					<TrackLine>
						<End x="202.0927" y="-106.749"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="185.459" y="-102.488"/>
					<TrackLine>
						<End x="187.8964" y="-101.95"/>
					</TrackLine>
					<TrackLine>
						<End x="188" y="-101.95"/>
					</TrackLine>
					<TrackLine>
						<End x="188.25" y="-101.95"/>
					</TrackLine>
					<TrackLine>
						<End x="188.4" y="-101.575"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="116.8035" y="-106.7482"/>
					<TrackLine>
						<End x="116.9455" y="-107.2666"/>
					</TrackLine>
					<TrackLine>
						<End x="117.005" y="-107.454"/>
					</TrackLine>
					<TrackLine>
						<End x="117.1101" y="-107.6323"/>
					</TrackLine>
					<TrackLine>
						<End x="117.2793" y="-107.8106"/>
					</TrackLine>
					<TrackLine>
						<End x="117.6047" y="-108.136"/>
					</TrackLine>
					<TrackLine>
						<End x="117.7829" y="-108.2499"/>
					</TrackLine>
					<TrackLine>
						<End x="117.8045" y="-108.2637"/>
					</TrackLine>
					<TrackLine>
						<End x="117.8286" y="-108.2724"/>
					</TrackLine>
					<TrackLine>
						<End x="118.0401" y="-108.3485"/>
					</TrackLine>
					<TrackLine>
						<End x="118.0655" y="-108.3516"/>
					</TrackLine>
					<TrackLine>
						<End x="118.2134" y="-108.3693"/>
					</TrackLine>
					<TrackLine>
						<End x="119.4141" y="-108.3702"/>
					</TrackLine>
					<TrackLine>
						<End x="119.5533" y="-108.3703"/>
					</TrackLine>
					<TrackLine>
						<End x="166.3941" y="-108.3703"/>
					</TrackLine>
					<TrackLine>
						<End x="166.8543" y="-108.3703"/>
					</TrackLine>
					<TrackLine>
						<End x="167.086" y="-108.3007"/>
					</TrackLine>
					<TrackLine>
						<End x="167.1106" y="-108.2933"/>
					</TrackLine>
					<TrackLine>
						<End x="167.2836" y="-108.2095"/>
					</TrackLine>
					<TrackLine>
						<End x="167.3067" y="-108.1983"/>
					</TrackLine>
					<TrackLine>
						<End x="167.5239" y="-107.9902"/>
					</TrackLine>
					<TrackLine>
						<End x="167.8493" y="-107.6648"/>
					</TrackLine>
					<TrackLine>
						<End x="167.8629" y="-107.6431"/>
					</TrackLine>
					<TrackLine>
						<End x="167.9503" y="-107.5034"/>
					</TrackLine>
					<TrackLine>
						<End x="167.9601" y="-107.4797"/>
					</TrackLine>
					<TrackLine>
						<End x="168.0287" y="-107.3134"/>
					</TrackLine>
					<TrackLine>
						<End x="168.0664" y="-107.1536"/>
					</TrackLine>
					<TrackLine>
						<End x="168.3038" y="-104.5488"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="168.7" y="-102.2"/>
					<TrackLine>
						<End x="168.44" y="-103.3013"/>
					</TrackLine>
					<TrackLine>
						<End x="168.44" y="-103.5513"/>
					</TrackLine>
					<TrackLine>
						<End x="168.44" y="-103.6549"/>
					</TrackLine>
					<TrackLine>
						<End x="168.3038" y="-104.5488"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="186.9704" y="-99.7497"/>
					<TrackLine>
						<End x="185.2058" y="-99.8276"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="185.2058" y="-99.8276"/>
					<TrackLine>
						<End x="183.5811" y="-97.4447"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="183.5811" y="-97.4447"/>
					<TrackLine>
						<End x="183.4711" y="-97.294"/>
					</TrackLine>
					<TrackLine>
						<End x="183.0171" y="-96.84"/>
					</TrackLine>
					<TrackLine>
						<End x="182.3749" y="-96.84"/>
					</TrackLine>
					<TrackLine>
						<End x="179.1035" y="-96.9201"/>
					</TrackLine>
					<TrackLine>
						<End x="178.024" y="-97.0669"/>
					</TrackLine>
					<TrackLine>
						<End x="176.4092" y="-98.4771"/>
					</TrackLine>
					<TrackLine>
						<End x="173.1481" y="-100.421"/>
					</TrackLine>
					<TrackLine>
						<End x="172.6624" y="-100.8406"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="173.0887" y="-106.026"/>
					<TrackLine>
						<End x="172.6941" y="-101.5172"/>
					</TrackLine>
					<TrackLine>
						<End x="172.6624" y="-100.8406"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="186.9704" y="-99.7497"/>
					<TrackLine>
						<End x="194.5751" y="-100.9909"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="182.8" y="-104.45"/>
					<TrackLine>
						<End x="185.2058" y="-99.8276"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="/LEDIRC"/>
				<Subwire width="0.5">
					<Start x="209.5503" y="-104.1"/>
					<TrackLine>
						<End x="218.1986" y="-103.47"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="/LEDIRC"/>
				<Subwire width="0.5">
					<Start x="208.8002" y="-104.0712"/>
					<TrackLine>
						<End x="209.5503" y="-104.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="/LEDIRC"/>
				<Subwire width="0.5">
					<Start x="208.0501" y="-103.939"/>
					<TrackLine>
						<End x="208.8002" y="-104.0712"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire fixed="on" width="0.5">
					<Start x="110.6361" y="-100.9968"/>
					<TrackLine>
						<End x="110.6792" y="-103.2989"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="112.0947" y="-96.8384"/>
					<TrackLine>
						<End x="110.6361" y="-100.9968"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="112.7308" y="-96.8508"/>
					<TrackLine>
						<End x="112.0947" y="-96.8384"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="110.6792" y="-103.2989"/>
					<TrackLine>
						<End x="112.1007" y="-104.2948"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="/MCU_RST"/>
				<Subwire width="0.15">
					<Start x="181.6884" y="-103.8778"/>
					<TrackLine>
						<End x="181.8248" y="-104.8539"/>
					</TrackLine>
					<TrackLine>
						<End x="182.3961" y="-105.4252"/>
					</TrackLine>
					<TrackLine>
						<End x="188.3805" y="-106.9"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="/BTN1"/>
				<Subwire width="0.15">
					<Start x="180.8245" y="-101.9745"/>
					<TrackLine>
						<End x="181.004" y="-102.4632"/>
					</TrackLine>
					<TrackLine>
						<End x="181.3555" y="-102.8147"/>
					</TrackLine>
					<TrackLine>
						<End x="181.9347" y="-103.2831"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2831" y="-103.6315"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2831" y="-104.1241"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2053" y="-104.2037"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2053" y="-104.6963"/>
					</TrackLine>
					<TrackLine>
						<End x="182.5537" y="-105.0447"/>
					</TrackLine>
					<TrackLine>
						<End x="190.864" y="-106.674"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="/ACC_MISO"/>
				<Subwire width="0.15">
					<Start x="179.8579" y="-108.701"/>
					<TrackLine>
						<End x="179.0688" y="-103.5311"/>
					</TrackLine>
					<TrackLine>
						<End x="179.0688" y="-102.7233"/>
					</TrackLine>
					<TrackLine>
						<End x="179.442" y="-102.1283"/>
					</TrackLine>
					<TrackLine>
						<End x="179.6222" y="-100.3912"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="/ACC_MOSI"/>
				<Subwire width="0.15">
					<Start x="182.2353" y="-108.7874"/>
					<TrackLine>
						<End x="181.3189" y="-107.4091"/>
					</TrackLine>
					<TrackLine>
						<End x="179.4439" y="-103.3758"/>
					</TrackLine>
					<TrackLine>
						<End x="179.4439" y="-102.8786"/>
					</TrackLine>
					<TrackLine>
						<End x="179.8171" y="-102.2836"/>
					</TrackLine>
					<TrackLine>
						<End x="180.2223" y="-100.6398"/>
					</TrackLine>
					<TrackLine>
						<End x="180.2223" y="-100.1426"/>
					</TrackLine>
					<TrackLine>
						<End x="179.7326" y="-98.8991"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In2.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire width="0.22">
					<Start x="111.6995" y="-102.9987"/>
					<TrackLine>
						<End x="112.0216" y="-102.6673"/>
					</TrackLine>
					<TrackLine>
						<End x="112.3936" y="-102.2953"/>
					</TrackLine>
					<TrackLine>
						<End x="112.773" y="-101.9581"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Start x="183" y="-106.6502"/>
					<TrackLine>
						<End x="183.6" y="-106.6502"/>
					</TrackLine>
					<TrackLine>
						<End x="184.4386" y="-106.7003"/>
					</TrackLine>
					<TrackLine>
						<End x="184.5292" y="-106.7003"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Start x="185" y="-105.6502"/>
					<TrackLine>
						<End x="185" y="-106.2502"/>
					</TrackLine>
					<TrackLine>
						<End x="184.9855" y="-106.3477"/>
					</TrackLine>
					<TrackLine>
						<End x="184.9601" y="-106.389"/>
					</TrackLine>
					<TrackLine>
						<End x="184.7638" y="-106.5853"/>
					</TrackLine>
					<TrackLine>
						<End x="184.5292" y="-106.7003"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="186" y="-104.1"/>
					<TrackLine>
						<End x="186" y="-104.6009"/>
					</TrackLine>
					<TrackLine>
						<End x="186" y="-104.6993"/>
					</TrackLine>
					<TrackLine>
						<End x="186.026" y="-105.051"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="113.6673" y="-99.1542"/>
					<TrackLine>
						<End x="113.7169" y="-98.6918"/>
					</TrackLine>
					<TrackLine>
						<End x="114" y="-98.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="178.4" y="-107.7"/>
					<TrackLine>
						<End x="178.8759" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="179.3991" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="179.9" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="186.716" y="-98.289"/>
					<TrackLine>
						<End x="186.9232" y="-98.414"/>
					</TrackLine>
					<TrackLine>
						<End x="187.1732" y="-98.414"/>
					</TrackLine>
					<TrackLine>
						<End x="187.6233" y="-98.414"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="177.4011" y="-108.6804"/>
					<TrackLine>
						<End x="177.9988" y="-108.1904"/>
					</TrackLine>
					<TrackLine>
						<End x="178.0326" y="-108.1569"/>
					</TrackLine>
					<TrackLine>
						<End x="178.4" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="186.6834" y="-108.234"/>
					<TrackLine>
						<End x="186.79" y="-108.234"/>
					</TrackLine>
					<TrackLine>
						<End x="187.1361" y="-108.0743"/>
					</TrackLine>
					<TrackLine>
						<End x="187.143" y="-108.0674"/>
					</TrackLine>
					<TrackLine>
						<End x="187.6" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Start x="184.5" y="-105.6502"/>
					<TrackLine>
						<End x="184.5" y="-106.2502"/>
					</TrackLine>
					<TrackLine>
						<End x="184.5292" y="-106.7003"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="197.4639" y="-97.2466"/>
					<TrackLine>
						<End x="197.5818" y="-96.8376"/>
					</TrackLine>
					<TrackLine>
						<End x="197.7282" y="-96.6912"/>
					</TrackLine>
					<TrackLine>
						<End x="197.8318" y="-96.6912"/>
					</TrackLine>
					<TrackLine>
						<End x="198.0818" y="-96.6912"/>
					</TrackLine>
					<TrackLine>
						<End x="198.289" y="-96.484"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.4">
					<Start x="113.3975" y="-101.1169"/>
					<TrackLine>
						<End x="113.1362" y="-101.2574"/>
					</TrackLine>
					<TrackLine>
						<End x="112.5938" y="-101.2574"/>
					</TrackLine>
					<TrackLine>
						<End x="111.9893" y="-100.6817"/>
					</TrackLine>
					<TrackLine>
						<End x="111.849" y="-100.6066"/>
					</TrackLine>
					<TrackLine>
						<End x="111.649" y="-100.6066"/>
					</TrackLine>
					<TrackLine>
						<End x="111.595" y="-100.106"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="202.0927" y="-106.749"/>
					<TrackLine>
						<End x="202.0831" y="-107.2081"/>
					</TrackLine>
					<TrackLine>
						<End x="201.8" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="114.135" y="-100.106"/>
					<TrackLine>
						<End x="114.135" y="-99.6094"/>
					</TrackLine>
					<TrackLine>
						<End x="113.6673" y="-99.1542"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="111.438" y="-107.7"/>
					<TrackLine>
						<End x="111.2435" y="-107.442"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2435" y="-107.192"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2435" y="-107.0884"/>
					</TrackLine>
					<TrackLine>
						<End x="111.14" y="-106.7407"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Start x="183" y="-106.6502"/>
					<TrackLine>
						<End x="182.4" y="-106.6502"/>
					</TrackLine>
					<TrackLine>
						<End x="182.3025" y="-106.6647"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2612" y="-106.6901"/>
					</TrackLine>
					<TrackLine>
						<End x="182.0649" y="-106.8864"/>
					</TrackLine>
					<TrackLine>
						<End x="181.919" y="-107.1605"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="179.9" y="-107.7"/>
					<TrackLine>
						<End x="180.4009" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="180.8991" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="181.4" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="181.4" y="-107.7"/>
					<TrackLine>
						<End x="181.8152" y="-107.2774"/>
					</TrackLine>
					<TrackLine>
						<End x="181.919" y="-107.1605"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="114.135" y="-100.106"/>
					<TrackLine>
						<End x="114.135" y="-100.6026"/>
					</TrackLine>
					<TrackLine>
						<End x="113.3975" y="-101.1169"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Start x="183" y="-107.1502"/>
					<TrackLine>
						<End x="182.4" y="-107.1502"/>
					</TrackLine>
					<TrackLine>
						<End x="181.919" y="-107.1605"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="199.8881" y="-97.4663"/>
					<TrackLine>
						<End x="201.065" y="-97.4163"/>
					</TrackLine>
					<TrackLine>
						<End x="201.8354" y="-97.1912"/>
					</TrackLine>
					<TrackLine>
						<End x="201.9818" y="-97.0448"/>
					</TrackLine>
					<TrackLine>
						<End x="201.9818" y="-96.9412"/>
					</TrackLine>
					<TrackLine>
						<End x="201.9818" y="-96.6912"/>
					</TrackLine>
					<TrackLine>
						<End x="202.189" y="-96.484"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="110.9" y="-98.2"/>
					<TrackLine>
						<End x="110.9" y="-97.6991"/>
					</TrackLine>
					<TrackLine>
						<End x="110.9" y="-97.6007"/>
					</TrackLine>
					<TrackLine>
						<End x="110.7251" y="-96.1711"/>
					</TrackLine>
					<TrackLine>
						<End x="110.1539" y="-95.5999"/>
					</TrackLine>
					<TrackLine>
						<End x="109.3539" y="-95.5999"/>
					</TrackLine>
					<TrackLine>
						<End x="108.5461" y="-95.5999"/>
					</TrackLine>
					<TrackLine>
						<End x="107.4763" y="-96.1066"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="189.074" y="-107.96"/>
					<TrackLine>
						<End x="188.1198" y="-107.9831"/>
					</TrackLine>
					<TrackLine>
						<End x="188.0918" y="-107.9831"/>
					</TrackLine>
					<TrackLine>
						<End x="187.6" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="192.5" y="-107.7"/>
					<TrackLine>
						<End x="192.1326" y="-108.1569"/>
					</TrackLine>
					<TrackLine>
						<End x="192.1128" y="-108.1767"/>
					</TrackLine>
					<TrackLine>
						<End x="191.5029" y="-108.6062"/>
					</TrackLine>
					<TrackLine>
						<End x="191.4255" y="-108.6579"/>
					</TrackLine>
					<TrackLine>
						<End x="191.3343" y="-108.676"/>
					</TrackLine>
					<TrackLine>
						<End x="190.9407" y="-108.676"/>
					</TrackLine>
					<TrackLine>
						<End x="190.4657" y="-108.676"/>
					</TrackLine>
					<TrackLine>
						<End x="190.3745" y="-108.6579"/>
					</TrackLine>
					<TrackLine>
						<End x="189.074" y="-107.96"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="111.595" y="-100.106"/>
					<TrackLine>
						<End x="111.595" y="-99.3554"/>
					</TrackLine>
					<TrackLine>
						<End x="111.5915" y="-99.2516"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2743" y="-98.6639"/>
					</TrackLine>
					<TrackLine>
						<End x="111.2674" y="-98.6569"/>
					</TrackLine>
					<TrackLine>
						<End x="110.9" y="-98.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="182.7897" y="-96.6556"/>
					<TrackLine>
						<End x="183.2656" y="-96.6556"/>
					</TrackLine>
					<TrackLine>
						<End x="183.3694" y="-96.6436"/>
					</TrackLine>
					<TrackLine>
						<End x="184.03" y="-96.4677"/>
					</TrackLine>
					<TrackLine>
						<End x="184.4236" y="-96.4677"/>
					</TrackLine>
					<TrackLine>
						<End x="185.338" y="-96.4677"/>
					</TrackLine>
					<TrackLine>
						<End x="185.6163" y="-96.746"/>
					</TrackLine>
					<TrackLine>
						<End x="185.8002" y="-97.1582"/>
					</TrackLine>
					<TrackLine>
						<End x="186.0688" y="-97.4268"/>
					</TrackLine>
					<TrackLine>
						<End x="186.3624" y="-97.5818"/>
					</TrackLine>
					<TrackLine>
						<End x="186.5088" y="-97.7282"/>
					</TrackLine>
					<TrackLine>
						<End x="186.5088" y="-97.8318"/>
					</TrackLine>
					<TrackLine>
						<End x="186.5088" y="-98.0818"/>
					</TrackLine>
					<TrackLine>
						<End x="186.716" y="-98.289"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="196.2" y="-107.7"/>
					<TrackLine>
						<End x="196.6319" y="-107.3076"/>
					</TrackLine>
					<TrackLine>
						<End x="196.6586" y="-107.2808"/>
					</TrackLine>
					<TrackLine>
						<End x="196.6654" y="-107.2738"/>
					</TrackLine>
					<TrackLine>
						<End x="196.944" y="-106.9337"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="192.5" y="-107.7"/>
					<TrackLine>
						<End x="192.9759" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="195.7241" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="196.2" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.22">
					<Start x="185" y="-105.6502"/>
					<TrackLine>
						<End x="185.015" y="-105.1602"/>
					</TrackLine>
					<TrackLine>
						<End x="185.125" y="-105.1602"/>
					</TrackLine>
					<TrackLine>
						<End x="185.1706" y="-105.1602"/>
					</TrackLine>
					<TrackLine>
						<End x="186.026" y="-105.051"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="110.9" y="-98.2"/>
					<TrackLine>
						<End x="110.715" y="-97.9864"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="GND"/>
				<Subwire width="0.5">
					<Start x="199.8881" y="-97.4663"/>
					<TrackLine>
						<End x="197.635" y="-97.4163"/>
					</TrackLine>
					<TrackLine>
						<End x="197.4639" y="-97.2466"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="194.5751" y="-100.9909"/>
					<TrackLine>
						<End x="194.9" y="-100.1036"/>
					</TrackLine>
					<TrackLine>
						<End x="194.9" y="-100"/>
					</TrackLine>
					<TrackLine>
						<End x="194.9" y="-99.75"/>
					</TrackLine>
					<TrackLine>
						<End x="195.15" y="-99.3"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="186.5" y="-100.74"/>
					<TrackLine>
						<End x="186.75" y="-100.45"/>
					</TrackLine>
					<TrackLine>
						<End x="186.75" y="-100.2"/>
					</TrackLine>
					<TrackLine>
						<End x="186.75" y="-100.0964"/>
					</TrackLine>
					<TrackLine>
						<End x="186.9704" y="-99.7497"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="195.15" y="-105.1"/>
					<TrackLine>
						<End x="194.9" y="-104.65"/>
					</TrackLine>
					<TrackLine>
						<End x="194.9" y="-104.4"/>
					</TrackLine>
					<TrackLine>
						<End x="194.9" y="-104.2964"/>
					</TrackLine>
					<TrackLine>
						<End x="194.5751" y="-100.9909"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="192.75" y="-105.1"/>
					<TrackLine>
						<End x="193" y="-105.1"/>
					</TrackLine>
					<TrackLine>
						<End x="193.25" y="-105.1"/>
					</TrackLine>
					<TrackLine>
						<End x="194.65" y="-105.1"/>
					</TrackLine>
					<TrackLine>
						<End x="194.9" y="-105.1"/>
					</TrackLine>
					<TrackLine>
						<End x="195.15" y="-105.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrMCU"/>
				<Subwire width="0.5">
					<Start x="192.75" y="-99.3"/>
					<TrackLine>
						<End x="192.75" y="-99.75"/>
					</TrackLine>
					<TrackLine>
						<End x="192.75" y="-100"/>
					</TrackLine>
					<TrackLine>
						<End x="192.75" y="-104.4"/>
					</TrackLine>
					<TrackLine>
						<End x="192.75" y="-104.65"/>
					</TrackLine>
					<TrackLine>
						<End x="192.75" y="-105.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="182.1279" y="-98.8238"/>
					<TrackLine>
						<End x="181.6152" y="-98.8238"/>
					</TrackLine>
					<TrackLine>
						<End x="181.5701" y="-97.3764"/>
					</TrackLine>
					<TrackLine>
						<End x="181.4728" y="-97.1474"/>
					</TrackLine>
					<TrackLine>
						<End x="181.1897" y="-96.6556"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="182.1279" y="-98.8238"/>
					<TrackLine>
						<End x="182.8779" y="-98.8238"/>
					</TrackLine>
					<TrackLine>
						<End x="184.0996" y="-98.8238"/>
					</TrackLine>
					<TrackLine>
						<End x="184.3496" y="-98.8238"/>
					</TrackLine>
					<TrackLine>
						<End x="184.6" y="-98.9995"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="188.1754" y="-95.7346"/>
					<TrackLine>
						<End x="188.9313" y="-95.7243"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="181.1897" y="-96.6556"/>
					<TrackLine>
						<End x="181.5571" y="-96.1986"/>
					</TrackLine>
					<TrackLine>
						<End x="181.5769" y="-96.1789"/>
					</TrackLine>
					<TrackLine>
						<End x="182.1868" y="-95.7494"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2255" y="-95.7235"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2642" y="-95.6977"/>
					</TrackLine>
					<TrackLine>
						<End x="182.3098" y="-95.6886"/>
					</TrackLine>
					<TrackLine>
						<End x="182.3554" y="-95.6796"/>
					</TrackLine>
					<TrackLine>
						<End x="186.062" y="-95.5787"/>
					</TrackLine>
					<TrackLine>
						<End x="186.4556" y="-95.5787"/>
					</TrackLine>
					<TrackLine>
						<End x="187.37" y="-95.5787"/>
					</TrackLine>
					<TrackLine>
						<End x="188.1754" y="-95.7346"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+PwrCtrled"/>
				<Subwire width="0.5">
					<Start x="188.9313" y="-95.7243"/>
					<TrackLine>
						<End x="189.6756" y="-95.7346"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_PWR"/>
				<Subwire width="0.15">
					<Start x="187.6" y="-106.1"/>
					<TrackLine>
						<End x="187.1741" y="-106.1251"/>
					</TrackLine>
					<TrackLine>
						<End x="187.0991" y="-106.1251"/>
					</TrackLine>
					<TrackLine>
						<End x="186.6" y="-106.1251"/>
					</TrackLine>
					<TrackLine>
						<End x="186.525" y="-106.1251"/>
					</TrackLine>
					<TrackLine>
						<End x="186" y="-106.1502"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_PWR"/>
				<Subwire width="0.15">
					<Start x="184" y="-105.6502"/>
					<TrackLine>
						<End x="184.05" y="-105.1252"/>
					</TrackLine>
					<TrackLine>
						<End x="184.05" y="-105.0502"/>
					</TrackLine>
					<TrackLine>
						<End x="184.05" y="-105.0191"/>
					</TrackLine>
					<TrackLine>
						<End x="184.1169" y="-104.5918"/>
					</TrackLine>
					<TrackLine>
						<End x="184.4" y="-104.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_PWR"/>
				<Subwire width="0.15">
					<Start x="186.0516" y="-103.0814"/>
					<TrackLine>
						<End x="186.075" y="-102.6311"/>
					</TrackLine>
					<TrackLine>
						<End x="186.075" y="-102.6"/>
					</TrackLine>
					<TrackLine>
						<End x="186.075" y="-102.525"/>
					</TrackLine>
					<TrackLine>
						<End x="186.5" y="-102.06"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_PWR"/>
				<Subwire width="0.15">
					<Start x="187.6" y="-106.1"/>
					<TrackLine>
						<End x="187.2076" y="-105.668"/>
					</TrackLine>
					<TrackLine>
						<End x="187.2007" y="-105.6611"/>
					</TrackLine>
					<TrackLine>
						<End x="186.8989" y="-105.1416"/>
					</TrackLine>
					<TrackLine>
						<End x="186.776" y="-104.2382"/>
					</TrackLine>
					<TrackLine>
						<End x="186.7438" y="-104.0826"/>
					</TrackLine>
					<TrackLine>
						<End x="186.7439" y="-103.989"/>
					</TrackLine>
					<TrackLine>
						<End x="186.7439" y="-103.7265"/>
					</TrackLine>
					<TrackLine>
						<End x="186.7348" y="-103.6316"/>
					</TrackLine>
					<TrackLine>
						<End x="186.7219" y="-103.5875"/>
					</TrackLine>
					<TrackLine>
						<End x="186.7062" y="-103.5446"/>
					</TrackLine>
					<TrackLine>
						<End x="186.5304" y="-103.3688"/>
					</TrackLine>
					<TrackLine>
						<End x="186.4917" y="-103.3429"/>
					</TrackLine>
					<TrackLine>
						<End x="186.453" y="-103.3171"/>
					</TrackLine>
					<TrackLine>
						<End x="186.0516" y="-103.0814"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_PWR"/>
				<Subwire width="0.15">
					<Start x="184.4" y="-104.1"/>
					<TrackLine>
						<End x="184.8319" y="-103.7076"/>
					</TrackLine>
					<TrackLine>
						<End x="184.8389" y="-103.7007"/>
					</TrackLine>
					<TrackLine>
						<End x="185.547" y="-103.3171"/>
					</TrackLine>
					<TrackLine>
						<End x="186.0516" y="-103.0814"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_PWR"/>
				<Subwire width="0.15">
					<Start x="184.4" y="-104.1"/>
					<TrackLine>
						<End x="183.9331" y="-103.7919"/>
					</TrackLine>
					<TrackLine>
						<End x="183.9233" y="-103.7919"/>
					</TrackLine>
					<TrackLine>
						<End x="182.1571" y="-103.4988"/>
					</TrackLine>
					<TrackLine>
						<End x="181.9362" y="-103.2796"/>
					</TrackLine>
					<TrackLine>
						<End x="180.6049" y="-102.5047"/>
					</TrackLine>
					<TrackLine>
						<End x="180.2943" y="-102.1941"/>
					</TrackLine>
					<TrackLine>
						<End x="179.8171" y="-101.4758"/>
					</TrackLine>
					<TrackLine>
						<End x="179.0221" y="-100.6398"/>
					</TrackLine>
					<TrackLine>
						<End x="178.4712" y="-99.1923"/>
					</TrackLine>
					<TrackLine>
						<End x="178.1197" y="-98.8408"/>
					</TrackLine>
					<TrackLine>
						<End x="177.3092" y="-98.8234"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ADC_BAT"/>
				<Subwire width="0.15">
					<Start x="175.3" y="-107.7"/>
					<TrackLine>
						<End x="175.7009" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="175.7759" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="176.3241" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="176.3991" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="176.8" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ADC_BAT"/>
				<Subwire width="0.15">
					<Start x="179.9" y="-106.1"/>
					<TrackLine>
						<End x="180.0059" y="-105.6991"/>
					</TrackLine>
					<TrackLine>
						<End x="180.0059" y="-105.6241"/>
					</TrackLine>
					<TrackLine>
						<End x="180.0059" y="-103.8394"/>
					</TrackLine>
					<TrackLine>
						<End x="180.044" y="-103.1272"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ADC_BAT"/>
				<Subwire width="0.15">
					<Start x="179.9" y="-106.1"/>
					<TrackLine>
						<End x="179.443" y="-106.4674"/>
					</TrackLine>
					<TrackLine>
						<End x="179.4361" y="-106.4743"/>
					</TrackLine>
					<TrackLine>
						<End x="178.9352" y="-106.8752"/>
					</TrackLine>
					<TrackLine>
						<End x="178.0382" y="-106.899"/>
					</TrackLine>
					<TrackLine>
						<End x="177.9926" y="-106.908"/>
					</TrackLine>
					<TrackLine>
						<End x="177.947" y="-106.9171"/>
					</TrackLine>
					<TrackLine>
						<End x="177.2389" y="-107.3007"/>
					</TrackLine>
					<TrackLine>
						<End x="177.2319" y="-107.3076"/>
					</TrackLine>
					<TrackLine>
						<End x="176.8" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/+5V_MID"/>
				<Subwire width="0.15">
					<Start x="111.595" y="-105.694"/>
					<TrackLine>
						<End x="111.595" y="-105.1974"/>
					</TrackLine>
					<TrackLine>
						<End x="112.3493" y="-104.8949"/>
					</TrackLine>
					<TrackLine>
						<End x="112.7008" y="-104.5434"/>
					</TrackLine>
					<TrackLine>
						<End x="114.1499" y="-101.7236"/>
					</TrackLine>
					<TrackLine>
						<End x="114.8236" y="-101.0499"/>
					</TrackLine>
					<TrackLine>
						<End x="115.405" y="-100.6026"/>
					</TrackLine>
					<TrackLine>
						<End x="115.405" y="-100.106"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/+5V_MID"/>
				<Subwire width="0.5">
					<Start x="115.6" y="-98.2"/>
					<TrackLine>
						<End x="115.6" y="-97.6991"/>
					</TrackLine>
					<TrackLine>
						<End x="115.6" y="-97.2009"/>
					</TrackLine>
					<TrackLine>
						<End x="115.6" y="-96.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/+5V_MID"/>
				<Subwire width="0.5">
					<Start x="115.405" y="-100.106"/>
					<TrackLine>
						<End x="115.405" y="-99.6094"/>
					</TrackLine>
					<TrackLine>
						<End x="115.3169" y="-98.7198"/>
					</TrackLine>
					<TrackLine>
						<End x="115.3169" y="-98.6918"/>
					</TrackLine>
					<TrackLine>
						<End x="115.6" y="-98.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+BATT"/>
				<Subwire width="0.5">
					<Start x="115.405" y="-105.694"/>
					<TrackLine>
						<End x="115.405" y="-105.1974"/>
					</TrackLine>
					<TrackLine>
						<End x="115.405" y="-102.2"/>
					</TrackLine>
					<TrackLine>
						<End x="115.8" y="-102.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+BATT"/>
				<Subwire width="0.5">
					<Start x="169.5895" y="-106.294"/>
					<TrackLine>
						<End x="169.6471" y="-106.5012"/>
					</TrackLine>
					<TrackLine>
						<End x="169.6471" y="-106.7512"/>
					</TrackLine>
					<TrackLine>
						<End x="169.6471" y="-107.2153"/>
					</TrackLine>
					<TrackLine>
						<End x="169.6471" y="-107.7162"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+BATT"/>
				<Subwire width="0.2">
					<Start x="115.405" y="-105.694"/>
					<TrackLine>
						<End x="115.405" y="-106.1906"/>
					</TrackLine>
					<TrackLine>
						<End x="115.4" y="-107.3033"/>
					</TrackLine>
					<TrackLine>
						<End x="115.4" y="-107.8283"/>
					</TrackLine>
					<TrackLine>
						<End x="115.4" y="-108.0967"/>
					</TrackLine>
					<TrackLine>
						<End x="115.408" y="-108.1428"/>
					</TrackLine>
					<TrackLine>
						<End x="115.4171" y="-108.1884"/>
					</TrackLine>
					<TrackLine>
						<End x="115.4429" y="-108.2271"/>
					</TrackLine>
					<TrackLine>
						<End x="115.4688" y="-108.2658"/>
					</TrackLine>
					<TrackLine>
						<End x="115.6592" y="-108.4562"/>
					</TrackLine>
					<TrackLine>
						<End x="115.7366" y="-108.5079"/>
					</TrackLine>
					<TrackLine>
						<End x="115.8278" y="-108.526"/>
					</TrackLine>
					<TrackLine>
						<End x="118.1202" y="-108.5944"/>
					</TrackLine>
					<TrackLine>
						<End x="119.3209" y="-108.5953"/>
					</TrackLine>
					<TrackLine>
						<End x="119.4601" y="-108.5954"/>
					</TrackLine>
					<TrackLine>
						<End x="166.3009" y="-108.5954"/>
					</TrackLine>
					<TrackLine>
						<End x="166.9475" y="-108.5954"/>
					</TrackLine>
					<TrackLine>
						<End x="169.1704" y="-108.0243"/>
					</TrackLine>
					<TrackLine>
						<End x="169.1802" y="-108.0243"/>
					</TrackLine>
					<TrackLine>
						<End x="169.6471" y="-107.7162"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="210.5248" y="-100.3889"/>
					<TrackLine>
						<End x="211.2749" y="-100.4645"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="209.7747" y="-100.3905"/>
					<TrackLine>
						<End x="210.5248" y="-100.3889"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="215.6" y="-100.95"/>
					<TrackLine>
						<End x="216.325" y="-100.94"/>
					</TrackLine>
					<TrackLine>
						<End x="216.575" y="-100.94"/>
					</TrackLine>
					<TrackLine>
						<End x="217.3604" y="-100.94"/>
					</TrackLine>
					<TrackLine>
						<End x="217.6104" y="-100.94"/>
					</TrackLine>
					<TrackLine>
						<End x="218.1986" y="-100.93"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="211.2749" y="-100.4645"/>
					<TrackLine>
						<End x="211.6214" y="-100.6"/>
					</TrackLine>
					<TrackLine>
						<End x="211.725" y="-100.6"/>
					</TrackLine>
					<TrackLine>
						<End x="211.975" y="-100.6"/>
					</TrackLine>
					<TrackLine>
						<End x="212.7" y="-100.95"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/LEDA"/>
				<Subwire width="0.5">
					<Start x="212.7" y="-100.95"/>
					<TrackLine>
						<End x="213.425" y="-100.95"/>
					</TrackLine>
					<TrackLine>
						<End x="213.675" y="-100.95"/>
					</TrackLine>
					<TrackLine>
						<End x="214.625" y="-100.95"/>
					</TrackLine>
					<TrackLine>
						<End x="214.875" y="-100.95"/>
					</TrackLine>
					<TrackLine>
						<End x="215.6" y="-100.95"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="Net-(D3-PadC)"/>
				<Subwire width="0.18">
					<Start x="209" y="-103"/>
					<TrackLine>
						<End x="209.4569" y="-103.3674"/>
					</TrackLine>
					<TrackLine>
						<End x="209.4639" y="-103.3743"/>
					</TrackLine>
					<TrackLine>
						<End x="209.7898" y="-103.5217"/>
					</TrackLine>
					<TrackLine>
						<End x="209.9536" y="-103.6844"/>
					</TrackLine>
					<TrackLine>
						<End x="210.0273" y="-103.7452"/>
					</TrackLine>
					<TrackLine>
						<End x="210.1078" y="-103.7891"/>
					</TrackLine>
					<TrackLine>
						<End x="211.6173" y="-104.3099"/>
					</TrackLine>
					<TrackLine>
						<End x="213.5673" y="-104.3099"/>
					</TrackLine>
					<TrackLine>
						<End x="213.7827" y="-104.3099"/>
					</TrackLine>
					<TrackLine>
						<End x="214.6623" y="-104.14"/>
					</TrackLine>
					<TrackLine>
						<End x="214.715" y="-104.0873"/>
					</TrackLine>
					<TrackLine>
						<End x="214.715" y="-104.05"/>
					</TrackLine>
					<TrackLine>
						<End x="214.715" y="-103.96"/>
					</TrackLine>
					<TrackLine>
						<End x="215.6" y="-102.99"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="Net-(D5-PadC)"/>
				<Subwire width="0.15">
					<Start x="212.7" y="-102.99"/>
					<TrackLine>
						<End x="211.8" y="-102.995"/>
					</TrackLine>
					<TrackLine>
						<End x="211.725" y="-102.995"/>
					</TrackLine>
					<TrackLine>
						<End x="211.0009" y="-102.995"/>
					</TrackLine>
					<TrackLine>
						<End x="210.9259" y="-102.995"/>
					</TrackLine>
					<TrackLine>
						<End x="210.5" y="-103"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="Net-(D6-PadA)"/>
				<Subwire width="0.15">
					<Start x="112.962" y="-107.7"/>
					<TrackLine>
						<End x="113.3315" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="113.4065" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="114.1241" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="114.1991" y="-107.7"/>
					</TrackLine>
					<TrackLine>
						<End x="114.6" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/VIBRO_OUT"/>
				<Subwire width="0.5">
					<Start x="184.6" y="-101.6005"/>
					<TrackLine>
						<End x="184.8504" y="-101.3501"/>
					</TrackLine>
					<TrackLine>
						<End x="184.8504" y="-101.1001"/>
					</TrackLine>
					<TrackLine>
						<End x="184.8504" y="-100.9965"/>
					</TrackLine>
					<TrackLine>
						<End x="185.5755" y="-99.6967"/>
					</TrackLine>
					<TrackLine>
						<End x="185.5755" y="-99.3031"/>
					</TrackLine>
					<TrackLine>
						<End x="185.5755" y="-98.3023"/>
					</TrackLine>
					<TrackLine>
						<End x="185.3912" y="-97.7536"/>
					</TrackLine>
					<TrackLine>
						<End x="185.2448" y="-97.6072"/>
					</TrackLine>
					<TrackLine>
						<End x="185.1412" y="-97.6072"/>
					</TrackLine>
					<TrackLine>
						<End x="184.8912" y="-97.6072"/>
					</TrackLine>
					<TrackLine>
						<End x="184.684" y="-97.4"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/VIBRO_OUT"/>
				<Subwire width="0.5">
					<Start x="184.6" y="-101.6005"/>
					<TrackLine>
						<End x="184.3496" y="-101.3501"/>
					</TrackLine>
					<TrackLine>
						<End x="184.0996" y="-101.3501"/>
					</TrackLine>
					<TrackLine>
						<End x="183.996" y="-101.3501"/>
					</TrackLine>
					<TrackLine>
						<End x="183.1008" y="-101.0134"/>
					</TrackLine>
					<TrackLine>
						<End x="182.3508" y="-101.0134"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="112.0947" y="-96.8384"/>
					<TrackLine>
						<End x="112.7308" y="-96.8508"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="+5vUSB"/>
				<Subwire width="0.5">
					<Start x="114" y="-96.7"/>
					<TrackLine>
						<End x="113.5241" y="-96.7"/>
					</TrackLine>
					<TrackLine>
						<End x="113.4203" y="-96.712"/>
					</TrackLine>
					<TrackLine>
						<End x="112.7308" y="-96.8508"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="Net-(DA2-PROG)"/>
				<Subwire width="0.15">
					<Start x="112.865" y="-100.106"/>
					<TrackLine>
						<End x="112.865" y="-99.6094"/>
					</TrackLine>
					<TrackLine>
						<End x="112.7831" y="-98.6918"/>
					</TrackLine>
					<TrackLine>
						<End x="112.5" y="-98.2"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/IS_CHARGING"/>
				<Subwire width="0.15">
					<Start x="112.9433" y="-108.7331"/>
					<TrackLine>
						<End x="112.3932" y="-108.5081"/>
					</TrackLine>
					<TrackLine>
						<End x="112.2174" y="-108.3323"/>
					</TrackLine>
					<TrackLine>
						<End x="112.2174" y="-108.0837"/>
					</TrackLine>
					<TrackLine>
						<End x="112.2174" y="-107.0677"/>
					</TrackLine>
					<TrackLine>
						<End x="112.865" y="-106.1906"/>
					</TrackLine>
					<TrackLine>
						<End x="112.865" y="-105.694"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/BTN3"/>
				<Subwire width="0.15">
					<Start x="187.499" y="-104.893"/>
					<TrackLine>
						<End x="188.55" y="-104.893"/>
					</TrackLine>
					<TrackLine>
						<End x="188.625" y="-104.893"/>
					</TrackLine>
					<TrackLine>
						<End x="189.05" y="-105.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/BTN3"/>
				<Subwire width="0.15">
					<Start x="189.05" y="-105.1"/>
					<TrackLine>
						<End x="189.475" y="-105.725"/>
					</TrackLine>
					<TrackLine>
						<End x="189.475" y="-105.8"/>
					</TrackLine>
					<TrackLine>
						<End x="189.475" y="-105.8311"/>
					</TrackLine>
					<TrackLine>
						<End x="190.4483" y="-107.2878"/>
					</TrackLine>
					<TrackLine>
						<End x="190.468" y="-107.3076"/>
					</TrackLine>
					<TrackLine>
						<End x="190.9" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/BTN3"/>
				<Subwire width="0.15">
					<Start x="189.05" y="-99.3"/>
					<TrackLine>
						<End x="189.475" y="-99.925"/>
					</TrackLine>
					<TrackLine>
						<End x="189.475" y="-100"/>
					</TrackLine>
					<TrackLine>
						<End x="189.475" y="-100.0311"/>
					</TrackLine>
					<TrackLine>
						<End x="189.9001" y="-100.8257"/>
					</TrackLine>
					<TrackLine>
						<End x="189.9001" y="-103.3257"/>
					</TrackLine>
					<TrackLine>
						<End x="189.9001" y="-103.5743"/>
					</TrackLine>
					<TrackLine>
						<End x="189.625" y="-104.4311"/>
					</TrackLine>
					<TrackLine>
						<End x="189.5811" y="-104.475"/>
					</TrackLine>
					<TrackLine>
						<End x="189.55" y="-104.475"/>
					</TrackLine>
					<TrackLine>
						<End x="189.475" y="-104.475"/>
					</TrackLine>
					<TrackLine>
						<End x="189.05" y="-105.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/BTN2"/>
				<Subwire width="0.15">
					<Start x="199.3408" y="-103.8749"/>
					<TrackLine>
						<End x="199.275" y="-104.3689"/>
					</TrackLine>
					<TrackLine>
						<End x="199.275" y="-104.4"/>
					</TrackLine>
					<TrackLine>
						<End x="199.275" y="-104.475"/>
					</TrackLine>
					<TrackLine>
						<End x="198.85" y="-105.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/BTN2"/>
				<Subwire width="0.15">
					<Start x="198.85" y="-105.1"/>
					<TrackLine>
						<End x="198.425" y="-105.725"/>
					</TrackLine>
					<TrackLine>
						<End x="198.425" y="-105.8"/>
					</TrackLine>
					<TrackLine>
						<End x="198.425" y="-105.8311"/>
					</TrackLine>
					<TrackLine>
						<End x="198.0831" y="-107.1983"/>
					</TrackLine>
					<TrackLine>
						<End x="198.0831" y="-107.2081"/>
					</TrackLine>
					<TrackLine>
						<End x="197.8" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/BTN2"/>
				<Subwire width="0.15">
					<Start x="198.85" y="-99.3"/>
					<TrackLine>
						<End x="199.275" y="-99.925"/>
					</TrackLine>
					<TrackLine>
						<End x="199.275" y="-100"/>
					</TrackLine>
					<TrackLine>
						<End x="199.275" y="-100.0311"/>
					</TrackLine>
					<TrackLine>
						<End x="199.3918" y="-100.5251"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/GREEN_IN"/>
				<Subwire width="0.15">
					<Start x="191.3" y="-98.2"/>
					<TrackLine>
						<End x="190.8081" y="-97.9169"/>
					</TrackLine>
					<TrackLine>
						<End x="190.1408" y="-97.7866"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_MISO"/>
				<Subwire width="0.15">
					<Start x="183" y="-107.6502"/>
					<TrackLine>
						<End x="182.475" y="-107.7002"/>
					</TrackLine>
					<TrackLine>
						<End x="182.475" y="-107.7752"/>
					</TrackLine>
					<TrackLine>
						<End x="182.475" y="-107.8063"/>
					</TrackLine>
					<TrackLine>
						<End x="182.4311" y="-107.8502"/>
					</TrackLine>
					<TrackLine>
						<End x="182.0144" y="-108.254"/>
					</TrackLine>
					<TrackLine>
						<End x="181.9278" y="-108.3395"/>
					</TrackLine>
					<TrackLine>
						<End x="181.891" y="-108.3699"/>
					</TrackLine>
					<TrackLine>
						<End x="181.8541" y="-108.4003"/>
					</TrackLine>
					<TrackLine>
						<End x="181.7736" y="-108.4442"/>
					</TrackLine>
					<TrackLine>
						<End x="179.8579" y="-108.701"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_MOSI"/>
				<Subwire width="0.15">
					<Start x="184" y="-108.1502"/>
					<TrackLine>
						<End x="183.95" y="-108.6752"/>
					</TrackLine>
					<TrackLine>
						<End x="183.875" y="-108.6752"/>
					</TrackLine>
					<TrackLine>
						<End x="183.8439" y="-108.6752"/>
					</TrackLine>
					<TrackLine>
						<End x="182.2353" y="-108.7874"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/WHITE_IN"/>
				<Subwire width="0.15">
					<Start x="193.4" y="-96.7"/>
					<TrackLine>
						<End x="192.9991" y="-96.5125"/>
					</TrackLine>
					<TrackLine>
						<End x="192.9241" y="-96.5125"/>
					</TrackLine>
					<TrackLine>
						<End x="192.893" y="-96.5125"/>
					</TrackLine>
					<TrackLine>
						<End x="192.4735" y="-96.4467"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/VIBRO_CTRL"/>
				<Subwire width="0.15">
					<Start x="189.8" y="-96.7606"/>
					<TrackLine>
						<End x="189.368" y="-97.153"/>
					</TrackLine>
					<TrackLine>
						<End x="189.3483" y="-97.1728"/>
					</TrackLine>
					<TrackLine>
						<End x="188.9724" y="-97.5687"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_INT1"/>
				<Subwire width="0.15">
					<Start x="181.4" y="-106.1"/>
					<TrackLine>
						<End x="181.2125" y="-105.6991"/>
					</TrackLine>
					<TrackLine>
						<End x="181.2125" y="-105.6241"/>
					</TrackLine>
					<TrackLine>
						<End x="181.2125" y="-105.593"/>
					</TrackLine>
					<TrackLine>
						<End x="181.1472" y="-104.102"/>
					</TrackLine>
					<TrackLine>
						<End x="181.1472" y="-103.8638"/>
					</TrackLine>
					<TrackLine>
						<End x="180.5742" y="-102.9076"/>
					</TrackLine>
					<TrackLine>
						<End x="179.9891" y="-102.3205"/>
					</TrackLine>
					<TrackLine>
						<End x="179.442" y="-101.6311"/>
					</TrackLine>
					<TrackLine>
						<End x="178.647" y="-100.7951"/>
					</TrackLine>
					<TrackLine>
						<End x="177.8711" y="-99.4409"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_INT1"/>
				<Subwire width="0.15">
					<Start x="183" y="-106.1502"/>
					<TrackLine>
						<End x="182.475" y="-106.1251"/>
					</TrackLine>
					<TrackLine>
						<End x="182.4" y="-106.1251"/>
					</TrackLine>
					<TrackLine>
						<End x="181.9009" y="-106.1251"/>
					</TrackLine>
					<TrackLine>
						<End x="181.8259" y="-106.1251"/>
					</TrackLine>
					<TrackLine>
						<End x="181.4" y="-106.1"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/BAT_MEAS_EN"/>
				<Subwire width="0.15">
					<Start x="171.3675" y="-106.294"/>
					<TrackLine>
						<End x="171.7497" y="-106.6762"/>
					</TrackLine>
					<TrackLine>
						<End x="171.8247" y="-106.6762"/>
					</TrackLine>
					<TrackLine>
						<End x="171.8558" y="-106.6762"/>
					</TrackLine>
					<TrackLine>
						<End x="172.2748" y="-106.9111"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/BAT_MEAS_EN"/>
				<Subwire width="0.15">
					<Start x="171.2471" y="-107.7162"/>
					<TrackLine>
						<End x="171.3073" y="-107.2903"/>
					</TrackLine>
					<TrackLine>
						<End x="171.3073" y="-107.2153"/>
					</TrackLine>
					<TrackLine>
						<End x="171.3073" y="-106.7512"/>
					</TrackLine>
					<TrackLine>
						<End x="171.3073" y="-106.6762"/>
					</TrackLine>
					<TrackLine>
						<End x="171.3675" y="-106.294"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire width="0.22">
					<Start x="111.6911" y="-101.4016"/>
					<TrackLine>
						<End x="112.1379" y="-102.2212"/>
					</TrackLine>
					<TrackLine>
						<End x="112.6567" y="-102.9304"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_CS"/>
				<Subwire width="0.15">
					<Start x="185" y="-108.1502"/>
					<TrackLine>
						<End x="185.05" y="-108.2496"/>
					</TrackLine>
					<TrackLine>
						<End x="185.125" y="-108.2496"/>
					</TrackLine>
					<TrackLine>
						<End x="185.4886" y="-108.2496"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/ACC_SCK"/>
				<Subwire width="0.15">
					<Start x="184.5" y="-108.1502"/>
					<TrackLine>
						<End x="184.55" y="-108.6752"/>
					</TrackLine>
					<TrackLine>
						<End x="184.55" y="-108.7502"/>
					</TrackLine>
					<TrackLine>
						<End x="184.55" y="-108.7813"/>
					</TrackLine>
					<TrackLine>
						<End x="184.6005" y="-108.8639"/>
					</TrackLine>
					<TrackLine>
						<End x="184.7613" y="-109.0247"/>
					</TrackLine>
					<TrackLine>
						<End x="185.0113" y="-109.0247"/>
					</TrackLine>
					<TrackLine>
						<End x="185.2387" y="-109.0247"/>
					</TrackLine>
					<TrackLine>
						<End x="186.0658" y="-108.7684"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/SYS_LED"/>
				<Subwire width="0.15">
					<Start x="116.2" y="-107.7"/>
					<TrackLine>
						<End x="116.6668" y="-108.0081"/>
					</TrackLine>
					<TrackLine>
						<End x="116.6767" y="-108.0081"/>
					</TrackLine>
					<TrackLine>
						<End x="118.2859" y="-108.1943"/>
					</TrackLine>
					<TrackLine>
						<End x="119.4866" y="-108.1952"/>
					</TrackLine>
					<TrackLine>
						<End x="119.6258" y="-108.1953"/>
					</TrackLine>
					<TrackLine>
						<End x="166.4666" y="-108.1953"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7818" y="-108.1953"/>
					</TrackLine>
					<TrackLine>
						<End x="167.0135" y="-108.1257"/>
					</TrackLine>
					<TrackLine>
						<End x="167.0381" y="-108.1183"/>
					</TrackLine>
					<TrackLine>
						<End x="167.2111" y="-108.0345"/>
					</TrackLine>
					<TrackLine>
						<End x="167.2342" y="-108.0233"/>
					</TrackLine>
					<TrackLine>
						<End x="167.4514" y="-107.8152"/>
					</TrackLine>
					<TrackLine>
						<End x="167.6743" y="-107.5923"/>
					</TrackLine>
					<TrackLine>
						<End x="167.6879" y="-107.5706"/>
					</TrackLine>
					<TrackLine>
						<End x="167.7753" y="-107.4309"/>
					</TrackLine>
					<TrackLine>
						<End x="169.7212" y="-103.6805"/>
					</TrackLine>
					<TrackLine>
						<End x="169.897" y="-103.5047"/>
					</TrackLine>
					<TrackLine>
						<End x="170.1456" y="-103.5047"/>
					</TrackLine>
					<TrackLine>
						<End x="171.06" y="-103.5047"/>
					</TrackLine>
					<TrackLine>
						<End x="175.2782" y="-103.8865"/>
					</TrackLine>
					<TrackLine>
						<End x="177.1726" y="-104.0932"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="Net-(DD1-PB5)"/>
				<Subwire width="0.15">
					<Start x="116.783" y="-96.6042"/>
					<TrackLine>
						<End x="118.0366" y="-96.2467"/>
					</TrackLine>
					<TrackLine>
						<End x="118.0616" y="-96.241"/>
					</TrackLine>
					<TrackLine>
						<End x="118.2046" y="-96.2086"/>
					</TrackLine>
					<TrackLine>
						<End x="118.2296" y="-96.203"/>
					</TrackLine>
					<TrackLine>
						<End x="118.4269" y="-96.1959"/>
					</TrackLine>
					<TrackLine>
						<End x="118.4525" y="-96.195"/>
					</TrackLine>
					<TrackLine>
						<End x="118.7677" y="-96.195"/>
					</TrackLine>
					<TrackLine>
						<End x="166.6634" y="-96.195"/>
					</TrackLine>
					<TrackLine>
						<End x="166.6889" y="-96.1972"/>
					</TrackLine>
					<TrackLine>
						<End x="166.8209" y="-96.2086"/>
					</TrackLine>
					<TrackLine>
						<End x="166.8465" y="-96.2109"/>
					</TrackLine>
					<TrackLine>
						<End x="167.0106" y="-96.2635"/>
					</TrackLine>
					<TrackLine>
						<End x="167.035" y="-96.2714"/>
					</TrackLine>
					<TrackLine>
						<End x="167.058" y="-96.2825"/>
					</TrackLine>
					<TrackLine>
						<End x="167.1813" y="-96.3423"/>
					</TrackLine>
					<TrackLine>
						<End x="173.7178" y="-100.596"/>
					</TrackLine>
					<TrackLine>
						<End x="178.0035" y="-103.8445"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/IR_INTERM"/>
				<Subwire width="0.15">
					<Start x="200.2" y="-107.7"/>
					<TrackLine>
						<End x="199.768" y="-108.0924"/>
					</TrackLine>
					<TrackLine>
						<End x="199.7611" y="-108.0993"/>
					</TrackLine>
					<TrackLine>
						<End x="199.369" y="-108.358"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="Net-(Q3-B)"/>
				<Subwire width="0.15">
					<Start x="200.411" y="-96.484"/>
					<TrackLine>
						<End x="200.0288" y="-96.1018"/>
					</TrackLine>
					<TrackLine>
						<End x="199.9538" y="-96.1018"/>
					</TrackLine>
					<TrackLine>
						<End x="199.9227" y="-96.1018"/>
					</TrackLine>
					<TrackLine>
						<End x="198.8705" y="-95.7267"/>
					</TrackLine>
					<TrackLine>
						<End x="196.1781" y="-95.7267"/>
					</TrackLine>
					<TrackLine>
						<End x="195.9295" y="-95.7267"/>
					</TrackLine>
					<TrackLine>
						<End x="192.2249" y="-95.8466"/>
					</TrackLine>
					<TrackLine>
						<End x="191.7122" y="-96.1483"/>
					</TrackLine>
					<TrackLine>
						<End x="191.6924" y="-96.168"/>
					</TrackLine>
					<TrackLine>
						<End x="191.3" y="-96.6"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/GREEN_OUT"/>
				<Subwire width="0.5">
					<Start x="201.3" y="-98.516"/>
					<TrackLine>
						<End x="201.3" y="-98.7232"/>
					</TrackLine>
					<TrackLine>
						<End x="201.3" y="-98.9732"/>
					</TrackLine>
					<TrackLine>
						<End x="201.3" y="-100.15"/>
					</TrackLine>
					<TrackLine>
						<End x="201.3" y="-100.4"/>
					</TrackLine>
					<TrackLine>
						<End x="201.3" y="-100.95"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="Net-(Q4-B)"/>
				<Subwire width="0.15">
					<Start x="196.511" y="-96.484"/>
					<TrackLine>
						<End x="196.1288" y="-96.592"/>
					</TrackLine>
					<TrackLine>
						<End x="196.0538" y="-96.592"/>
					</TrackLine>
					<TrackLine>
						<End x="195.4759" y="-96.592"/>
					</TrackLine>
					<TrackLine>
						<End x="195.4009" y="-96.592"/>
					</TrackLine>
					<TrackLine>
						<End x="195" y="-96.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/WHITE_OUT"/>
				<Subwire width="0.5">
					<Start x="201.3" y="-103.45"/>
					<TrackLine>
						<End x="200.8" y="-103.45"/>
					</TrackLine>
					<TrackLine>
						<End x="198.2456" y="-101.3002"/>
					</TrackLine>
					<TrackLine>
						<End x="197.7916" y="-100.8462"/>
					</TrackLine>
					<TrackLine>
						<End x="197.6072" y="-99.0768"/>
					</TrackLine>
					<TrackLine>
						<End x="197.6072" y="-98.9732"/>
					</TrackLine>
					<TrackLine>
						<End x="197.6072" y="-98.7232"/>
					</TrackLine>
					<TrackLine>
						<End x="197.4" y="-98.516"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="Net-(Q5-D)"/>
				<Subwire width="0.15">
					<Start x="170.4785" y="-104.262"/>
					<TrackLine>
						<End x="170.8607" y="-104.6442"/>
					</TrackLine>
					<TrackLine>
						<End x="170.9357" y="-104.6442"/>
					</TrackLine>
					<TrackLine>
						<End x="170.9668" y="-104.6442"/>
					</TrackLine>
					<TrackLine>
						<End x="171.949" y="-105.5367"/>
					</TrackLine>
					<TrackLine>
						<End x="172.1248" y="-105.7125"/>
					</TrackLine>
					<TrackLine>
						<End x="172.4886" y="-106.2746"/>
					</TrackLine>
					<TrackLine>
						<End x="172.8749" y="-106.6625"/>
					</TrackLine>
					<TrackLine>
						<End x="173.3257" y="-107.2361"/>
					</TrackLine>
					<TrackLine>
						<End x="173.3326" y="-107.243"/>
					</TrackLine>
					<TrackLine>
						<End x="173.7" y="-107.7"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="Net-(Q6-B)"/>
				<Subwire width="0.15">
					<Start x="186.716" y="-96.511"/>
					<TrackLine>
						<End x="187.0982" y="-96.6358"/>
					</TrackLine>
					<TrackLine>
						<End x="187.1732" y="-96.6358"/>
					</TrackLine>
					<TrackLine>
						<End x="187.7241" y="-96.6358"/>
					</TrackLine>
					<TrackLine>
						<End x="187.7991" y="-96.6358"/>
					</TrackLine>
					<TrackLine>
						<End x="188.2" y="-96.7606"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/LEDGC"/>
				<Subwire width="0.5">
					<Start x="206.3" y="-100.95"/>
					<TrackLine>
						<End x="207.35" y="-101.4"/>
					</TrackLine>
					<TrackLine>
						<End x="207.6" y="-101.4"/>
					</TrackLine>
					<TrackLine>
						<End x="208.4991" y="-101.4"/>
					</TrackLine>
					<TrackLine>
						<End x="209" y="-101.4"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/LEDGC"/>
				<Subwire width="0.5">
					<Start x="209" y="-101.4"/>
					<TrackLine>
						<End x="208.802" y="-101.23"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/LEDWC"/>
				<Subwire width="0.3">
					<Start x="206.3" y="-103.45"/>
					<TrackLine>
						<End x="206.8" y="-103.45"/>
					</TrackLine>
					<TrackLine>
						<End x="208.4135" y="-102.2188"/>
					</TrackLine>
					<TrackLine>
						<End x="208.5046" y="-102.2"/>
					</TrackLine>
					<TrackLine>
						<End x="209.5449" y="-102.2"/>
					</TrackLine>
					<TrackLine>
						<End x="209.5865" y="-102.1812"/>
					</TrackLine>
					<TrackLine>
						<End x="210.0878" y="-101.8517"/>
					</TrackLine>
					<TrackLine>
						<End x="210.1076" y="-101.8319"/>
					</TrackLine>
					<TrackLine>
						<End x="210.5" y="-101.4"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="B.Cu"/>
				<NetRef name="/LEDWC"/>
				<Subwire width="0.5">
					<Start x="210.5" y="-101.4"/>
					<TrackLine>
						<End x="210.277" y="-101.214"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22" zipwireRef="zwire_0">
					<Start x="111.5397" y="-102.0451"/>
					<TrackLine>
						<End x="111.8473" y="-102.0454"/>
					</TrackLine>
					<TrackLine>
						<End x="111.8748" y="-102.0454"/>
					</TrackLine>
					<TrackLine>
						<End x="111.9292" y="-102.0536"/>
					</TrackLine>
					<TrackLine>
						<End x="111.9555" y="-102.0617"/>
					</TrackLine>
					<TrackLine>
						<End x="112.3016" y="-102.1678"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="F.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22" zipwireRef="zwire_0">
					<Start x="111.5393" y="-102.4151"/>
					<TrackLine>
						<End x="111.847" y="-102.4154"/>
					</TrackLine>
					<TrackLine>
						<End x="112.193" y="-102.5216"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/USB_D+"/>
				<Subwire fixed="on" width="0.22" zipwireRef="zwire_1">
					<Start x="113.1406" y="-102.3009"/>
					<TrackLine>
						<End x="113.3475" y="-102.3299"/>
					</TrackLine>
					<TrackLine>
						<End x="113.5211" y="-102.2803"/>
					</TrackLine>
					<TrackLine>
						<End x="113.5947" y="-102.2285"/>
					</TrackLine>
					<TrackLine>
						<End x="113.742" y="-102.0641"/>
					</TrackLine>
					<TrackLine>
						<End x="113.853" y="-101.757"/>
					</TrackLine>
					<TrackLine>
						<End x="114.1345" y="-99.9335"/>
					</TrackLine>
					<TrackLine>
						<End x="114.1359" y="-99.9241"/>
					</TrackLine>
					<TrackLine>
						<End x="114.1398" y="-99.9055"/>
					</TrackLine>
					<TrackLine>
						<End x="114.1422" y="-99.8963"/>
					</TrackLine>
					<TrackLine>
						<End x="114.3475" y="-99.1108"/>
					</TrackLine>
					<TrackLine>
						<End x="114.3478" y="-99.1097"/>
					</TrackLine>
					<TrackLine>
						<End x="114.6655" y="-97.9098"/>
					</TrackLine>
					<TrackLine>
						<End x="114.6733" y="-97.8802"/>
					</TrackLine>
					<TrackLine>
						<End x="114.6985" y="-97.8244"/>
					</TrackLine>
					<TrackLine>
						<End x="114.7155" y="-97.799"/>
					</TrackLine>
					<TrackLine>
						<End x="115.7989" y="-96.1769"/>
					</TrackLine>
					<TrackLine>
						<End x="115.809" y="-96.1618"/>
					</TrackLine>
					<TrackLine>
						<End x="115.8321" y="-96.1336"/>
					</TrackLine>
					<TrackLine>
						<End x="115.845" y="-96.1208"/>
					</TrackLine>
					<TrackLine>
						<End x="116.2583" y="-95.7075"/>
					</TrackLine>
					<TrackLine>
						<End x="116.3103" y="-95.6555"/>
					</TrackLine>
					<TrackLine>
						<End x="116.4463" y="-95.5991"/>
					</TrackLine>
					<TrackLine>
						<End x="116.5199" y="-95.5991"/>
					</TrackLine>
					<TrackLine>
						<End x="117.1223" y="-95.5991"/>
					</TrackLine>
					<TrackLine>
						<End x="117.1237" y="-95.5991"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7477" y="-95.79"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7552" y="-95.79"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7702" y="-95.7907"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7777" y="-95.7913"/>
					</TrackLine>
					<TrackLine>
						<End x="166.8181" y="-95.7947"/>
					</TrackLine>
					<TrackLine>
						<End x="166.8187" y="-95.7948"/>
					</TrackLine>
					<TrackLine>
						<End x="166.9277" y="-95.8043"/>
					</TrackLine>
					<TrackLine>
						<End x="166.9288" y="-95.8044"/>
					</TrackLine>
					<TrackLine>
						<End x="166.952" y="-95.8065"/>
					</TrackLine>
					<TrackLine>
						<End x="166.9606" y="-95.8074"/>
					</TrackLine>
					<TrackLine>
						<End x="173.4162" y="-96.5398"/>
					</TrackLine>
					<TrackLine>
						<End x="173.4786" y="-96.5469"/>
					</TrackLine>
					<TrackLine>
						<End x="173.5917" y="-96.6014"/>
					</TrackLine>
					<TrackLine>
						<End x="173.6361" y="-96.6458"/>
					</TrackLine>
					<TrackLine>
						<End x="174.0621" y="-97.0718"/>
					</TrackLine>
					<TrackLine>
						<End x="176.913" y="-99.2518"/>
					</TrackLine>
					<TrackLine>
						<End x="176.9197" y="-99.257"/>
					</TrackLine>
					<TrackLine>
						<End x="177.1195" y="-99.4171"/>
					</TrackLine>
					<TrackLine>
						<End x="177.1508" y="-99.4422"/>
					</TrackLine>
					<TrackLine>
						<End x="177.2011" y="-99.5045"/>
					</TrackLine>
					<TrackLine>
						<End x="177.219" y="-99.5403"/>
					</TrackLine>
					<TrackLine>
						<End x="177.3098" y="-99.7219"/>
					</TrackLine>
					<TrackLine>
						<End x="177.3282" y="-99.7588"/>
					</TrackLine>
					<TrackLine>
						<End x="177.348" y="-99.8388"/>
					</TrackLine>
					<TrackLine>
						<End x="177.3488" y="-99.88"/>
					</TrackLine>
					<TrackLine>
						<End x="177.3533" y="-100.102"/>
					</TrackLine>
				</Subwire>
			</Wire>
			<Wire>
				<LayerRef name="In1.Cu"/>
				<NetRef name="/USB_D-"/>
				<Subwire fixed="on" width="0.22" zipwireRef="zwire_1">
					<Start x="113.0892" y="-102.6673"/>
					<TrackLine>
						<End x="113.2961" y="-102.6963"/>
					</TrackLine>
					<TrackLine>
						<End x="113.3345" y="-102.7017"/>
					</TrackLine>
					<TrackLine>
						<End x="113.4119" y="-102.6963"/>
					</TrackLine>
					<TrackLine>
						<End x="113.4492" y="-102.6857"/>
					</TrackLine>
					<TrackLine>
						<End x="113.6228" y="-102.6361"/>
					</TrackLine>
					<TrackLine>
						<End x="113.6526" y="-102.6276"/>
					</TrackLine>
					<TrackLine>
						<End x="113.7086" y="-102.6008"/>
					</TrackLine>
					<TrackLine>
						<End x="113.734" y="-102.5829"/>
					</TrackLine>
					<TrackLine>
						<End x="113.8076" y="-102.5311"/>
					</TrackLine>
					<TrackLine>
						<End x="113.8248" y="-102.519"/>
					</TrackLine>
					<TrackLine>
						<End x="113.8562" y="-102.491"/>
					</TrackLine>
					<TrackLine>
						<End x="113.8703" y="-102.4754"/>
					</TrackLine>
					<TrackLine>
						<End x="114.0176" y="-102.311"/>
					</TrackLine>
					<TrackLine>
						<End x="114.0414" y="-102.2845"/>
					</TrackLine>
					<TrackLine>
						<End x="114.0779" y="-102.2233"/>
					</TrackLine>
					<TrackLine>
						<End x="114.09" y="-102.1898"/>
					</TrackLine>
					<TrackLine>
						<End x="114.201" y="-101.8827"/>
					</TrackLine>
					<TrackLine>
						<End x="114.2071" y="-101.8658"/>
					</TrackLine>
					<TrackLine>
						<End x="114.216" y="-101.8311"/>
					</TrackLine>
					<TrackLine>
						<End x="114.2187" y="-101.8134"/>
					</TrackLine>
					<TrackLine>
						<End x="114.5002" y="-99.9899"/>
					</TrackLine>
					<TrackLine>
						<End x="114.7055" y="-99.2044"/>
					</TrackLine>
					<TrackLine>
						<End x="115.0232" y="-98.0045"/>
					</TrackLine>
					<TrackLine>
						<End x="116.1066" y="-96.3824"/>
					</TrackLine>
					<TrackLine>
						<End x="116.5199" y="-95.9691"/>
					</TrackLine>
					<TrackLine>
						<End x="117.1223" y="-95.9691"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7463" y="-96.16"/>
					</TrackLine>
					<TrackLine>
						<End x="166.7867" y="-96.1634"/>
					</TrackLine>
					<TrackLine>
						<End x="166.8957" y="-96.1729"/>
					</TrackLine>
					<TrackLine>
						<End x="166.9189" y="-96.175"/>
					</TrackLine>
					<TrackLine>
						<End x="173.3745" y="-96.9074"/>
					</TrackLine>
					<TrackLine>
						<End x="173.8005" y="-97.3334"/>
					</TrackLine>
					<TrackLine>
						<End x="173.8092" y="-97.3421"/>
					</TrackLine>
					<TrackLine>
						<End x="173.8276" y="-97.3582"/>
					</TrackLine>
					<TrackLine>
						<End x="173.8374" y="-97.3657"/>
					</TrackLine>
					<TrackLine>
						<End x="176.6883" y="-99.5457"/>
					</TrackLine>
					<TrackLine>
						<End x="176.8881" y="-99.7058"/>
					</TrackLine>
					<TrackLine>
						<End x="176.9789" y="-99.8874"/>
					</TrackLine>
					<TrackLine>
						<End x="176.9833" y="-100.1094"/>
					</TrackLine>
				</Subwire>
			</Wire>
		</Wires>
	</Connectivity>

	<Settings version="1.3">
		<Autoroute/>
		<Autoproc/>
		<Placement>
			<PlacementArea>
				<Dot x="0" y="0"/>
				<Dot x="0" y="0"/>
			</PlacementArea>
		</Placement>
		<Labels rotateWithComp="on"/>
	</Settings>

	<DisplayControl version="1.3">
		<View scale="100.555" scrollHorz="183.302" scrollVert="-106.1825"/>
		<ActiveLayer name="B.Cu"/>
		<Units preference="Metric"/>
		<Colors hilightRate="42" darkRate="0"
		 background="#030b10" board="#d4d4d4" netLines="#af7d3a"
		 keepoutPlaceBoth="#f79646" keepoutWireAll="#ff0000" keepoutPlaceTop="#259500" keepoutPlaceBot="#00aaaa"
		 compsBound="#ffffff" compsName="#ffffff" pinsName="#bad3ef" pinsNet="#bad3ef"
		 clrThroughPads="#c0c0c0" clrThroughVias="#949494" clrBurriedVias="#949494" clrBlindVias="#949494" clrFixedVias="#7070b8"
		 drcViolation="#ffffff" narrow="#ff00ff" trimmed="#038bef"/>
		<Show
		 showBoardOutline="on"
		 showWires="on"
		 showCoppers="on"
		 showTexts="on"
		 throughVia="on" burriedVia="on" blindVia="on" fixedVia="on"
		 showVias="on"
		 showSignalLayers="on" showTopMechLayers="on" showBotMechLayers="on"
		 showTopMechDetails="on" showBotMechDetails="on"
		 showMetalPads="on" showTopMechPads="on" showBotMechPads="on"
		 showNetLines="on" showMountingHoles="on"
		 showComponents="on" showCompTop="on" showCompBot="on" showCompsDes="on" showPinsName="on" showPinsNet="on"
		 showLabelRefDes="on" showLabelPartName="on" showLabelOther="on"
		 showViolations="on" showTrimmed="on" showDRCViolations="on"
		 showKeepouts="on" showRouteKeepouts="on"
		 showSerpentArea="on"/>
		<Grid gridColor="#f2f2f2" gridKind="Dots" saveProportion="on">
			<GridSpace x="1000" y="1000"/>
		</Grid>
		<LayersVisualOptions>
			<LayerOptions>
				<LayerRef name="board"/>
				<Colors details="#ffffff" pads="#ffffff" fix="#ffffff"/>
				<Show visible="on" details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="F.Cu"/>
				<Colors details="#a52310" pads="#841c0c" fix="#631509"/>
				<Show visible="on" details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="F.Cu_outline"/>
				<Colors details="#259500" pads="#259500" fix="#165900"/>
				<Show visible="on" details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="In1.Cu"/>
				<Colors details="#075f78" pads="#054c60" fix="#043948"/>
				<Show visible="on" details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="In2.Cu"/>
				<Colors details="#ce7946" pads="#a46038" fix="#7b482a"/>
				<Show visible="on" details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="B.Cu"/>
				<Colors details="#0f7140" pads="#0c5a33" fix="#094326"/>
				<Show visible="on" details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="B.Cu_outline"/>
				<Colors details="#00aaaa" pads="#00aaaa" fix="#006666"/>
				<Show visible="on" details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="Mask Top"/>
				<Colors details="#b15738" pads="#8d452c" fix="#b15738"/>
				<Show details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="Paste Top"/>
				<Colors details="#af583a" pads="#8c462e" fix="#af583a"/>
				<Show details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="Mask Bottom"/>
				<Colors details="#1f4b2d" pads="#183c24" fix="#1f4b2d"/>
				<Show details="on" pads="on"/>
			</LayerOptions>
			<LayerOptions>
				<LayerRef name="Paste Bottom"/>
				<Colors details="#1f4b2d" pads="#183c24" fix="#1f4b2d"/>
				<Show details="on" pads="on"/>
			</LayerOptions>
		</LayersVisualOptions>
		<ColorNets enabled="on" colorizeWire="on" colorizePad="on" colorizeCopper="on" colorizeVia="on" colorizeNetline="on"/>
		<FilterNetlines/>
	</DisplayControl>

	<DialogSettings version="1.2">
		<DRCSettings logFileName="drc.log" messageLimit="1000"
		 tolerance="0.001"
		 checkClearances="on"
		 textToCopper="on" textToKeepout="on" textToWire="on" textToVia="on" textToPad="on" textToBoard="on"
		 copperToCopper="on" copperToKeepout="on" copperToWire="on" copperToVia="on" copperToPad="on" copperToBoard="on"
		 wireToKeepout="on" viaToKeepout="on" padToKeepout="on"
		 wireToWire="on" wireToVia="on" wireToPad="on" wireToBoard="on"
		 viaToVia="on" viaToPad="on" viaToBoard="on"
		 padToPad="on" padToBoard="on"/>
		<BOMSettings outFile="" count="on" partName="on" footprint="on" refDes="on"/>
		<MessageFilter
		 W5003="on"
		 W5012="on"
		 W5013="on"
		 W5014="on"
		 W5015="on"
		 W5016="on"
		 W5017="on"
		 W5018="on"
		 W5023="on"
		 W5024="on"
		 W5026="on"
		 W5034="on"
		 W5036="on"
		 W5037="on"/>
	</DialogSettings>
</TopoR_PCB_File>