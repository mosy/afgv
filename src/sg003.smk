<?xml version="1.0" ?>
<SimumatikProject Ambient_light_color="[128, 128, 128, 255]" Ambient_light_enabled="True" Author="Simumatik" Name="TurningDoubleConveyor" Version="1.0.6">
	 
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
				<Object Class="group">
					<Transform Position="[0.0, 0.0, 0.2]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="System"/>
					</Parameters>
					<Children>
						<Object Class="group">
							<Transform Position="[2.3, 0.0, 1.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="Conv3Group"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Conv3Mot1"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="Conv3MC1.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Conveyor3"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Belt"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.5"/>
										<Parameter Name="Width" Type="Property" Value="0.5"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.00015"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="Conv3Mot1.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[-0.75, -0.4, 0.1]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="Conv3Sens1"/>
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
										<Object Class="sensor">
											<Transform Position="[0.6, -0.4, 0.1]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="Conv3Sens2"/>
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
								<Object Class="productoutput">
									<Transform Position="[0.6, -0.0, 0.3]" Quaternion="[0.70711, 0.0, 0.70711, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product output"/>
										<Parameter Name="Name" Type="Property" Value="object1"/>
										<Parameter Name="Type" Type="Property" Value="Picker"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Picked object" Type="Property" Value=""/>
										<Parameter Name="Length" Type="Property" Value="0.5"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Erase mode" Type="Property" Value="Min time"/>
										<Parameter Name="Erase time" Type="Property" Value="[2.0, 2.0]"/>
										<Parameter Name="Erase signal" Type="Input" Value="None"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="group">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="Conv1Group"/>
							</Parameters>
							<Children>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Conveyor1"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Belt"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.5"/>
										<Parameter Name="Width" Type="Property" Value="0.5"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.00015"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="Conv1Mot1.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[0.7, -0.4, 0.1]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="Conv1Sens1"/>
												<Parameter Name="State" Type="Property" Value="Detecting"/>
												<Parameter Name="Type" Type="Property" Value="Proximity"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Length" Type="Property" Value="0.5"/>
												<Parameter Name="Filter time" Type="Property" Value="0.0"/>
												<Parameter Name="Hide range" Type="Property" Value="False"/>
												<Parameter Name="Signal" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="sensor">
											<Transform Position="[-0.375, -0.4, 0.1]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="Conv1Sens0"/>
												<Parameter Name="State" Type="Property" Value="Detecting"/>
												<Parameter Name="Type" Type="Property" Value="Proximity"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Length" Type="Property" Value="0.5"/>
												<Parameter Name="Filter time" Type="Property" Value="0.0"/>
												<Parameter Name="Hide range" Type="Property" Value="False"/>
												<Parameter Name="Signal" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Conv1Mot1"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="Conv1MC1.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="productinput">
									<Transform Position="[-0.5, -0.0, 0.15]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product input"/>
										<Parameter Name="Name" Type="Property" Value="BoxIn"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
										<Parameter Name="Drop mode" Type="Property" Value="Random"/>
										<Parameter Name="Color" Type="Property" Value="[255, 255, 255, 255]"/>
										<Parameter Name="Drop signal" Type="Input" Value="xDropBox.Value"/>
									</Parameters>
									<Children>
										<Object Class="productcubepattern">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Product Cube Pattern"/>
												<Parameter Name="Name" Type="Property" Value="Box"/>
												<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
												<Parameter Name="Scale" Type="Property" Value="[0.25, 0.4, 0.15]"/>
												<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
												<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
												<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
												<Parameter Name="Visible" Type="Property" Value="True"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
												<Parameter Name="Physics shape" Type="Property" Value="Box"/>
												<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
												<Parameter Name="Physics visible" Type="Property" Value="False"/>
												<Parameter Name="Material" Type="Property" Value="Paper"/>
												<Parameter Name="Mass" Type="Property" Value="1.0"/>
												<Parameter Name="Friction" Type="Property" Value="Medium"/>
												<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
							</Children>
						</Object>
						<Object Class="group">
							<Transform Position="[1.15, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="Conv2Group"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Conv2Mot1"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="Conv2MC1.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Conv2Mot2"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="None"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="pneutranslationaljoint">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[-0.70711, 0.0, 0.70711, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Pneumatic Translational Joint"/>
										<Parameter Name="Name" Type="Property" Value="pneutranslationaljoint"/>
										<Parameter Name="Visible" Type="Property" Value="True"/>
										<Parameter Name="Type" Type="Property" Value="Translational"/>
										<Parameter Name="Limits" Type="Property" Value="[0.0, 1.0]"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
										<Parameter Name="Actual Position" Type="Output" Value="0.00099"/>
										<Parameter Name="Upper limit sensor" Type="Output" Value="0"/>
										<Parameter Name="Lower limit sensor" Type="Output" Value="1"/>
										<Parameter Name="Speed Rel." Type="Property" Value="0.05"/>
										<Parameter Name="Expand Input" Type="Input" Value="valve_5_3_way.Out Left Pressure"/>
										<Parameter Name="Retract Input" Type="Input" Value="valve_5_3_way.Out Right Pressure"/>
									</Parameters>
									<Children>
										<Object Class="conveyor">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[0.70711, 0.0, 0.70711, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Conveyor"/>
												<Parameter Name="Name" Type="Property" Value="Conveyor2"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Type" Type="Property" Value="Belt"/>
												<Parameter Name="Sides" Type="Property" Value="True"/>
												<Parameter Name="Mass" Type="Property" Value="0.0"/>
												<Parameter Name="Friction" Type="Property" Value="High"/>
												<Parameter Name="Length" Type="Property" Value="0.75"/>
												<Parameter Name="Width" Type="Property" Value="0.5"/>
												<Parameter Name="Height" Type="Property" Value="0.1"/>
												<Parameter Name="Feet height" Type="Property" Value="0.0"/>
												<Parameter Name="Color" Type="Property" Value="[255, 0, 0, 255]"/>
												<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.00015"/>
												<Parameter Name="Conv. Motor Input" Type="Input" Value="Conv2Mot1.Speed"/>
												<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
											</Parameters>
											<Children>
												<Object Class="sensor">
													<Transform Position="[0.28, -0.4, 0.1]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Sensor"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Sens2"/>
														<Parameter Name="State" Type="Property" Value="Detecting"/>
														<Parameter Name="Type" Type="Property" Value="Proximity"/>
														<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
														<Parameter Name="Length" Type="Property" Value="0.5"/>
														<Parameter Name="Filter time" Type="Property" Value="0.0"/>
														<Parameter Name="Hide range" Type="Property" Value="False"/>
														<Parameter Name="Signal" Type="Output" Value="1"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="sensor">
													<Transform Position="[-0.1, -0.4, 0.1]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Sensor"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Sens1"/>
														<Parameter Name="State" Type="Property" Value="Detecting"/>
														<Parameter Name="Type" Type="Property" Value="Proximity"/>
														<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
														<Parameter Name="Length" Type="Property" Value="0.5"/>
														<Parameter Name="Filter time" Type="Property" Value="0.0"/>
														<Parameter Name="Hide range" Type="Property" Value="False"/>
														<Parameter Name="Signal" Type="Output" Value="1"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
									</Children>
								</Object>
							</Children>
						</Object>
					</Children>
				</Object>
				<Object Class="group">
					<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="Control"/>
					</Parameters>
					<Children>
						<Object Class="elcabinet">
							<Transform Position="[0.0, 1.0, 0.25]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Electric Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="Main Cabinet"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
								<Parameter Name="Scale" Type="Property" Value="[1.0, 0.5, 2.0]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Visible" Type="Property" Value="True"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 0.5, 2.0]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[1.0, 0.5, 2.0]"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
							</Parameters>
							<Children>
								<Object Class="panel">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="HMI Panel"/>
										<Parameter Name="Name" Type="Property" Value="Main Panel"/>
										<Parameter Name="Width" Type="Property" Value="200"/>
										<Parameter Name="Height" Type="Property" Value="180"/>
										<Parameter Name="Color" Type="Property" Value="[192, 192, 192, 255]"/>
									</Parameters>
									<Children>
										<Object Class="button">
											<Transform Position="[0.02, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="Start"/>
												<Parameter Name="Label" Type="Property" Value="xStart"/>
												<Parameter Name="Color" Type="Property" Value="[255, 128, 0, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="button">
											<Transform Position="[0.1, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="Reset"/>
												<Parameter Name="Label" Type="Property" Value="Reset"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="plc">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="CoDeSys PLC via CoDeSys OPC Server"/>
										<Parameter Name="Name" Type="Property" Value="PLC"/>
										<Parameter Name="State" Type="Property" Value="Online"/>
										<Parameter Name="Disabled" Type="Property" Value="False"/>
										<Parameter Name="Server" Type="Property" Value="opc.tcp://localhost:4840"/>
										<Parameter Name="Device" Type="Property" Value=""/>
										<Parameter Name="Filter" Type="Property" Value=""/>
										<Parameter Name="Update Rate" Type="Property" Value="50"/>
									</Parameters>
									<Children>
										<Object Class="writetaggroup">
											<Transform Position="[1.0, 1.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Tag Group"/>
												<Parameter Name="Name" Type="Property" Value="Inputs"/>
												<Parameter Name="Type" Type="Property" Value="Write"/>
												<Parameter Name="State" Type="Property" Value="Online"/>
											</Parameters>
											<Children>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Sensor1"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Conv1Sens1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Sensor6"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Conv3Sens1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Sensor2"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Conv2Sens1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Sensor3"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Conv2Sens2.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Sensor4"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="pneutranslationaljoint.Lower limit sensor"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Sensor5"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="pneutranslationaljoint.Upper limit sensor"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="SensorDrop"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Conv1Sens0.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Sensor7"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Conv3Sens2.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="SFCReset"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Reset.Output"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="xStart"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Start.Output"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
										<Object Class="readtaggroup">
											<Transform Position="[1.0, 1.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Tag Group"/>
												<Parameter Name="Name" Type="Property" Value="Outputs"/>
												<Parameter Name="Type" Type="Property" Value="Read"/>
												<Parameter Name="State" Type="Property" Value="Online"/>
											</Parameters>
											<Children>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Conv1Fwd"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Fwd"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Conv3Fwd"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Up"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Down"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="xDropBox"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
									</Children>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="Conv1MC1"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Conv1Fwd.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="Conv2MC1"/>
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
										<Parameter Name="Name" Type="Property" Value="Conv3MC1"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Conv3Fwd.Value"/>
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
										<Parameter Name="Output" Type="Output" Value="[380.0, 50.0]"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="pneucabinet">
							<Transform Position="[1.2, 1.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Pneumatic Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="pneucabinet"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
								<Parameter Name="Scale" Type="Property" Value="[1.0, 0.5, 2.0]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Visible" Type="Property" Value="True"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 0.5, 2.0]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[1.0, 0.5, 2.0]"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
							</Parameters>
							<Children>
								<Object Class="aircompressor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Air Compressor"/>
										<Parameter Name="Name" Type="Property" Value="aircompressor"/>
										<Parameter Name="State" Type="Property" Value="On"/>
										<Parameter Name="Pressure" Type="Property" Value="6.0"/>
										<Parameter Name="Output" Type="Output" Value="6.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="valve_5_3_way">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Directional 5/3 way valve"/>
										<Parameter Name="Name" Type="Property" Value="valve_5_3_way"/>
										<Parameter Name="State" Type="Property" Value="Closed"/>
										<Parameter Name="Input Left" Type="Input" Value="Conv2Up.Value"/>
										<Parameter Name="Input Right" Type="Input" Value="Conv2Down.Value"/>
										<Parameter Name="In Pressure" Type="Input" Value="aircompressor.Output"/>
										<Parameter Name="Out Left Pressure" Type="Output" Value="0.0"/>
										<Parameter Name="Out Right Pressure" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
					</Children>
				</Object>
				<Object Class="pointlight">
					<Transform Position="[0.0, 0.0, 5.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Point light"/>
						<Parameter Name="Name" Type="Property" Value="Light source"/>
						<Parameter Name="Color" Type="Property" Value="[255, 255, 255, 255]"/>
						<Parameter Name="Attenuation" Type="Property" Value="0.01"/>
						<Parameter Name="Enable shadows" Type="Property" Value="False"/>
					</Parameters>
					<Children/>
				</Object>
			</Children>
		</Object>
		<Object Class="productholder">
			<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
			<Parameters>
				<Parameter Name="Class" Type="Property" Value="Product Holder"/>
				<Parameter Name="Name" Type="Property" Value="Products"/>
			</Parameters>
			<Children>
				<Object Class="productcube">
					<Transform Position="[3.47448, 0.18761, 0.075]" Quaternion="[0.37387, -0.0, 0.0, 0.92748]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="Box6"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Paper"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[3.17434, -0.05416, 0.075]" Quaternion="[-0.0, -0.21991, 0.97552, -0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="Box4"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Paper"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[1.34396, -0.00021, 0.32671]" Quaternion="[1.0, 0.0, 0.0, -0.00083]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="Box3"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Paper"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[0.98461, -6e-05, 0.32671]" Quaternion="[1.0, 0.0, 0.0, -0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="Box8"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Paper"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[0.58303, -9e-05, 0.325]" Quaternion="[1.0, 0.0, 0.0, -2e-05]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="Box9"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Paper"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[0.27366, -9e-05, 0.325]" Quaternion="[1.0, -0.0, -0.0, -2e-05]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="Box1"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Paper"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[-0.03472, -8e-05, 0.325]" Quaternion="[1.0, -0.0, 0.0, -0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="Box5"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Paper"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[-0.34172, -9e-05, 0.325]" Quaternion="[1.0, -0.0, -0.0, -2e-05]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="Box2"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Paper"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.4, 0.15]"/>
					</Parameters>
					<Children/>
				</Object>
			</Children>
		</Object>
	</Objects>
	<Resources>
		<Resource Filename="carton.jpg">
			 
<![CDATA[/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAFoAWgMBIgACEQEDEQH/xAAZAAEBAQEBAQAAAAAAAAAAAAACAwEABAX/xAAvEAABBAAFAgQFBAMAAAAAAAABAAIRIQMSMUFRImETcYHRIzIzkeFCUrHBkqGi/8QAFwEBAQEBAAAAAAAAAAAAAAAAAAEFAv/EABURAQEAAAAAAAAAAAAAAAAAAAAB/9oADAMBAAIRAxEAPwD1viQQNt1rwcu/op4zvDAc6I3Kc5gCywdCsJsKCSwF2wSw4it+URBY0zJgJMOdprflAmRB91XC+YEwaOiiz9QTwoLyIERqg10jGMJnTuSO0qZGXEFnhIugAKhYkcCdoWnqYB22Qxbk6bLXfTbI2QLCnIKMCV09z9lrD8I2LUp7hUeN8OiTRpI9IA0CGJZGXqF0qHSCFyOb0tAaa4hNju0diFMU0GITbGVAmFt/wEsM9ZIOyneYg35JYc567i0CdPjbJOiIdAG6Dj8U3ukSQMpFKhvgDXVc6gIFLHm404pNzi1gFCrQc0jwwaKGYftH2TBAw+B2KhnHI+yDyYtAEVdpOJgSP9rHQQDBW6tGwICgQMtFaBNk5QD62pgtLRMxyEwagCRKB7njzSwpL6U21Nx6qjD1oOfWKJXPksJmPNFxjGg1wk475hZVFHkgcuWE5sMSSK0KzFJ/Erf0NIINWg7LGGN7Kll7lejxWjCuSZ2CnLTcFB89+bUmQkC0s7outgiVrbABqtVA8J8CC2lVoJJyn0cotADcxSwyDMDdBdgc6RUnYlYGFuJB6ey5rrrjZWY8TlE+SDzYh+LvCca+6eLhg4ktpTIe0zCo9DnCRLWpjIGAOa31USRMyFroyCTqgsXdNRHko/4pADwzKgcQjf8A5QeME5db4WsGYTxuhJDQeUsMkNmq4QUEAGykzUnlFrpZHJ5XNaL7oKNN2KhWwiJ1gwvOwdWWahUwnAOBmP7UDxKxd4ScZEEmNoUsVw8bThNwGXqCB4mU8St6oB2hHEduBtdLmu6ByBwqhScl15KRN/hUB6I81KByivA19CRtskx1BRb9Rg2zaegVIHiRAhBYCRQkSuZAJG6LLFrW/L6oKCQ667JsJzAn+FMfTKpuPL3UG4jviacarQ6D7I431F2Bb72Ko9DgXXUcwuOEMoGbbYLTr6KL3EQASBKEUyM8Pc3qszN/auHyBKER/9k=]]>		</Resource>
	</Resources>
</SimumatikProject>
