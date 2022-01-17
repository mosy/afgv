<?xml version="1.0" ?>
<SimumatikProject Ambient_light_color="[128, 128, 128, 255]" Ambient_light_enabled="True" Author="Simumatik" Name="TurningConveyor" Version="1.0.6">
	 
	<Description>
		 
<![CDATA[V3JpdGUgeW91ciBwcm9qZWN0IGRlc2NyaXB0aW9uIGhlcmUuLi4=]]>	</Description>
	<Configuration/>
	<Objects>
		<Object Class="floor">
			<Transform Position="[0.35378, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
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
					<Transform Position="[0.0, -1.0, 0.2]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="Supply2"/>
					</Parameters>
					<Children>
						<Object Class="group">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="Conv1_Group"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Supply34elConv"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="KontaktorInn6.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="electranslationaljoint">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[0.70711, 0.0, -0.70711, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Electric Translational Joint"/>
										<Parameter Name="Name" Type="Property" Value="electranslationaljoint"/>
										<Parameter Name="Visible" Type="Property" Value="True"/>
										<Parameter Name="Type" Type="Property" Value="Translational"/>
										<Parameter Name="Limits" Type="Property" Value="[0.0, 1.0]"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
										<Parameter Name="Actual Position" Type="Output" Value="0.001"/>
										<Parameter Name="Upper limit sensor" Type="Output" Value="0"/>
										<Parameter Name="Lower limit sensor" Type="Output" Value="1"/>
										<Parameter Name="Speed Rel." Type="Property" Value="0.0001"/>
										<Parameter Name="Motor Input" Type="Input" Value="Supply34elev.Speed"/>
									</Parameters>
									<Children>
										<Object Class="conveyor">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[0.70711, 0.0, 0.70711, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Conveyor"/>
												<Parameter Name="Name" Type="Property" Value="Conv1"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Type" Type="Property" Value="Rollers"/>
												<Parameter Name="Sides" Type="Property" Value="True"/>
												<Parameter Name="Mass" Type="Property" Value="0.0"/>
												<Parameter Name="Friction" Type="Property" Value="High"/>
												<Parameter Name="Length" Type="Property" Value="1.8"/>
												<Parameter Name="Width" Type="Property" Value="0.7"/>
												<Parameter Name="Height" Type="Property" Value="0.1"/>
												<Parameter Name="Feet height" Type="Property" Value="0.0"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
												<Parameter Name="Conv. Motor Input" Type="Input" Value="Supply34elConv.Speed"/>
												<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
											</Parameters>
											<Children>
												<Object Class="sensor">
													<Transform Position="[0.65, -0.4, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Sensor"/>
														<Parameter Name="Name" Type="Property" Value="Elevator2SensorEnd"/>
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
												<Object Class="reflector">
													<Transform Position="[0.84842, -0.38337, 0.0]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Reflector"/>
														<Parameter Name="Name" Type="Property" Value="reflector"/>
														<Parameter Name="File" Type="Property" Value="res/graphics/cylinder.bam"/>
														<Parameter Name="Scale" Type="Property" Value="[0.02, 0.05, 0.05]"/>
														<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
														<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
														<Parameter Name="Texture" Type="Property" Value=""/>
														<Parameter Name="Visible" Type="Property" Value="True"/>
														<Parameter Name="Transparent" Type="Property" Value="False"/>
														<Parameter Name="Physics shape" Type="Property" Value="CylinderX"/>
														<Parameter Name="Physics dimensions" Type="Property" Value="[0.02, 0.05, 0.05]"/>
														<Parameter Name="Physics visible" Type="Property" Value="False"/>
														<Parameter Name="Mass" Type="Property" Value="0.0"/>
														<Parameter Name="Friction" Type="Property" Value="Medium"/>
														<Parameter Name="Dimensions" Type="Property" Value="[0.02, 0.05, 0.05]"/>
														<Parameter Name="Material" Type="Property" Value="Reflex"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
									</Children>
								</Object>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Supply34elev"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="Elevator34.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[0.84437, -0.51244, 0.0]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="Elev2Down"/>
										<Parameter Name="State" Type="Property" Value="Detecting"/>
										<Parameter Name="Type" Type="Property" Value="Retroreflective"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.5"/>
										<Parameter Name="Filter time" Type="Property" Value="0.0"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Signal" Type="Output" Value="1"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[0.844, -0.512, 0.93]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="Elev2Up"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Retroreflective"/>
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
						<Object Class="group">
							<Transform Position="[-1.85, 0.0, 0.95]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="SuppConv3Group"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Conv1_Motor3"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="KontaktorInn3.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="productinput">
									<Transform Position="[-0.5059, 0.0, 0.2]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product input"/>
										<Parameter Name="Name" Type="Property" Value="Blue"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
										<Parameter Name="Drop mode" Type="Property" Value="Random"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Drop signal" Type="Input" Value="DropBlue.Value"/>
									</Parameters>
									<Children>
										<Object Class="productcubepattern">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Product Cube Pattern"/>
												<Parameter Name="Name" Type="Property" Value="BlueBox"/>
												<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
												<Parameter Name="Scale" Type="Property" Value="[0.4, 0.6, 0.25]"/>
												<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Texture" Type="Property" Value=""/>
												<Parameter Name="Visible" Type="Property" Value="True"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
												<Parameter Name="Physics shape" Type="Property" Value="Box"/>
												<Parameter Name="Physics dimensions" Type="Property" Value="[0.4, 0.6, 0.25]"/>
												<Parameter Name="Physics visible" Type="Property" Value="False"/>
												<Parameter Name="Material" Type="Property" Value="Wood"/>
												<Parameter Name="Mass" Type="Property" Value="1.0"/>
												<Parameter Name="Friction" Type="Property" Value="Medium"/>
												<Parameter Name="Dimensions" Type="Property" Value="[0.4, 0.6, 0.25]"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Conv2"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Rollers"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.8"/>
										<Parameter Name="Width" Type="Property" Value="0.7"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="Conv1_Motor3.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[0.79725, -0.4, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="SuppConv3EndSensor"/>
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
											<Transform Position="[0.23, -0.4, 0.15]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="SuppConv3MidSensor"/>
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
							</Children>
						</Object>
						<Object Class="group">
							<Transform Position="[-1.85, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="SuppConv4Group"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="SuppConv4Motor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="KontaktorInn4.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="productinput">
									<Transform Position="[-0.5971, 0.0, 0.17689]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product input"/>
										<Parameter Name="Name" Type="Property" Value="Red"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
										<Parameter Name="Drop mode" Type="Property" Value="Random"/>
										<Parameter Name="Color" Type="Property" Value="[255, 0, 0, 255]"/>
										<Parameter Name="Drop signal" Type="Input" Value="DropRed.Value"/>
									</Parameters>
									<Children>
										<Object Class="productcubepattern">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Product Cube Pattern"/>
												<Parameter Name="Name" Type="Property" Value="RedBox"/>
												<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
												<Parameter Name="Scale" Type="Property" Value="[0.35, 0.6, 0.25]"/>
												<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
												<Parameter Name="Color" Type="Property" Value="[255, 0, 0, 255]"/>
												<Parameter Name="Texture" Type="Property" Value=""/>
												<Parameter Name="Visible" Type="Property" Value="True"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
												<Parameter Name="Physics shape" Type="Property" Value="Box"/>
												<Parameter Name="Physics dimensions" Type="Property" Value="[0.35, 0.6, 0.25]"/>
												<Parameter Name="Physics visible" Type="Property" Value="False"/>
												<Parameter Name="Material" Type="Property" Value="Wood"/>
												<Parameter Name="Mass" Type="Property" Value="1.0"/>
												<Parameter Name="Friction" Type="Property" Value="Medium"/>
												<Parameter Name="Dimensions" Type="Property" Value="[0.35, 0.6, 0.25]"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Conv3"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Rollers"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.8"/>
										<Parameter Name="Width" Type="Property" Value="0.7"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="SuppConv4Motor.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[0.71048, -0.4, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="SuppConv4Sensor1"/>
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
											<Transform Position="[-0.10905, -0.4, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="SuppConv4Sensor3"/>
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
							<Transform Position="[0.0, 1.0, 0.4]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Electric Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="Main Cabinet"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
								<Parameter Name="Scale" Type="Property" Value="[1.0, 0.5, 0.8]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Visible" Type="Property" Value="True"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 0.5, 0.8]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[1.0, 0.5, 0.8]"/>
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
												<Parameter Name="Name" Type="Property" Value="ResetSFC"/>
												<Parameter Name="Label" Type="Property" Value="SFC Reset"/>
												<Parameter Name="Color" Type="Property" Value="[192, 192, 192, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="button">
											<Transform Position="[0.02, 0.08, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="Input1hent"/>
												<Parameter Name="Label" Type="Property" Value="Select Green"/>
												<Parameter Name="Color" Type="Property" Value="[0, 255, 0, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="button">
											<Transform Position="[0.02, 0.16, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="Input2hent"/>
												<Parameter Name="Label" Type="Property" Value="Select Yellow"/>
												<Parameter Name="Color" Type="Property" Value="[255, 255, 0, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="button">
											<Transform Position="[0.02, 0.24, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="Input3hent"/>
												<Parameter Name="Label" Type="Property" Value="Select Blue"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="button">
											<Transform Position="[0.02, 0.32, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="Input4hent"/>
												<Parameter Name="Label" Type="Property" Value="Select Red"/>
												<Parameter Name="Color" Type="Property" Value="[255, 0, 0, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="lightbutton">
											<Transform Position="[0.1, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Light Button"/>
												<Parameter Name="Name" Type="Property" Value="lightbutton"/>
												<Parameter Name="Label" Type="Property" Value="Klar"/>
												<Parameter Name="Color" Type="Property" Value="[128, 128, 128, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
												<Parameter Name="Light Color" Type="Property" Value="[218, 218, 218, 255]"/>
												<Parameter Name="Input" Type="Input" Value="KlarForValg.Value"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
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
								<Object Class="plc">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="CoDeSys PLC"/>
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
														<Parameter Name="Name" Type="Property" Value="Input2EndSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SuppConv2EndSensor.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Elevator1UpSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Elev1Up.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Elevator1DownSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Elev1Down.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Input3EndSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SuppConv3EndSensor.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Input1EndSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SuppConv1EndSensor.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Input3BoxSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SuppConv3MidSensor.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Input4EndSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SuppConv4Sensor1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator1EndSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Elevator1SensorEnd.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="SFCReset"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="ResetSFC.Output"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Input4BoxSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SuppConv4Sensor3.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="SliderLeftSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SliderSens1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="SliderMidSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SliderSens2.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="SliderRightSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SliderSens3.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="SliderConvEndSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="SliderEndSensor.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="OutputConvEndSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="OutConvEndSensor.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator2DownSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Elev2Down.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator2EndSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Elevator2SensorEnd.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator2UpSensor"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Elev2Up.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="GreenSelect"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Input1hent.Output"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="YellowSelect"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Input2hent.Output"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="BlueSelect"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Input3hent.Output"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="RedSelect"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Input4hent.Output"/>
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
														<Parameter Name="Name" Type="Property" Value="Input1Conv"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Input2Conv"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Input3Conv"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="Input4Conv"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="OutputConv"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator2Conv"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator1Conv"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="SliderRight"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="SliderConv"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator1Up"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator1Down"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator2Up"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="Elevator2Down"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="SliderLeft"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="DropGreen"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="DropYellow"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="DropBlue"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="DropRed"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="KlarForValg"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="1"/>
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
										<Parameter Name="Name" Type="Property" Value="KontaktorInn1"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Input1Conv.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="KontaktorInn2"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Input2Conv.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="KontaktorInn3"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Input3Conv.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="KontaktorInn4"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Input4Conv.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="KontaktorInn5"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Elevator1Conv.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="KontaktorInn6"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Elevator2Conv.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorreversingcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Reversing Contactor"/>
										<Parameter Name="Name" Type="Property" Value="Elevator12"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input Fwd" Type="Input" Value="Elevator1Up.Value"/>
										<Parameter Name="Input Rev" Type="Input" Value="Elevator1Down.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorreversingcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Reversing Contactor"/>
										<Parameter Name="Name" Type="Property" Value="Elevator34"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input Fwd" Type="Input" Value="Elevator2Up.Value"/>
										<Parameter Name="Input Rev" Type="Input" Value="Elevator2Down.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorreversingcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Reversing Contactor"/>
										<Parameter Name="Name" Type="Property" Value="Slider"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input Fwd" Type="Input" Value="SliderRight.Value"/>
										<Parameter Name="Input Rev" Type="Input" Value="SliderLeft.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="KontaktorSliderMotor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="SliderConv.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="KontaktorUnloaderMotor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="OutputConv.Value"/>
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
				<Object Class="group">
					<Transform Position="[1.85, -0.5, 0.2]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="Delivery"/>
					</Parameters>
					<Children>
						<Object Class="group">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="SliderGroup"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="SliderMotor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="Slider.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="electranslationaljoint">
									<Transform Position="[0.0, -0.5, 0.0]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Electric Translational Joint"/>
										<Parameter Name="Name" Type="Property" Value="electranslationaljoint1"/>
										<Parameter Name="Visible" Type="Property" Value="True"/>
										<Parameter Name="Type" Type="Property" Value="Translational"/>
										<Parameter Name="Limits" Type="Property" Value="[0.0, 1.0]"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
										<Parameter Name="Actual Position" Type="Output" Value="0.49568"/>
										<Parameter Name="Upper limit sensor" Type="Output" Value="0"/>
										<Parameter Name="Lower limit sensor" Type="Output" Value="0"/>
										<Parameter Name="Speed Rel." Type="Property" Value="0.0001"/>
										<Parameter Name="Motor Input" Type="Input" Value="SliderMotor.Speed"/>
									</Parameters>
									<Children>
										<Object Class="conveyor">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Conveyor"/>
												<Parameter Name="Name" Type="Property" Value="Conv4"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Type" Type="Property" Value="Rollers"/>
												<Parameter Name="Sides" Type="Property" Value="True"/>
												<Parameter Name="Mass" Type="Property" Value="0.0"/>
												<Parameter Name="Friction" Type="Property" Value="High"/>
												<Parameter Name="Length" Type="Property" Value="1.8"/>
												<Parameter Name="Width" Type="Property" Value="0.7"/>
												<Parameter Name="Height" Type="Property" Value="0.1"/>
												<Parameter Name="Feet height" Type="Property" Value="0.0"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
												<Parameter Name="Conv. Motor Input" Type="Input" Value="SliderConvMotor.Speed"/>
												<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
											</Parameters>
											<Children>
												<Object Class="sensor">
													<Transform Position="[0.65, -0.4, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Sensor"/>
														<Parameter Name="Name" Type="Property" Value="SliderEndSensor"/>
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
												<Object Class="reflector">
													<Transform Position="[0.848, -0.38272, -0.07842]" Quaternion="[0.70711, 0.70711, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Reflector"/>
														<Parameter Name="Name" Type="Property" Value="reflector1"/>
														<Parameter Name="File" Type="Property" Value="res/graphics/cylinder.bam"/>
														<Parameter Name="Scale" Type="Property" Value="[0.02, 0.05, 0.05]"/>
														<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
														<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
														<Parameter Name="Texture" Type="Property" Value=""/>
														<Parameter Name="Visible" Type="Property" Value="True"/>
														<Parameter Name="Transparent" Type="Property" Value="False"/>
														<Parameter Name="Physics shape" Type="Property" Value="CylinderX"/>
														<Parameter Name="Physics dimensions" Type="Property" Value="[0.02, 0.05, 0.05]"/>
														<Parameter Name="Physics visible" Type="Property" Value="False"/>
														<Parameter Name="Mass" Type="Property" Value="0.0"/>
														<Parameter Name="Friction" Type="Property" Value="Medium"/>
														<Parameter Name="Dimensions" Type="Property" Value="[0.02, 0.05, 0.05]"/>
														<Parameter Name="Material" Type="Property" Value="Reflex"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
									</Children>
								</Object>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="SliderConvMotor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="KontaktorSliderMotor.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[0.97769, -0.88107, -0.07684]" Quaternion="[0.0, 0.0, 0.0, 1.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="SliderSens1"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Retroreflective"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.2"/>
										<Parameter Name="Filter time" Type="Property" Value="0.0"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[0.978, -0.381, -0.077]" Quaternion="[0.0, 0.0, 0.0, 1.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="SliderSens2"/>
										<Parameter Name="State" Type="Property" Value="Detecting"/>
										<Parameter Name="Type" Type="Property" Value="Retroreflective"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.2"/>
										<Parameter Name="Filter time" Type="Property" Value="0.0"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Signal" Type="Output" Value="1"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[0.978, 0.119, -0.077]" Quaternion="[0.0, 0.0, 0.0, 1.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="SliderSens3"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Retroreflective"/>
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
						<Object Class="group">
							<Transform Position="[1.85, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="SuppConv4"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Conv1_Motor8"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="KontaktorUnloaderMotor.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Conv6"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Rollers"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.8"/>
										<Parameter Name="Width" Type="Property" Value="0.7"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="Conv1_Motor8.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[0.71364, -0.4, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="OutConvEndSensor"/>
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
									<Transform Position="[0.90034, -0.01312, 0.2509]" Quaternion="[0.0, 0.0, 1.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product output"/>
										<Parameter Name="Name" Type="Property" Value="productoutput"/>
										<Parameter Name="Type" Type="Property" Value="Picker"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Picked object" Type="Property" Value=""/>
										<Parameter Name="Length" Type="Property" Value="0.3"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Erase mode" Type="Property" Value="Max time"/>
										<Parameter Name="Erase time" Type="Property" Value="[3.0, 5.0]"/>
										<Parameter Name="Erase signal" Type="Input" Value="None"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
					</Children>
				</Object>
				<Object Class="group">
					<Transform Position="[0.0, 0.0, 0.2]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="Supply1"/>
					</Parameters>
					<Children>
						<Object Class="group">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="Elevator1"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Elevator1ConvMotor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="KontaktorInn5.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="electranslationaljoint">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[0.70711, 0.0, -0.70711, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Electric Translational Joint"/>
										<Parameter Name="Name" Type="Property" Value="electranslationaljoint2"/>
										<Parameter Name="Visible" Type="Property" Value="True"/>
										<Parameter Name="Type" Type="Property" Value="Translational"/>
										<Parameter Name="Limits" Type="Property" Value="[0.0, 1.0]"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
										<Parameter Name="Actual Position" Type="Output" Value="0.00102"/>
										<Parameter Name="Upper limit sensor" Type="Output" Value="0"/>
										<Parameter Name="Lower limit sensor" Type="Output" Value="1"/>
										<Parameter Name="Speed Rel." Type="Property" Value="0.0001"/>
										<Parameter Name="Motor Input" Type="Input" Value="Elevator1Motor.Speed"/>
									</Parameters>
									<Children>
										<Object Class="conveyor">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[0.70711, 0.0, 0.70711, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Conveyor"/>
												<Parameter Name="Name" Type="Property" Value="Elevator1Conveyor"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Type" Type="Property" Value="Rollers"/>
												<Parameter Name="Sides" Type="Property" Value="True"/>
												<Parameter Name="Mass" Type="Property" Value="0.0"/>
												<Parameter Name="Friction" Type="Property" Value="High"/>
												<Parameter Name="Length" Type="Property" Value="1.8"/>
												<Parameter Name="Width" Type="Property" Value="0.7"/>
												<Parameter Name="Height" Type="Property" Value="0.1"/>
												<Parameter Name="Feet height" Type="Property" Value="0.0"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
												<Parameter Name="Conv. Motor Input" Type="Input" Value="Elevator1ConvMotor.Speed"/>
												<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
											</Parameters>
											<Children>
												<Object Class="sensor">
													<Transform Position="[0.75, -0.4, 0.15]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Sensor"/>
														<Parameter Name="Name" Type="Property" Value="Elevator1SensorEnd"/>
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
												<Object Class="reflector">
													<Transform Position="[0.84842, -0.38337, 0.0]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Reflector"/>
														<Parameter Name="Name" Type="Property" Value="Elevator1Reflector"/>
														<Parameter Name="File" Type="Property" Value="res/graphics/cylinder.bam"/>
														<Parameter Name="Scale" Type="Property" Value="[0.02, 0.05, 0.05]"/>
														<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
														<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
														<Parameter Name="Texture" Type="Property" Value=""/>
														<Parameter Name="Visible" Type="Property" Value="True"/>
														<Parameter Name="Transparent" Type="Property" Value="False"/>
														<Parameter Name="Physics shape" Type="Property" Value="CylinderX"/>
														<Parameter Name="Physics dimensions" Type="Property" Value="[0.02, 0.05, 0.05]"/>
														<Parameter Name="Physics visible" Type="Property" Value="False"/>
														<Parameter Name="Mass" Type="Property" Value="0.0"/>
														<Parameter Name="Friction" Type="Property" Value="Medium"/>
														<Parameter Name="Dimensions" Type="Property" Value="[0.02, 0.05, 0.05]"/>
														<Parameter Name="Material" Type="Property" Value="Reflex"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
									</Children>
								</Object>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Elevator1Motor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="Elevator12.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[0.84437, -0.51244, 0.0]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="Elev1Down"/>
										<Parameter Name="State" Type="Property" Value="Detecting"/>
										<Parameter Name="Type" Type="Property" Value="Retroreflective"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.5"/>
										<Parameter Name="Filter time" Type="Property" Value="0.0"/>
										<Parameter Name="Hide range" Type="Property" Value="False"/>
										<Parameter Name="Signal" Type="Output" Value="1"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[0.844, -0.512, 0.93]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="Elev1Up"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Retroreflective"/>
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
						<Object Class="group">
							<Transform Position="[-1.85, 0.0, 0.95]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="SuppConv1Group"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="SuppConv1Motor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="KontaktorInn1.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="productinput">
									<Transform Position="[-0.00434, 0.0, 0.2]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product input"/>
										<Parameter Name="Name" Type="Property" Value="Green"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
										<Parameter Name="Drop mode" Type="Property" Value="Random"/>
										<Parameter Name="Color" Type="Property" Value="[0, 255, 0, 255]"/>
										<Parameter Name="Drop signal" Type="Input" Value="DropGreen.Value"/>
									</Parameters>
									<Children>
										<Object Class="productcubepattern">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Product Cube Pattern"/>
												<Parameter Name="Name" Type="Property" Value="GreenBox"/>
												<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
												<Parameter Name="Scale" Type="Property" Value="[1.6, 0.6, 0.25]"/>
												<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
												<Parameter Name="Color" Type="Property" Value="[0, 255, 0, 255]"/>
												<Parameter Name="Texture" Type="Property" Value=""/>
												<Parameter Name="Visible" Type="Property" Value="True"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
												<Parameter Name="Physics shape" Type="Property" Value="Box"/>
												<Parameter Name="Physics dimensions" Type="Property" Value="[1.6, 0.6, 0.25]"/>
												<Parameter Name="Physics visible" Type="Property" Value="False"/>
												<Parameter Name="Material" Type="Property" Value="Wood"/>
												<Parameter Name="Mass" Type="Property" Value="1.0"/>
												<Parameter Name="Friction" Type="Property" Value="Medium"/>
												<Parameter Name="Dimensions" Type="Property" Value="[1.6, 0.6, 0.25]"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="SuppConv1_"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Rollers"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.8"/>
										<Parameter Name="Width" Type="Property" Value="0.7"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="SuppConv1Motor.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[0.77816, -0.4, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="SuppConv1EndSensor"/>
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
							</Children>
						</Object>
						<Object Class="group">
							<Transform Position="[-1.85, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="SuppConv2Group"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="SuppConv2Motor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="KontaktorInn2.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="productinput">
									<Transform Position="[-0.45235, 0.0, 0.18]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product input"/>
										<Parameter Name="Name" Type="Property" Value="Yellow"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
										<Parameter Name="Drop mode" Type="Property" Value="Random"/>
										<Parameter Name="Color" Type="Property" Value="[255, 255, 0, 255]"/>
										<Parameter Name="Drop signal" Type="Input" Value="DropYellow.Value"/>
									</Parameters>
									<Children>
										<Object Class="productcubepattern">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Product Cube Pattern"/>
												<Parameter Name="Name" Type="Property" Value="YellowBox"/>
												<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
												<Parameter Name="Scale" Type="Property" Value="[0.8, 0.6, 0.25]"/>
												<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
												<Parameter Name="Color" Type="Property" Value="[255, 255, 0, 255]"/>
												<Parameter Name="Texture" Type="Property" Value=""/>
												<Parameter Name="Visible" Type="Property" Value="True"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
												<Parameter Name="Physics shape" Type="Property" Value="Box"/>
												<Parameter Name="Physics dimensions" Type="Property" Value="[0.8, 0.6, 0.25]"/>
												<Parameter Name="Physics visible" Type="Property" Value="False"/>
												<Parameter Name="Material" Type="Property" Value="Wood"/>
												<Parameter Name="Mass" Type="Property" Value="1.0"/>
												<Parameter Name="Friction" Type="Property" Value="Medium"/>
												<Parameter Name="Dimensions" Type="Property" Value="[0.8, 0.6, 0.25]"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="SuppConv2_"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Rollers"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.8"/>
										<Parameter Name="Width" Type="Property" Value="0.7"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="SuppConv2Motor.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[0.7, -0.4, 0.15]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="SuppConv2EndSensor"/>
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
