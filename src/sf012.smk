<?xml version="1.0" ?>
<SimumatikProject Ambient_light_color="[128, 128, 128, 255]" Ambient_light_enabled="True" Author="Simumatik" Name="Project" Version="0.10.4">
	 
	<Description>
		 
<![CDATA[V3JpdGUgeW91ciBwcm9qZWN0IGRlc2NyaXB0aW9uIGhlcmUuLi4=]]>	</Description>
	<Configuration/>
	<Objects>
		<Object Class="floor">
			<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
			<Parameters>
				<Parameter Name="Class" Type="Property" Value="Floor"/>
				<Parameter Name="Name" Type="Property" Value="Main Floor"/>
				<Parameter Name="Material" Type="Property" Value="Floor"/>
				<Parameter Name="Grid" Type="Property" Value="Show"/>
				<Parameter Name="Length" Type="Property" Value="10"/>
				<Parameter Name="Interval" Type="Property" Value="1"/>
				<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
				<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
				<Parameter Name="Texture" Type="Property" Value=""/>
				<Parameter Name="Transparent" Type="Property" Value="False"/>
				<Parameter Name="Friction" Type="Property" Value="Medium"/>
			</Parameters>
			<Children>
				<Object Class="pointlight">
					<Transform Position="[0.0, 0.0, 4.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Point light"/>
						<Parameter Name="Name" Type="Property" Value="Light"/>
						<Parameter Name="Color" Type="Property" Value="[255, 255, 255, 255]"/>
						<Parameter Name="Attenuation" Type="Property" Value="0.01"/>
						<Parameter Name="Enable shadows" Type="Property" Value="False"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="group">
					<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="Control"/>
					</Parameters>
					<Children>
						<Object Class="elcabinet">
							<Transform Position="[4.0, 4.0, 0.5]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Electric Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="Cabinet"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
								<Parameter Name="Scale" Type="Property" Value="[1.0, 0.5, 1.0]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Visible" Type="Property" Value="True"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 0.5, 1.0]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[1.0, 0.5, 1.0]"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
							</Parameters>
							<Children>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="MotorContactor1"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Conv1Fwd.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="acsource">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Source"/>
										<Parameter Name="Name" Type="Property" Value="Source"/>
										<Parameter Name="State" Type="Property" Value="On"/>
										<Parameter Name="Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Output" Type="Output" Value="[0.0, 0.0]"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="MotorContactor2"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Conv2Fwd.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="MotorContactor3"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Conv3Fwd.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="plc">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="PLC"/>
										<Parameter Name="Name" Type="Property" Value="plc"/>
										<Parameter Name="State" Type="Property" Value="Offline"/>
										<Parameter Name="Disabled" Type="Property" Value="False"/>
										<Parameter Name="Server" Type="Property" Value="opc.tcp://localhost:4840"/>
										<Parameter Name="Device" Type="Property" Value=""/>
										<Parameter Name="Filter" Type="Property" Value=""/>
										<Parameter Name="Update Rate" Type="Property" Value="50"/>
									</Parameters>
									<Children>
										<Object Class="readtaggroup">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Output variables group."/>
												<Parameter Name="Name" Type="Property" Value="Outputs"/>
												<Parameter Name="Type" Type="Property" Value="Read"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
											</Parameters>
											<Children>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl1Up"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl1Down"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl2Down"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl2Up"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl3Down"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl3Up"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv1Fwd"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Fwd"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv3Fwd"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
										<Object Class="writetaggroup">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Input variables group"/>
												<Parameter Name="Name" Type="Property" Value="Inputs"/>
												<Parameter Name="Type" Type="Property" Value="Write"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
											</Parameters>
											<Children>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv1Sensor1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv1S1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Sensor1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv2S1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Sensor3"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv2S3.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv3Sensor1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv3S1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Sensor2"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv2S2.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl1SensorUp"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Cylinder1.Upper limit sensor"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl2SensorUp"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Cylinder2.Upper limit sensor"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl3SensorUp"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Cylinder3.Upper limit sensor"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl1SensorDown"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Cylinder1.Lower limit sensor"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl2SensorDown"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Cylinder2.Lower limit sensor"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Cyl3SensorDown"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Cylinder3.Lower limit sensor"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
									</Children>
								</Object>
							</Children>
						</Object>
						<Object Class="pneucabinet">
							<Transform Position="[4.0, 4.0, 0.5]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Pneumatic Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="Pneumatics"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
								<Parameter Name="Scale" Type="Property" Value="[1.0, 0.5, 1.0]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Visible" Type="Property" Value="True"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 0.5, 1.0]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[1.0, 0.5, 1.0]"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
							</Parameters>
							<Children>
								<Object Class="aircompressor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Air Compressor"/>
										<Parameter Name="Name" Type="Property" Value="Compressor"/>
										<Parameter Name="State" Type="Property" Value="On"/>
										<Parameter Name="Pressure" Type="Property" Value="6.0"/>
										<Parameter Name="Output" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="valve_5_3_way">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Directional 5/3 way valve"/>
										<Parameter Name="Name" Type="Property" Value="Valve1"/>
										<Parameter Name="State" Type="Property" Value="Closed"/>
										<Parameter Name="Input Left" Type="Input" Value="Cyl1Up.Value"/>
										<Parameter Name="Input Right" Type="Input" Value="Cyl1Down.Value"/>
										<Parameter Name="In Pressure" Type="Input" Value="Compressor.Output"/>
										<Parameter Name="Out Left Pressure" Type="Output" Value="0.0"/>
										<Parameter Name="Out Right Pressure" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="valve_5_3_way">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Directional 5/3 way valve"/>
										<Parameter Name="Name" Type="Property" Value="Valve2"/>
										<Parameter Name="State" Type="Property" Value="Closed"/>
										<Parameter Name="Input Left" Type="Input" Value="Cyl2Up.Value"/>
										<Parameter Name="Input Right" Type="Input" Value="Cyl2Down.Value"/>
										<Parameter Name="In Pressure" Type="Input" Value="Compressor.Output"/>
										<Parameter Name="Out Left Pressure" Type="Output" Value="0.0"/>
										<Parameter Name="Out Right Pressure" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="valve_5_3_way">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Directional 5/3 way valve"/>
										<Parameter Name="Name" Type="Property" Value="Valve3"/>
										<Parameter Name="State" Type="Property" Value="Closed"/>
										<Parameter Name="Input Left" Type="Input" Value="Cyl3Up.Value"/>
										<Parameter Name="Input Right" Type="Input" Value="Cyl3Down.Value"/>
										<Parameter Name="In Pressure" Type="Input" Value="Compressor.Output"/>
										<Parameter Name="Out Left Pressure" Type="Output" Value="0.0"/>
										<Parameter Name="Out Right Pressure" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
					</Children>
				</Object>
				<Object Class="group">
					<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="Group1"/>
					</Parameters>
					<Children>
						<Object Class="conveyor">
							<Transform Position="[0.0, 1.5, 0.55]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Conveyor"/>
								<Parameter Name="Name" Type="Property" Value="Conveyor1"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
								<Parameter Name="Type" Type="Property" Value="Chains"/>
								<Parameter Name="Sides" Type="Property" Value="True"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="High"/>
								<Parameter Name="Length" Type="Property" Value="2.0"/>
								<Parameter Name="Width" Type="Property" Value="1.2"/>
								<Parameter Name="Height" Type="Property" Value="0.1"/>
								<Parameter Name="Feet height" Type="Property" Value="0.0"/>
								<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
								<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
								<Parameter Name="Conv. Motor Input" Type="Input" Value="Motor1.Speed"/>
								<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children>
								<Object Class="sensor">
									<Transform Position="[-0.15662, -0.769, 0.1]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="Conv1S1"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Proximity"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.5"/>
										<Parameter Name="Filter time" Type="Property" Value="0.0"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="acmotor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="AC Motor"/>
								<Parameter Name="Name" Type="Property" Value="Motor1"/>
								<Parameter Name="State" Type="Property" Value="Stop"/>
								<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
								<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
								<Parameter Name="Poles" Type="Property" Value="4"/>
								<Parameter Name="Input" Type="Input" Value="MotorContactor1.Out Voltage"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="productinput">
							<Transform Position="[-0.5, 1.5, 0.7692]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Product input"/>
								<Parameter Name="Name" Type="Property" Value="PalletInput"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Drop mode" Type="Property" Value="Random"/>
								<Parameter Name="Color" Type="Property" Value="[255, 0, 0, 255]"/>
								<Parameter Name="Drop signal" Type="Input" Value="None"/>
							</Parameters>
							<Children>
								<Object Class="productmodelpattern">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product 3D model Pattern"/>
										<Parameter Name="Name" Type="Property" Value="productmodelpattern"/>
										<Parameter Name="File" Type="Property" Value="pallet.egg"/>
										<Parameter Name="Scale" Type="Property" Value="[1.0, 1.0, 1.0]"/>
										<Parameter Name="Painting mode" Type="Property" Value="Use texture"/>
										<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
										<Parameter Name="Texture" Type="Property" Value="wood.jpg"/>
										<Parameter Name="Visible" Type="Property" Value="True"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
										<Parameter Name="Physics shape" Type="Property" Value="Box"/>
										<Parameter Name="Physics dimensions" Type="Property" Value="[1.2, 0.8, 0.14]"/>
										<Parameter Name="Physics visible" Type="Property" Value="False"/>
										<Parameter Name="Material" Type="Property" Value="Wood"/>
										<Parameter Name="Mass" Type="Property" Value="1.0"/>
										<Parameter Name="Friction" Type="Property" Value="Medium"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="pneutranslationaljoint">
							<Transform Position="[1.55, 1.5, 0.45]" Quaternion="[-0.70711, 0.0, 0.70711, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Pneumatic Translational Joint"/>
								<Parameter Name="Name" Type="Property" Value="Cylinder1"/>
								<Parameter Name="Visible" Type="Property" Value="False"/>
								<Parameter Name="Type" Type="Property" Value="Translational"/>
								<Parameter Name="Limits" Type="Property" Value="[0.0, 0.1]"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
								<Parameter Name="Actual Position" Type="Output" Value="0.0"/>
								<Parameter Name="Upper limit sensor" Type="Output" Value="0"/>
								<Parameter Name="Lower limit sensor" Type="Output" Value="0"/>
								<Parameter Name="Speed Rel." Type="Property" Value="0.1"/>
								<Parameter Name="Expand Input" Type="Input" Value="Valve1.Out Left Pressure"/>
								<Parameter Name="Retract Input" Type="Input" Value="Valve1.Out Right Pressure"/>
							</Parameters>
							<Children>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[0.70711, 0.0, 0.70711, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Transfer1"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Chains"/>
										<Parameter Name="Sides" Type="Property" Value="False"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.0"/>
										<Parameter Name="Width" Type="Property" Value="1.2"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="Motor1.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
					</Children>
				</Object>
				<Object Class="group">
					<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="Group2"/>
					</Parameters>
					<Children>
						<Object Class="conveyor">
							<Transform Position="[1.61742, 0.0, 0.5]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Conveyor"/>
								<Parameter Name="Name" Type="Property" Value="Conv2"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
								<Parameter Name="Type" Type="Property" Value="Rollers"/>
								<Parameter Name="Sides" Type="Property" Value="True"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="High"/>
								<Parameter Name="Length" Type="Property" Value="4.5"/>
								<Parameter Name="Width" Type="Property" Value="0.8"/>
								<Parameter Name="Height" Type="Property" Value="0.1"/>
								<Parameter Name="Feet height" Type="Property" Value="0.0"/>
								<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
								<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
								<Parameter Name="Conv. Motor Input" Type="Input" Value="Motor2.Speed"/>
								<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children>
								<Object Class="sensor">
									<Transform Position="[-0.96828, 0.5, 0.15]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="Conv2S1"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Proximity"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.2"/>
										<Parameter Name="Filter time" Type="Property" Value="0.0"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="stopper">
									<Transform Position="[0.0, 0.425, 0.1]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Stopper"/>
										<Parameter Name="Name" Type="Property" Value="stopper"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Length" Type="Property" Value="4.5"/>
										<Parameter Name="Height" Type="Property" Value="0.05"/>
										<Parameter Name="Width" Type="Property" Value="0.02"/>
										<Parameter Name="Friction" Type="Property" Value="Low"/>
										<Parameter Name="Color" Type="Property" Value="[0, 180, 0, 255]"/>
										<Parameter Name="Side angle" Type="Property" Value="0.0"/>
										<Parameter Name="Side length" Type="Property" Value="0.0"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[0.60798, 0.5, 0.15]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="Conv2S2"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Proximity"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.2"/>
										<Parameter Name="Filter time" Type="Property" Value="0.0"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[2.01495, 0.5, 0.15]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="Conv2S3"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Proximity"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.2"/>
										<Parameter Name="Filter time" Type="Property" Value="0.0"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="acmotor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="AC Motor"/>
								<Parameter Name="Name" Type="Property" Value="Motor2"/>
								<Parameter Name="State" Type="Property" Value="Stop"/>
								<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
								<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
								<Parameter Name="Poles" Type="Property" Value="4"/>
								<Parameter Name="Input" Type="Input" Value="MotorContactor2.Out Voltage"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="pneutranslationaljoint">
							<Transform Position="[1.6, -0.65, 0.45]" Quaternion="[-0.70711, 0.0, 0.70711, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Pneumatic Translational Joint"/>
								<Parameter Name="Name" Type="Property" Value="Cylinder2"/>
								<Parameter Name="Visible" Type="Property" Value="False"/>
								<Parameter Name="Type" Type="Property" Value="Translational"/>
								<Parameter Name="Limits" Type="Property" Value="[0.0, 0.1]"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
								<Parameter Name="Actual Position" Type="Output" Value="0.0"/>
								<Parameter Name="Upper limit sensor" Type="Output" Value="0"/>
								<Parameter Name="Lower limit sensor" Type="Output" Value="0"/>
								<Parameter Name="Speed Rel." Type="Property" Value="0.1"/>
								<Parameter Name="Expand Input" Type="Input" Value="Valve2.Out Left Pressure"/>
								<Parameter Name="Retract Input" Type="Input" Value="Valve2.Out Right Pressure"/>
							</Parameters>
							<Children>
								<Object Class="stopper">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[0.70711, 0.0, 0.70711, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Stopper"/>
										<Parameter Name="Name" Type="Property" Value="stopper1"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Length" Type="Property" Value="0.5"/>
										<Parameter Name="Height" Type="Property" Value="0.05"/>
										<Parameter Name="Width" Type="Property" Value="0.02"/>
										<Parameter Name="Friction" Type="Property" Value="Low"/>
										<Parameter Name="Color" Type="Property" Value="[0, 180, 0, 255]"/>
										<Parameter Name="Side angle" Type="Property" Value="0.0"/>
										<Parameter Name="Side length" Type="Property" Value="0.0"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
					</Children>
				</Object>
				<Object Class="group">
					<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="Group3"/>
					</Parameters>
					<Children>
						<Object Class="conveyor">
							<Transform Position="[0.0, -1.5, 0.55]" Quaternion="[0.0, 0.0, 0.0, 1.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Conveyor"/>
								<Parameter Name="Name" Type="Property" Value="Conveyor3"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
								<Parameter Name="Type" Type="Property" Value="Chains"/>
								<Parameter Name="Sides" Type="Property" Value="True"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="High"/>
								<Parameter Name="Length" Type="Property" Value="2.0"/>
								<Parameter Name="Width" Type="Property" Value="1.2"/>
								<Parameter Name="Height" Type="Property" Value="0.1"/>
								<Parameter Name="Feet height" Type="Property" Value="0.0"/>
								<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
								<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
								<Parameter Name="Conv. Motor Input" Type="Input" Value="Motor3.Speed"/>
								<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children>
								<Object Class="sensor">
									<Transform Position="[0.5, -0.769, 0.1]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="Conv3S1"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Proximity"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.5"/>
										<Parameter Name="Filter time" Type="Property" Value="0.0"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="acmotor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="AC Motor"/>
								<Parameter Name="Name" Type="Property" Value="Motor3"/>
								<Parameter Name="State" Type="Property" Value="Stop"/>
								<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
								<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
								<Parameter Name="Poles" Type="Property" Value="4"/>
								<Parameter Name="Input" Type="Input" Value="MotorContactor3.Out Voltage"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="pneutranslationaljoint">
							<Transform Position="[1.55, -1.5, 0.45]" Quaternion="[0.0, 0.70711, -0.0, 0.70711]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Pneumatic Translational Joint"/>
								<Parameter Name="Name" Type="Property" Value="Cylinder3"/>
								<Parameter Name="Visible" Type="Property" Value="False"/>
								<Parameter Name="Type" Type="Property" Value="Translational"/>
								<Parameter Name="Limits" Type="Property" Value="[0.0, 0.1]"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
								<Parameter Name="Actual Position" Type="Output" Value="0.0"/>
								<Parameter Name="Upper limit sensor" Type="Output" Value="0"/>
								<Parameter Name="Lower limit sensor" Type="Output" Value="0"/>
								<Parameter Name="Speed Rel." Type="Property" Value="0.1"/>
								<Parameter Name="Expand Input" Type="Input" Value="Valve3.Out Left Pressure"/>
								<Parameter Name="Retract Input" Type="Input" Value="Valve3.Out Right Pressure"/>
							</Parameters>
							<Children>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[0.70711, 0.0, 0.70711, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Transfer2"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Chains"/>
										<Parameter Name="Sides" Type="Property" Value="False"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.0"/>
										<Parameter Name="Width" Type="Property" Value="1.2"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="Motor3.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
					</Children>
				</Object>
			</Children>
		</Object>
		<Object Class="productholder">
			<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
			<Parameters>
				<Parameter Name="Class" Type="Property" Value="Product Holder"/>
				<Parameter Name="Name" Type="Property" Value="Products"/>
			</Parameters>
			<Children/>
		</Object>
	</Objects>
	<Resources/>
</SimumatikProject>
