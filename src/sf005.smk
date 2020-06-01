<?xml version="1.0" ?>
<SimumatikProject Ambient_light_color="[128, 128, 128, 255]" Ambient_light_enabled="True" Author="Simumatik" Name="TransferConveyor" Version="1.0.6">
	 
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
					<Transform Position="[0.0, 0.0, 0.3]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="System"/>
					</Parameters>
					<Children>
						<Object Class="group">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Group"/>
								<Parameter Name="Name" Type="Property" Value="Conveyors"/>
							</Parameters>
							<Children>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Motor1"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="C001.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="conveyor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Conveyor1"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Rollers"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="2.0"/>
										<Parameter Name="Width" Type="Property" Value="0.7"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="Motor1.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[0.0, -0.4, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="Conv1Sensor1"/>
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
										<Object Class="stopper">
											<Transform Position="[-0.5, 0.38, -0.15]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="leg"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.3"/>
												<Parameter Name="Height" Type="Property" Value="0.05"/>
												<Parameter Name="Width" Type="Property" Value="0.05"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="0.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="stopper">
											<Transform Position="[-0.5, -0.38, -0.15]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="leg1"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.3"/>
												<Parameter Name="Height" Type="Property" Value="0.05"/>
												<Parameter Name="Width" Type="Property" Value="0.05"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="0.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="stopper">
											<Transform Position="[3.5, -0.38, -0.15]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="leg2"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.3"/>
												<Parameter Name="Height" Type="Property" Value="0.05"/>
												<Parameter Name="Width" Type="Property" Value="0.05"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="0.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="stopper">
											<Transform Position="[3.5, 0.38, -0.15]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="leg3"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.3"/>
												<Parameter Name="Height" Type="Property" Value="0.05"/>
												<Parameter Name="Width" Type="Property" Value="0.05"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="0.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
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
										<Parameter Name="Input" Type="Input" Value="C002.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="conveyor">
									<Transform Position="[2.5, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Conveyor2"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Rollers"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="3.0"/>
										<Parameter Name="Width" Type="Property" Value="0.7"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="Motor2.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[-0.045, -0.4, 0.15]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="Conv2Sensor1"/>
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
											<Transform Position="[-0.8, -0.4, 0.3]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="Conv2Sensor3"/>
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
											<Transform Position="[1.3, -0.4, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="Conv2Sensor2"/>
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
								<Object Class="group">
									<Transform Position="[2.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Group"/>
										<Parameter Name="Name" Type="Property" Value="Transfer1"/>
									</Parameters>
									<Children>
										<Object Class="singleactingcylinder">
											<Transform Position="[0.0, 0.0, -0.11]" Quaternion="[0.707, 0.0, -0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Pneumatic Single Acting Cylinder"/>
												<Parameter Name="Name" Type="Property" Value="Cylinder1"/>
												<Parameter Name="Visible" Type="Property" Value="True"/>
												<Parameter Name="Type" Type="Property" Value="Translational"/>
												<Parameter Name="Limits" Type="Property" Value="[0.0, 0.1]"/>
												<Parameter Name="Speed" Type="Output" Value="0.0"/>
												<Parameter Name="Actual Position" Type="Output" Value="0.0"/>
												<Parameter Name="Upper limit sensor" Type="Output" Value="0"/>
												<Parameter Name="Lower limit sensor" Type="Output" Value="1"/>
												<Parameter Name="Speed Rel." Type="Property" Value="0.04"/>
												<Parameter Name="Length" Type="Property" Value="0.15"/>
												<Parameter Name="Radius" Type="Property" Value="0.025"/>
												<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
												<Parameter Name="Damping" Type="Property" Value="0.01"/>
												<Parameter Name="Stiffness" Type="Property" Value="20.0"/>
												<Parameter Name="Expand Input" Type="Input" Value="Valve1.Out Pressure"/>
											</Parameters>
											<Children>
												<Object Class="pneupiston">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Pneumatic Piston"/>
														<Parameter Name="Name" Type="Property" Value="Piston1"/>
														<Parameter Name="Visible" Type="Property" Value="True"/>
														<Parameter Name="Material" Type="Property" Value="Piston"/>
														<Parameter Name="Radius" Type="Property" Value="0.02"/>
														<Parameter Name="Width" Type="Property" Value="0.02"/>
														<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
														<Parameter Name="Length" Type="Property" Value="0.1"/>
													</Parameters>
													<Children>
														<Object Class="conveyor">
															<Transform Position="[0.07, 0.0, 0.0]" Quaternion="[0.5, 0.5, 0.5, 0.5]"/>
															<Parameters>
																<Parameter Name="Class" Type="Property" Value="Conveyor"/>
																<Parameter Name="Name" Type="Property" Value="TransConveyor"/>
																<Parameter Name="Material" Type="Property" Value="Actuator"/>
																<Parameter Name="Type" Type="Property" Value="Chains"/>
																<Parameter Name="Sides" Type="Property" Value="False"/>
																<Parameter Name="Mass" Type="Property" Value="0.0"/>
																<Parameter Name="Friction" Type="Property" Value="High"/>
																<Parameter Name="Length" Type="Property" Value="0.6"/>
																<Parameter Name="Width" Type="Property" Value="0.6"/>
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
												<Object Class="jointsensor">
													<Transform Position="[0.06, 0.0, 0.0225]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Joint Sensor"/>
														<Parameter Name="Name" Type="Property" Value="CylinderSensor1"/>
														<Parameter Name="State" Type="Property" Value="Not detecting"/>
														<Parameter Name="Type" Type="Property" Value="Cylinder"/>
														<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
														<Parameter Name="Location" Type="Property" Value="0.06"/>
														<Parameter Name="Signal" Type="Output" Value="0"/>
														<Parameter Name="Length" Type="Property" Value="0.025"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
										<Object Class="singleactingcylinder">
											<Transform Position="[0.5, 0.0, -0.12]" Quaternion="[0.707, 0.0, -0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Pneumatic Single Acting Cylinder"/>
												<Parameter Name="Name" Type="Property" Value="Cylinder2"/>
												<Parameter Name="Visible" Type="Property" Value="True"/>
												<Parameter Name="Type" Type="Property" Value="Translational"/>
												<Parameter Name="Limits" Type="Property" Value="[0.0, 0.1]"/>
												<Parameter Name="Speed" Type="Output" Value="0.0"/>
												<Parameter Name="Actual Position" Type="Output" Value="0.0"/>
												<Parameter Name="Upper limit sensor" Type="Output" Value="0"/>
												<Parameter Name="Lower limit sensor" Type="Output" Value="1"/>
												<Parameter Name="Speed Rel." Type="Property" Value="0.04"/>
												<Parameter Name="Length" Type="Property" Value="0.15"/>
												<Parameter Name="Radius" Type="Property" Value="0.025"/>
												<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
												<Parameter Name="Damping" Type="Property" Value="0.01"/>
												<Parameter Name="Stiffness" Type="Property" Value="20.0"/>
												<Parameter Name="Expand Input" Type="Input" Value="Valve2.Out Pressure"/>
											</Parameters>
											<Children>
												<Object Class="pneupiston">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Pneumatic Piston"/>
														<Parameter Name="Name" Type="Property" Value="Piston2"/>
														<Parameter Name="Visible" Type="Property" Value="True"/>
														<Parameter Name="Material" Type="Property" Value="Piston"/>
														<Parameter Name="Radius" Type="Property" Value="0.02"/>
														<Parameter Name="Width" Type="Property" Value="0.02"/>
														<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
														<Parameter Name="Length" Type="Property" Value="0.1"/>
													</Parameters>
													<Children>
														<Object Class="stopper">
															<Transform Position="[0.07, 0.0, 0.0]" Quaternion="[0.5, 0.5, 0.5, 0.5]"/>
															<Parameters>
																<Parameter Name="Class" Type="Property" Value="Stopper"/>
																<Parameter Name="Name" Type="Property" Value="Stopper"/>
																<Parameter Name="Material" Type="Property" Value="Actuator"/>
																<Parameter Name="Length" Type="Property" Value="0.5"/>
																<Parameter Name="Height" Type="Property" Value="0.1"/>
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
												<Object Class="jointsensor">
													<Transform Position="[0.06, 0.0, 0.0225]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Joint Sensor"/>
														<Parameter Name="Name" Type="Property" Value="CylinderSensor2"/>
														<Parameter Name="State" Type="Property" Value="Not detecting"/>
														<Parameter Name="Type" Type="Property" Value="Cylinder"/>
														<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
														<Parameter Name="Location" Type="Property" Value="0.06"/>
														<Parameter Name="Signal" Type="Output" Value="0"/>
														<Parameter Name="Length" Type="Property" Value="0.025"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
									</Children>
								</Object>
								<Object Class="conveyor">
									<Transform Position="[2.0, 1.2, 0.05]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Conveyor"/>
										<Parameter Name="Name" Type="Property" Value="Conveyor3"/>
										<Parameter Name="Material" Type="Property" Value="Actuator"/>
										<Parameter Name="Type" Type="Property" Value="Chains"/>
										<Parameter Name="Sides" Type="Property" Value="True"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="High"/>
										<Parameter Name="Length" Type="Property" Value="1.5"/>
										<Parameter Name="Width" Type="Property" Value="1.0"/>
										<Parameter Name="Height" Type="Property" Value="0.1"/>
										<Parameter Name="Feet height" Type="Property" Value="0.0"/>
										<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
										<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0002"/>
										<Parameter Name="Conv. Motor Input" Type="Input" Value="Motor4.Speed"/>
										<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children>
										<Object Class="sensor">
											<Transform Position="[0.65, -0.6, 0.15]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Sensor"/>
												<Parameter Name="Name" Type="Property" Value="Conv3Sensor1"/>
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
										<Object Class="stopper">
											<Transform Position="[0.5, 0.53, -0.15]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="leg4"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.3"/>
												<Parameter Name="Height" Type="Property" Value="0.05"/>
												<Parameter Name="Width" Type="Property" Value="0.05"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="0.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="stopper">
											<Transform Position="[0.5, -0.53, -0.15]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="leg5"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.3"/>
												<Parameter Name="Height" Type="Property" Value="0.05"/>
												<Parameter Name="Width" Type="Property" Value="0.05"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="0.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="stopper">
											<Transform Position="[-0.5, -0.53, -0.15]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="leg6"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.3"/>
												<Parameter Name="Height" Type="Property" Value="0.05"/>
												<Parameter Name="Width" Type="Property" Value="0.05"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="0.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="stopper">
											<Transform Position="[-0.5, 0.53, -0.15]" Quaternion="[0.707, 0.0, 0.707, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Stopper"/>
												<Parameter Name="Name" Type="Property" Value="leg7"/>
												<Parameter Name="Material" Type="Property" Value="Actuator"/>
												<Parameter Name="Length" Type="Property" Value="0.3"/>
												<Parameter Name="Height" Type="Property" Value="0.05"/>
												<Parameter Name="Width" Type="Property" Value="0.05"/>
												<Parameter Name="Friction" Type="Property" Value="Low"/>
												<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
												<Parameter Name="Side angle" Type="Property" Value="0.0"/>
												<Parameter Name="Side length" Type="Property" Value="0.0"/>
												<Parameter Name="Transparent" Type="Property" Value="False"/>
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
										<Parameter Name="Input" Type="Input" Value="C003.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="acmotor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Motor"/>
										<Parameter Name="Name" Type="Property" Value="Motor4"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
										<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
										<Parameter Name="Poles" Type="Property" Value="4"/>
										<Parameter Name="Input" Type="Input" Value="C004.Out Voltage"/>
										<Parameter Name="Speed" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="productinput">
							<Transform Position="[-0.4, 0.0, 0.2]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Product input"/>
								<Parameter Name="Name" Type="Property" Value="Box_Big"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Drop mode" Type="Property" Value="Random"/>
								<Parameter Name="Color" Type="Property" Value="[255, 255, 0, 255]"/>
								<Parameter Name="Drop signal" Type="Input" Value="DropBig.Output"/>
							</Parameters>
							<Children>
								<Object Class="productcubepattern">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product Cube Pattern"/>
										<Parameter Name="Name" Type="Property" Value="BigBox"/>
										<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
										<Parameter Name="Scale" Type="Property" Value="[1.0, 0.5, 0.3]"/>
										<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
										<Parameter Name="Color" Type="Property" Value="[255, 255, 0, 255]"/>
										<Parameter Name="Texture" Type="Property" Value=""/>
										<Parameter Name="Visible" Type="Property" Value="True"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
										<Parameter Name="Physics shape" Type="Property" Value="Box"/>
										<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 0.5, 0.3]"/>
										<Parameter Name="Physics visible" Type="Property" Value="False"/>
										<Parameter Name="Material" Type="Property" Value="Wood"/>
										<Parameter Name="Mass" Type="Property" Value="0.1"/>
										<Parameter Name="Friction" Type="Property" Value="Medium"/>
										<Parameter Name="Dimensions" Type="Property" Value="[1.0, 0.5, 0.3]"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="productinput">
							<Transform Position="[-0.4, 0.0, 0.2]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Product input"/>
								<Parameter Name="Name" Type="Property" Value="Box_Small"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Drop mode" Type="Property" Value="Random"/>
								<Parameter Name="Color" Type="Property" Value="[255, 128, 0, 255]"/>
								<Parameter Name="Drop signal" Type="Input" Value="DropSmall.Output"/>
							</Parameters>
							<Children>
								<Object Class="productcubepattern">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product Cube Pattern"/>
										<Parameter Name="Name" Type="Property" Value="SmallBox"/>
										<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
										<Parameter Name="Scale" Type="Property" Value="[1.0, 0.5, 0.2]"/>
										<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
										<Parameter Name="Color" Type="Property" Value="[255, 128, 0, 255]"/>
										<Parameter Name="Texture" Type="Property" Value=""/>
										<Parameter Name="Visible" Type="Property" Value="True"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
										<Parameter Name="Physics shape" Type="Property" Value="Box"/>
										<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 0.5, 0.2]"/>
										<Parameter Name="Physics visible" Type="Property" Value="False"/>
										<Parameter Name="Material" Type="Property" Value="Wood"/>
										<Parameter Name="Mass" Type="Property" Value="0.1"/>
										<Parameter Name="Friction" Type="Property" Value="Medium"/>
										<Parameter Name="Dimensions" Type="Property" Value="[1.0, 0.5, 0.2]"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="productoutput">
							<Transform Position="[4.2, 0.0, 0.15]" Quaternion="[0.0, 0.0, 0.0, 1.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Product output"/>
								<Parameter Name="Name" Type="Property" Value="productoutput"/>
								<Parameter Name="Type" Type="Property" Value="Picker"/>
								<Parameter Name="State" Type="Property" Value="Not detecting"/>
								<Parameter Name="Picked object" Type="Property" Value=""/>
								<Parameter Name="Length" Type="Property" Value="0.5"/>
								<Parameter Name="Hide range" Type="Property" Value="False"/>
								<Parameter Name="Erase mode" Type="Property" Value="Random time"/>
								<Parameter Name="Erase time" Type="Property" Value="[1.0, 5.0]"/>
								<Parameter Name="Erase signal" Type="Input" Value="None"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="productoutput">
							<Transform Position="[2.0, 2.3, 0.15]" Quaternion="[0.70711, 0.0, 0.0, -0.70711]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Product output"/>
								<Parameter Name="Name" Type="Property" Value="productoutput1"/>
								<Parameter Name="Type" Type="Property" Value="Picker"/>
								<Parameter Name="State" Type="Property" Value="Not detecting"/>
								<Parameter Name="Picked object" Type="Property" Value=""/>
								<Parameter Name="Length" Type="Property" Value="0.5"/>
								<Parameter Name="Hide range" Type="Property" Value="False"/>
								<Parameter Name="Erase mode" Type="Property" Value="Random time"/>
								<Parameter Name="Erase time" Type="Property" Value="[1.0, 5.0]"/>
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
						<Parameter Name="Name" Type="Property" Value="Control"/>
					</Parameters>
					<Children>
						<Object Class="elcabinet">
							<Transform Position="[0.0, 1.0, 0.5]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Electric Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="Main Cabin"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
								<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 1.0]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Visible" Type="Property" Value="True"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 1.0]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 1.0]"/>
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
											<Transform Position="[0.08, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="DropSmall"/>
												<Parameter Name="Label" Type="Property" Value="DROP SMALL"/>
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
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="DropBig"/>
												<Parameter Name="Label" Type="Property" Value="DROP BIG"/>
												<Parameter Name="Color" Type="Property" Value="[255, 255, 0, 255]"/>
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
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="C001"/>
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
										<Parameter Name="Name" Type="Property" Value="C003"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="TransFwd.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="C004"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Conv3Fwd.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="motorcontactor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Motor Contactor"/>
										<Parameter Name="Name" Type="Property" Value="C002"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="Conv2Fwd.Value"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="plc">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="CoDeSys PLC via CoDeSys OPC Server"/>
										<Parameter Name="Name" Type="Property" Value="PLC"/>
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
												<Parameter Name="Class" Type="Property" Value="PLC Output group"/>
												<Parameter Name="Name" Type="Property" Value="Outputs"/>
												<Parameter Name="Type" Type="Property" Value="Read"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
											</Parameters>
											<Children>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv1Fwd"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Fwd"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv3Fwd"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
														<Parameter Name="Name" Type="Property" Value="TransFwd"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
														<Parameter Name="Name" Type="Property" Value="TransUp"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
														<Parameter Name="Name" Type="Property" Value="StopUp"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
										<Object Class="writetaggroup">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="PLC Input group"/>
												<Parameter Name="Name" Type="Property" Value="Inputs"/>
												<Parameter Name="Type" Type="Property" Value="Write"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
											</Parameters>
											<Children>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv1Pos"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv1Sensor1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Pos1"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv2Sensor1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="StopUpPos"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="CylinderSensor2.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Pos2"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv2Sensor2.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv2Size"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv2Sensor3.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="TransUpPos"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="CylinderSensor1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="PLC input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv3Pos"/>
														<Parameter Name="State" Type="Property" Value="Offline"/>
														<Parameter Name="Value" Type="Input" Value="Conv3Sensor1.Signal"/>
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
							<Transform Position="[0.8, 1.0, 0.5]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Pneumatic Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="Pneumatic Cabin"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
								<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 1.0]"/>
								<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
								<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Visible" Type="Property" Value="True"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 1.0]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
								<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 1.0]"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
							</Parameters>
							<Children>
								<Object Class="valve_3_2_way">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Valve 3/2 Way"/>
										<Parameter Name="Name" Type="Property" Value="Valve1"/>
										<Parameter Name="State" Type="Property" Value="Closed"/>
										<Parameter Name="Normal State" Type="Property" Value="Closed"/>
										<Parameter Name="Input" Type="Input" Value="TransUp.Value"/>
										<Parameter Name="In Pressure" Type="Input" Value="Compressor.Output"/>
										<Parameter Name="Out Pressure" Type="Output" Value="0.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="aircompressor">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Air Compressor"/>
										<Parameter Name="Name" Type="Property" Value="Compressor"/>
										<Parameter Name="State" Type="Property" Value="On"/>
										<Parameter Name="Pressure" Type="Property" Value="6.0"/>
										<Parameter Name="Output" Type="Output" Value="6.0"/>
									</Parameters>
									<Children/>
								</Object>
								<Object Class="valve_3_2_way">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Valve 3/2 Way"/>
										<Parameter Name="Name" Type="Property" Value="Valve2"/>
										<Parameter Name="State" Type="Property" Value="Closed"/>
										<Parameter Name="Normal State" Type="Property" Value="Closed"/>
										<Parameter Name="Input" Type="Input" Value="StopUp.Value"/>
										<Parameter Name="In Pressure" Type="Input" Value="Compressor.Output"/>
										<Parameter Name="Out Pressure" Type="Output" Value="0.0"/>
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
					<Transform Position="[-8.98323, -3.82966, 0.15]" Quaternion="[-0.24069, 0.0, 0.0, 0.9706]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="BigBox1"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[1.0, 0.5, 0.3]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use color"/>
						<Parameter Name="Color" Type="Property" Value="[255, 255, 0, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 0.5, 0.3]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Wood"/>
						<Parameter Name="Mass" Type="Property" Value="0.1"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[1.0, 0.5, 0.3]"/>
					</Parameters>
					<Children/>
				</Object>
			</Children>
		</Object>
	</Objects>
	<Resources/>
</SimumatikProject>
