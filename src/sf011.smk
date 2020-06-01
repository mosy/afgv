<?xml version="1.0" ?>
<SimumatikProject Author="Simumatik" Name="PackingBoxes" Version="0.3.0">
	 
	<Configuration/>
	<Objects>
		<Object Class="productholder">
			<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
			<Parameters>
				<Parameter Name="Class" Type="Property" Value="Product Holder"/>
				<Parameter Name="Name" Type="Property" Value="Products"/>
			</Parameters>
			<Children/>
		</Object>
		<Object Class="group">
			<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
			<Parameters>
				<Parameter Name="Class" Type="Property" Value="Group"/>
				<Parameter Name="Name" Type="Property" Value="SYS01"/>
			</Parameters>
			<Children>
				<Object Class="group">
					<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="SUB00_Control"/>
					</Parameters>
					<Children>
						<Object Class="elcabinet">
							<Transform Position="[0.0, 1.0, 0.25]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Electric Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="SUB00_Electircs"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube"/>
								<Parameter Name="Scale" Type="Property" Value="[0.5, 0.25, 0.5]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.25, 0.5]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.25, 0.5]"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
							</Parameters>
							<Children>
								<Object Class="panel">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="HMI Panel"/>
										<Parameter Name="Name" Type="Property" Value="SUB00_MainPanel"/>
										<Parameter Name="Width" Type="Property" Value="200"/>
										<Parameter Name="Height" Type="Property" Value="180"/>
										<Parameter Name="Color" Type="Property" Value="[192, 192, 192, 255]"/>
									</Parameters>
									<Children>
										<Object Class="button">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="SUB00_B1"/>
												<Parameter Name="Label" Type="Property" Value="DROP"/>
												<Parameter Name="Color" Type="Property" Value="[128, 128, 128, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="acsource">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Source"/>
										<Parameter Name="Name" Type="Property" Value="SUB00_AC"/>
										<Parameter Name="State" Type="Property" Value="On"/>
										<Parameter Name="Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Output" Type="Output" Value="[0.0, 0.0]"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="codesys">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="CoDeSys PLC"/>
										<Parameter Name="Name" Type="Property" Value="PLC"/>
										<Parameter Name="State" Type="Property" Value="Offline"/>
										<Parameter Name="Version" Type="Property" Value="CODESYS OPC Server V3"/>
										<Parameter Name="Topic" Type="Property" Value=""/>
									</Parameters>
									<Children>
										<Object Class="writetaggroup">
											<Transform Position="[1.0, 1.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Tag Group"/>
												<Parameter Name="Name" Type="Property" Value="Inputs"/>
												<Parameter Name="Type" Type="Property" Value="Write"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
												<Parameter Name="Update Rate" Type="Property" Value="50"/>
												<Parameter Name="Mode" Type="Property" Value="Write always"/>
											</Parameters>
											<Children>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="iSUB01_B1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="SUB01_B1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="iSUB01_B2"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="SUB01_B2.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="iSUB01_B3"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="SUB01_B3.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="iSUB02_B1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="SUB02_B1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="iSUB02_B2"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="SUB02_B2.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="iSUB02_B3"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="SUB02_B3.Signal"/>
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
												<Parameter Name="State" Type="Property" Value="Offline"/>
												<Parameter Name="Update Rate" Type="Property" Value="100"/>
											</Parameters>
											<Children>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="oSUB01_K1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="oSUB02_K1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="oSUB01_Y1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC tag"/>
														<Parameter Name="Name" Type="Property" Value="oSUB02_Y1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="None"/>
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
							<Transform Position="[0.51, 1.0, 0.25]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Pneumatic Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="SUB00_Pneumatics"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube"/>
								<Parameter Name="Scale" Type="Property" Value="[0.5, 0.25, 0.5]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.25, 0.5]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.25, 0.5]"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
							</Parameters>
							<Children>
								<Object Class="valve_3_2_way">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Valve 3/2 Way"/>
										<Parameter Name="Name" Type="Property" Value="SUB01_Y1"/>
										<Parameter Name="State" Type="Property" Value="Closed"/>
										<Parameter Name="Normal State" Type="Property" Value="Closed"/>
										<Parameter Name="Input" Type="Input" Value="oSUB01_Y1.Value"/>
										<Parameter Name="In Pressure" Type="Input" Value="SUB00_Compressor.Output"/>
										<Parameter Name="Out Pressure" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="aircompressor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Air Compressor"/>
										<Parameter Name="Name" Type="Property" Value="SUB00_Compressor"/>
										<Parameter Name="State" Type="Property" Value="On"/>
										<Parameter Name="Pressure" Type="Property" Value="6.0"/>
										<Parameter Name="Output" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="valve_3_2_way">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Valve 3/2 Way"/>
										<Parameter Name="Name" Type="Property" Value="SUB02_Y1"/>
										<Parameter Name="State" Type="Property" Value="Closed"/>
										<Parameter Name="Normal State" Type="Property" Value="Closed"/>
										<Parameter Name="Input" Type="Input" Value="oSUB02_Y1.Value"/>
										<Parameter Name="In Pressure" Type="Input" Value="SUB00_Compressor.Output"/>
										<Parameter Name="Out Pressure" Type="Output" Value="0.0"/>
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
						<Parameter Name="Name" Type="Property" Value="SUB01_Conveyor1"/>
					</Parameters>
					<Children>
						<Object Class="conveyor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Conveyor"/>
								<Parameter Name="Name" Type="Property" Value="SUB01_RB1"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
								<Parameter Name="Type" Type="Property" Value="Belt"/>
								<Parameter Name="Sides" Type="Property" Value="True"/>
								<Parameter Name="Friction" Type="Property" Value="High"/>
								<Parameter Name="Length" Type="Property" Value="2.0"/>
								<Parameter Name="Width" Type="Property" Value="0.5"/>
								<Parameter Name="Height" Type="Property" Value="0.1"/>
								<Parameter Name="Feet height" Type="Property" Value="0.0"/>
								<Parameter Name="Color" Type="Property" Value="[255, 255, 255, 255]"/>
								<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
								<Parameter Name="Conv. Motor Input" Type="Input" Value="SUB01_M1.Speed"/>
								<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children>
								<Object Class="sensor">
									<Transform Position="[-0.75, 0.4, 0.17]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="SUB01_B1"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Proximity"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.5"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="stopper">
									<Transform Position="[-0.25, 0.25, 0.1]" Quaternion="[0.0, 0.0, 0.0, 1.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Stopper"/>
										<Parameter Name="Name" Type="Property" Value="SUB01_GuideLeft"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Length" Type="Property" Value="1.5"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Width" Type="Property" Value="0.02"/>
										<Parameter Name="Friction" Type="Property" Value="Low"/>
										<Parameter Name="Color" Type="Property" Value="[0, 180, 0, 255]"/>
										<Parameter Name="Side angle" Type="Property" Value="5.0"/>
										<Parameter Name="Side length" Type="Property" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[1.1, 0.0, 0.17]" Quaternion="[0.0, 0.0, 0.0, 1.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="SUB01_B2"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Proximity"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.12"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="stopper">
									<Transform Position="[-0.25, -0.25, 0.1]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Stopper"/>
										<Parameter Name="Name" Type="Property" Value="SUB01_GuideRight"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Length" Type="Property" Value="1.5"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Width" Type="Property" Value="0.02"/>
										<Parameter Name="Friction" Type="Property" Value="Low"/>
										<Parameter Name="Color" Type="Property" Value="[0, 180, 0, 255]"/>
										<Parameter Name="Side angle" Type="Property" Value="5.0"/>
										<Parameter Name="Side length" Type="Property" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="stopper">
									<Transform Position="[1.0, 0.0, 0.1]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Stopper"/>
										<Parameter Name="Name" Type="Property" Value="SUB01_GuideFront"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Length" Type="Property" Value="0.6"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Width" Type="Property" Value="0.02"/>
										<Parameter Name="Friction" Type="Property" Value="Low"/>
										<Parameter Name="Color" Type="Property" Value="[0, 180, 0, 255]"/>
										<Parameter Name="Side angle" Type="Property" Value="5.0"/>
										<Parameter Name="Side length" Type="Property" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="singleactingcylinder">
							<Transform Position="[0.75, 0.6, 0.1]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Pneumatic Single Acting Cylinder"/>
								<Parameter Name="Name" Type="Property" Value="SUB01_C1"/>
								<Parameter Name="Visible" Type="Property" Value="True"/>
								<Parameter Name="Type" Type="Property" Value="Translational"/>
								<Parameter Name="Limits" Type="Property" Value="[0.0, 0.6]"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
								<Parameter Name="Speed Rel." Type="Property" Value="0.04"/>
								<Parameter Name="Length" Type="Property" Value="0.7"/>
								<Parameter Name="Radius" Type="Property" Value="0.025"/>
								<Parameter Name="Color" Type="Property" Value="[255, 0, 0, 255]"/>
								<Parameter Name="Damping" Type="Property" Value="0.001"/>
								<Parameter Name="Stiffness" Type="Property" Value="20.0"/>
								<Parameter Name="Expand Input" Type="Input" Value="SUB01_Y1.Out Pressure"/>
							</Parameters>
							<Children>
								<Object Class="pneupiston">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Pneumatic Piston"/>
										<Parameter Name="Name" Type="Property" Value="SUB01_C1_Piston"/>
										<Parameter Name="Material" Type="Property" Value="Piston"/>
										<Parameter Name="Radius" Type="Property" Value="0.02"/>
										<Parameter Name="Width" Type="Property" Value="0.024"/>
										<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
										<Parameter Name="Length" Type="Property" Value="0.7"/>
									</Parameters>
									<Children>
										<Object Class="stopper">
											<Transform Position="[0.35, 0.0, 0.0]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="SUB01_C1_Pusher"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.45"/>
												<Parameter Name="Height" Type="Property" Value="0.1"/>
												<Parameter Name="Width" Type="Property" Value="0.02"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 180, 0, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="15.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="jointsensor">
									<Transform Position="[0.26, 0.0, 0.03]" Quaternion="[0.70711, 0.0, 0.70711, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Joint Sensor"/>
										<Parameter Name="Name" Type="Property" Value="SUB01_B3"/>
										<Parameter Name="State" Type="Property" Value="Detecting"/>
										<Parameter Name="Type" Type="Property" Value="Cylinder"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Location" Type="Property" Value="0.26"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
										<Parameter Name="Length" Type="Property" Value="0.025"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="acmotor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="AC Motor"/>
								<Parameter Name="Name" Type="Property" Value="SUB01_M1"/>
								<Parameter Name="State" Type="Property" Value="Stop"/>
								<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
								<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
								<Parameter Name="Poles" Type="Property" Value="4"/>
								<Parameter Name="Input" Type="Input" Value="SUB01_K1.Out Voltage"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="motorcontactor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
								<Parameter Name="Name" Type="Property" Value="SUB01_K1"/>
								<Parameter Name="State" Type="Property" Value="Stop"/>
								<Parameter Name="In Voltage" Type="Input" Value="SUB00_AC.Output"/>
								<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
								<Parameter Name="Input" Type="Input" Value="oSUB01_K1.Value"/>
							</Parameters>
							<Children/>
						</Object>
					</Children>
				</Object>
				<Object Class="group">
					<Transform Position="[1.5, -0.55, 0.2]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="SUB02_Conveyor2"/>
					</Parameters>
					<Children>
						<Object Class="conveyor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Conveyor"/>
								<Parameter Name="Name" Type="Property" Value="SUB02_RB1"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
								<Parameter Name="Type" Type="Property" Value="Belt"/>
								<Parameter Name="Sides" Type="Property" Value="True"/>
								<Parameter Name="Friction" Type="Property" Value="High"/>
								<Parameter Name="Length" Type="Property" Value="2.0"/>
								<Parameter Name="Width" Type="Property" Value="0.5"/>
								<Parameter Name="Height" Type="Property" Value="0.1"/>
								<Parameter Name="Feet height" Type="Property" Value="0.0"/>
								<Parameter Name="Color" Type="Property" Value="[255, 255, 255, 255]"/>
								<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
								<Parameter Name="Conv. Motor Input" Type="Input" Value="SUB02_M1.Speed"/>
								<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children>
								<Object Class="sensor">
									<Transform Position="[-0.7714, -0.4, 0.17]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="SUB02_B1"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Proximity"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.2"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="stopper">
									<Transform Position="[0.0, -0.25, 0.1]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Stopper"/>
										<Parameter Name="Name" Type="Property" Value="SUB02_GuideRight"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Length" Type="Property" Value="2.0"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Width" Type="Property" Value="0.02"/>
										<Parameter Name="Friction" Type="Property" Value="Low"/>
										<Parameter Name="Color" Type="Property" Value="[0, 180, 0, 255]"/>
										<Parameter Name="Side angle" Type="Property" Value="5.0"/>
										<Parameter Name="Side length" Type="Property" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="stopper">
									<Transform Position="[0.25, 0.25, 0.1]" Quaternion="[0.0, 0.0, 0.0, 1.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Stopper"/>
										<Parameter Name="Name" Type="Property" Value="SUB02_GuideLeft"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Length" Type="Property" Value="1.5"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Width" Type="Property" Value="0.02"/>
										<Parameter Name="Friction" Type="Property" Value="Low"/>
										<Parameter Name="Color" Type="Property" Value="[0, 180, 0, 255]"/>
										<Parameter Name="Side angle" Type="Property" Value="5.0"/>
										<Parameter Name="Side length" Type="Property" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="sensor">
									<Transform Position="[0.68004, -0.4, 0.17]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Sensor"/>
										<Parameter Name="Name" Type="Property" Value="SUB02_B2"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Proximity"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Length" Type="Property" Value="0.5"/>
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
								<Parameter Name="Name" Type="Property" Value="SUB02_M1"/>
								<Parameter Name="State" Type="Property" Value="Stop"/>
								<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
								<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
								<Parameter Name="Poles" Type="Property" Value="4"/>
								<Parameter Name="Input" Type="Input" Value="SUB02_K1.Out Voltage"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="singleactingcylinder">
							<Transform Position="[-1.3, 0.0, 0.1]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Pneumatic Single Acting Cylinder"/>
								<Parameter Name="Name" Type="Property" Value="SUB02_C1"/>
								<Parameter Name="Visible" Type="Property" Value="True"/>
								<Parameter Name="Type" Type="Property" Value="Translational"/>
								<Parameter Name="Limits" Type="Property" Value="[0.0, 0.5]"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
								<Parameter Name="Speed Rel." Type="Property" Value="0.04"/>
								<Parameter Name="Length" Type="Property" Value="0.6"/>
								<Parameter Name="Radius" Type="Property" Value="0.025"/>
								<Parameter Name="Color" Type="Property" Value="[255, 0, 0, 255]"/>
								<Parameter Name="Damping" Type="Property" Value="0.001"/>
								<Parameter Name="Stiffness" Type="Property" Value="20.0"/>
								<Parameter Name="Expand Input" Type="Input" Value="SUB02_Y1.Out Pressure"/>
							</Parameters>
							<Children>
								<Object Class="pneupiston">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Pneumatic Piston"/>
										<Parameter Name="Name" Type="Property" Value="SUB02_C1_Piston"/>
										<Parameter Name="Material" Type="Property" Value="Piston"/>
										<Parameter Name="Radius" Type="Property" Value="0.02"/>
										<Parameter Name="Width" Type="Property" Value="0.024"/>
										<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
										<Parameter Name="Length" Type="Property" Value="0.6"/>
									</Parameters>
									<Children>
										<Object Class="stopper">
											<Transform Position="[0.3, 0.0, 0.0]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="SUB02_C1_Pusher"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.45"/>
												<Parameter Name="Height" Type="Property" Value="0.1"/>
												<Parameter Name="Width" Type="Property" Value="0.02"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 180, 0, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="15.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="jointsensor">
									<Transform Position="[0.22, 0.0, 0.03]" Quaternion="[0.70711, 0.0, 0.70711, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Joint Sensor"/>
										<Parameter Name="Name" Type="Property" Value="SUB02_B3"/>
										<Parameter Name="State" Type="Property" Value="Not detecting"/>
										<Parameter Name="Type" Type="Property" Value="Cylinder"/>
										<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
										<Parameter Name="Location" Type="Property" Value="0.22"/>
										<Parameter Name="Signal" Type="Output" Value="0"/>
										<Parameter Name="Length" Type="Property" Value="0.025"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="motorcontactor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
								<Parameter Name="Name" Type="Property" Value="SUB02_K1"/>
								<Parameter Name="State" Type="Property" Value="Stop"/>
								<Parameter Name="In Voltage" Type="Input" Value="SUB00_AC.Output"/>
								<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
								<Parameter Name="Input" Type="Input" Value="oSUB02_K1.Value"/>
							</Parameters>
							<Children/>
						</Object>
					</Children>
				</Object>
				<Object Class="productinput">
					<Transform Position="[-0.75, 0.0, 0.4]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product input"/>
						<Parameter Name="Name" Type="Property" Value="ProductInput"/>
						<Parameter Name="Drop mode" Type="Property" Value="Random"/>
						<Parameter Name="Color" Type="Property" Value="[255, 255, 255, 255]"/>
						<Parameter Name="Drop signal" Type="Input" Value="SUB00_B1.Output"/>
					</Parameters>
					<Children>
						<Object Class="productcubepattern">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Product Cube Pattern"/>
								<Parameter Name="Name" Type="Property" Value="ProductPattern"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube"/>
								<Parameter Name="Scale" Type="Property" Value="[0.4, 0.4, 0.25]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use texture"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value="res/graphics/carton.jpg"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[0.4, 0.4, 0.25]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Material" Type="Property" Value="Paper"/>
								<Parameter Name="Mass" Type="Property" Value="1.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[0.4, 0.4, 0.25]"/>
							</Parameters>
							<Children/>
						</Object>
					</Children>
				</Object>
				<Object Class="productoutput">
					<Transform Position="[2.87944, -0.55, 0.4]" Quaternion="[0.0, 0.0, 0.0, 1.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product output"/>
						<Parameter Name="Name" Type="Property" Value="ProductOutput"/>
						<Parameter Name="Type" Type="Property" Value="Picker"/>
						<Parameter Name="State" Type="Property" Value="Not detecting"/>
						<Parameter Name="Picked object" Type="Property" Value=""/>
						<Parameter Name="Length" Type="Property" Value="0.5"/>
						<Parameter Name="Erase mode" Type="Property" Value="Min time"/>
						<Parameter Name="Erase time" Type="Property" Value="[0.2, 1.0]"/>
					</Parameters>
					<Children/>
				</Object>
			</Children>
		</Object>
	</Objects>
	<Resources/>
</SimumatikProject>
