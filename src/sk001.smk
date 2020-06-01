<?xml version="1.0" ?>
<SimumatikProject Ambient_light_color="[128, 128, 128, 255]" Ambient_light_enabled="True" Author="Simumatik" Name="Project" Version="1.0.6">
	 
	<Description>
		 
<![CDATA[V3JpdGUgeW91ciBwcm9qZWN0IGRlc2NyaXB0aW9uIGhlcmUuLi4=]]>	</Description>
	<Configuration/>
	<Objects>
		<Object Class="floor">
			<Transform Position="[0.15475, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
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
					<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="group"/>
					</Parameters>
					<Children>
						<Object Class="elcabinet">
							<Transform Position="[0.0, 1.0, 1.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Electric Cabinet"/>
								<Parameter Name="Name" Type="Property" Value="elcabinet"/>
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
										<Parameter Name="Name" Type="Property" Value="OperatorPanel"/>
										<Parameter Name="Width" Type="Property" Value="50"/>
										<Parameter Name="Height" Type="Property" Value="50"/>
										<Parameter Name="Color" Type="Property" Value="[192, 192, 192, 255]"/>
									</Parameters>
									<Children>
										<Object Class="button">
											<Transform Position="[0.01, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="StartKnapp"/>
												<Parameter Name="Label" Type="Property" Value="Start"/>
												<Parameter Name="Color" Type="Property" Value="[0, 128, 0, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="button">
											<Transform Position="[0.08, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Button"/>
												<Parameter Name="Name" Type="Property" Value="StoppKnapp"/>
												<Parameter Name="Label" Type="Property" Value="Stopp"/>
												<Parameter Name="Color" Type="Property" Value="[255, 0, 0, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally On"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="1"/>
												<Parameter Name="Output Inv" Type="Output" Value="0"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="lightbutton">
											<Transform Position="[0.15, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="HMI Light Button"/>
												<Parameter Name="Name" Type="Property" Value="DriftsLys"/>
												<Parameter Name="Label" Type="Property" Value="Drifts Lys"/>
												<Parameter Name="Color" Type="Property" Value="[131, 131, 131, 255]"/>
												<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
												<Parameter Name="Type" Type="Property" Value="button"/>
												<Parameter Name="Maintained" Type="Property" Value="False"/>
												<Parameter Name="Output" Type="Output" Value="0"/>
												<Parameter Name="Output Inv" Type="Output" Value="1"/>
												<Parameter Name="Light Color" Type="Property" Value="[243, 243, 243, 255]"/>
												<Parameter Name="Input" Type="Input" Value="MotorControl.Value"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="plc">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="PLC"/>
										<Parameter Name="Name" Type="Property" Value="plc"/>
										<Parameter Name="State" Type="Property" Value="Online"/>
										<Parameter Name="Disabled" Type="Property" Value="False"/>
										<Parameter Name="Server" Type="Property" Value="opc.tcp://localhost:4840"/>
										<Parameter Name="Device" Type="Property" Value=""/>
										<Parameter Name="Filter" Type="Property" Value=""/>
										<Parameter Name="Update Rate" Type="Property" Value="50"/>
									</Parameters>
									<Children>
										<Object Class="writetaggroup">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Input variables group"/>
												<Parameter Name="Name" Type="Property" Value="Inputs"/>
												<Parameter Name="Type" Type="Property" Value="Write"/>
												<Parameter Name="State" Type="Property" Value="Online"/>
											</Parameters>
											<Children>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Start"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="StartKnapp.Output"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Stopp"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="StoppKnapp.Output"/>
													</Parameters>
													<Children/>
												</Object>
												<Object Class="writetag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Input variable"/>
														<Parameter Name="Name" Type="Property" Value="Conv1Sens1"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Input" Value="Conv1Sensor1.Signal"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
										<Object Class="readtaggroup">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="Output variables group."/>
												<Parameter Name="Name" Type="Property" Value="Outputs"/>
												<Parameter Name="Type" Type="Property" Value="Read"/>
												<Parameter Name="State" Type="Property" Value="Online"/>
											</Parameters>
											<Children>
												<Object Class="readtag">
													<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
													<Parameters>
														<Parameter Name="Class" Type="Property" Value="Output variable"/>
														<Parameter Name="Name" Type="Property" Value="MotorControl"/>
														<Parameter Name="State" Type="Property" Value="Good"/>
														<Parameter Name="Value" Type="Output" Value="0"/>
													</Parameters>
													<Children/>
												</Object>
											</Children>
										</Object>
									</Children>
								</Object>
								<Object Class="acsource">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="AC Source"/>
										<Parameter Name="Name" Type="Property" Value="acsource"/>
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
										<Parameter Name="Name" Type="Property" Value="motorcontactor"/>
										<Parameter Name="State" Type="Property" Value="Stop"/>
										<Parameter Name="In Voltage" Type="Input" Value="acsource.Output"/>
										<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
										<Parameter Name="Input" Type="Input" Value="MotorControl.Value"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="productinput">
							<Transform Position="[-1.71644, 0.0, 1.45398]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Product input"/>
								<Parameter Name="Name" Type="Property" Value="productinput"/>
								<Parameter Name="Transparent" Type="Property" Value="False"/>
								<Parameter Name="Drop mode" Type="Property" Value="Random"/>
								<Parameter Name="Color" Type="Property" Value="[255, 255, 255, 255]"/>
								<Parameter Name="Drop signal" Type="Input" Value="StartKnapp.Output Inv"/>
							</Parameters>
							<Children>
								<Object Class="productcubepattern">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Product Cube Pattern"/>
										<Parameter Name="Name" Type="Property" Value="productcubepattern"/>
										<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
										<Parameter Name="Scale" Type="Property" Value="[1.0, 1.0, 1.0]"/>
										<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
										<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
										<Parameter Name="Texture" Type="Property" Value=""/>
										<Parameter Name="Visible" Type="Property" Value="True"/>
										<Parameter Name="Transparent" Type="Property" Value="False"/>
										<Parameter Name="Physics shape" Type="Property" Value="Box"/>
										<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 1.0, 1.0]"/>
										<Parameter Name="Physics visible" Type="Property" Value="False"/>
										<Parameter Name="Material" Type="Property" Value="Wood"/>
										<Parameter Name="Mass" Type="Property" Value="1.0"/>
										<Parameter Name="Friction" Type="Property" Value="Medium"/>
										<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
									</Parameters>
									<Children/>
								</Object>
							</Children>
						</Object>
						<Object Class="productoutput">
							<Transform Position="[0.86834, 0.0, 0.98166]" Quaternion="[0.70711, 0.0, -0.70711, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Product output"/>
								<Parameter Name="Name" Type="Property" Value="productoutput"/>
								<Parameter Name="Type" Type="Property" Value="Picker"/>
								<Parameter Name="State" Type="Property" Value="Not detecting"/>
								<Parameter Name="Picked object" Type="Property" Value=""/>
								<Parameter Name="Length" Type="Property" Value="0.2"/>
								<Parameter Name="Hide range" Type="Property" Value="False"/>
								<Parameter Name="Erase mode" Type="Property" Value="Max time"/>
								<Parameter Name="Erase time" Type="Property" Value="[1.0, 5.0]"/>
								<Parameter Name="Erase signal" Type="Input" Value="Conv1Sensor1.Signal"/>
							</Parameters>
							<Children/>
						</Object>
					</Children>
				</Object>
				<Object Class="group">
					<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Group"/>
						<Parameter Name="Name" Type="Property" Value="Conveyor1"/>
					</Parameters>
					<Children>
						<Object Class="acmotor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="AC Motor"/>
								<Parameter Name="Name" Type="Property" Value="acmotor"/>
								<Parameter Name="State" Type="Property" Value="Stop"/>
								<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
								<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
								<Parameter Name="Poles" Type="Property" Value="4"/>
								<Parameter Name="Input" Type="Input" Value="motorcontactor.Out Voltage"/>
								<Parameter Name="Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="conveyor">
							<Transform Position="[0.0, 0.0, 1.02486]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Conveyor"/>
								<Parameter Name="Name" Type="Property" Value="conveyor"/>
								<Parameter Name="Material" Type="Property" Value="Actuator"/>
								<Parameter Name="Type" Type="Property" Value="Rollers"/>
								<Parameter Name="Sides" Type="Property" Value="True"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="High"/>
								<Parameter Name="Length" Type="Property" Value="4.0"/>
								<Parameter Name="Width" Type="Property" Value="0.8"/>
								<Parameter Name="Height" Type="Property" Value="0.1"/>
								<Parameter Name="Feet height" Type="Property" Value="0.0"/>
								<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
								<Parameter Name="Conv. Speed Rel." Type="Property" Value="0.0001"/>
								<Parameter Name="Conv. Motor Input" Type="Input" Value="acmotor.Speed"/>
								<Parameter Name="Conv. Speed" Type="Output" Value="0.0"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="beacon">
							<Transform Position="[0.0, 1.0, 2.11]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="HMI Beacon"/>
								<Parameter Name="Name" Type="Property" Value="beacon"/>
								<Parameter Name="Height" Type="Property" Value="0.2"/>
								<Parameter Name="Radius" Type="Property" Value="0.05"/>
								<Parameter Name="Stick Length" Type="Property" Value="0.0"/>
								<Parameter Name="Off Color" Type="Property" Value="[128, 128, 128, 255]"/>
								<Parameter Name="On Color" Type="Property" Value="[0, 255, 0, 255]"/>
								<Parameter Name="Input" Type="Input" Value="DriftsLys.Output"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="sensor">
							<Transform Position="[1.0, -0.4, 1.2]" Quaternion="[0.70711, 0.0, 0.0, 0.70711]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Sensor"/>
								<Parameter Name="Name" Type="Property" Value="Conv1Sensor1"/>
								<Parameter Name="State" Type="Property" Value="Not detecting"/>
								<Parameter Name="Type" Type="Property" Value="Proximity"/>
								<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
								<Parameter Name="Length" Type="Property" Value="0.6"/>
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
		<Object Class="productholder">
			<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
			<Parameters>
				<Parameter Name="Class" Type="Property" Value="Product Holder"/>
				<Parameter Name="Name" Type="Property" Value="Products"/>
			</Parameters>
			<Children>
				<Object Class="productcube">
					<Transform Position="[2.75367, -0.23093, 0.25001]" Quaternion="[0.70639, 0.03227, 0.70635, -0.03221]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="productcubepattern1"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Wood"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[3.18242, -0.99401, 0.25]" Quaternion="[0.58548, -0.3965, -0.58548, -0.3965]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="productcubepattern2"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Wood"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[2.73477, -0.21618, 0.75]" Quaternion="[0.70711, 0.00691, 0.70704, -0.00679]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="productcubepattern3"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Wood"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[-3.22713, -0.72463, 0.25008]" Quaternion="[0.60665, -0.36348, 0.60653, 0.36328]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="productcubepattern4"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Wood"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[-3.50937, 0.04905, 0.25057]" Quaternion="[0.57675, 0.40847, -0.57704, 0.40931]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="productcubepattern5"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Wood"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[2.75872, -0.11067, 1.25]" Quaternion="[0.89505, 0.00015, 0.00012, 0.44597]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="productcubepattern6"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Wood"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[-2.19435, 1.75804, 0.25039]" Quaternion="[-0.32738, 0.62713, 0.32647, 0.62686]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="productcubepattern7"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Wood"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="productcube">
					<Transform Position="[0.18626, -3.1268, 0.25]" Quaternion="[0.50156, 0.0, -0.0, -0.86513]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Product Cube"/>
						<Parameter Name="Name" Type="Property" Value="productcubepattern8"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.bam"/>
						<Parameter Name="Scale" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Painting mode" Type="Property" Value="Use model materials"/>
						<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Visible" Type="Property" Value="True"/>
						<Parameter Name="Transparent" Type="Property" Value="False"/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Material" Type="Property" Value="Wood"/>
						<Parameter Name="Mass" Type="Property" Value="1.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.5, 0.5, 0.5]"/>
					</Parameters>
					<Children/>
				</Object>
			</Children>
		</Object>
	</Objects>
	<Resources/>
</SimumatikProject>
