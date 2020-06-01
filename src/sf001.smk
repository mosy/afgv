<?xml version="1.0" ?>
<SimumatikProject Author="Simumatik" Name="GarageDoor" Version="0.3.4">
	 
	<Configuration/>
	<Objects>
		<Object Class="group">
			<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
			<Parameters>
				<Parameter Name="Class" Type="Property" Value="Group"/>
				<Parameter Name="Name" Type="Property" Value="Garage"/>
			</Parameters>
			<Children>
				<Object Class="acmotor">
					<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="AC Motor"/>
						<Parameter Name="Name" Type="Property" Value="Motor"/>
						<Parameter Name="State" Type="Property" Value="Stop"/>
						<Parameter Name="Nominal Voltage" Type="Property" Value="380.0"/>
						<Parameter Name="Nominal Frequency" Type="Property" Value="50.0"/>
						<Parameter Name="Poles" Type="Property" Value="4"/>
						<Parameter Name="Input" Type="Input" Value="MotorContactor.Out Voltage"/>
						<Parameter Name="Speed" Type="Output" Value="0.0"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="sensor">
					<Transform Position="[0.1, -0.6, 0.05]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Sensor"/>
						<Parameter Name="Name" Type="Property" Value="Sensor1"/>
						<Parameter Name="State" Type="Property" Value="Detecting"/>
						<Parameter Name="Type" Type="Property" Value="Retroreflective"/>
						<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
						<Parameter Name="Length" Type="Property" Value="0.1"/>
						<Parameter Name="Signal" Type="Output" Value="0"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="sensor">
					<Transform Position="[0.1, -0.6, 1.05]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Sensor"/>
						<Parameter Name="Name" Type="Property" Value="Sensor2"/>
						<Parameter Name="State" Type="Property" Value="Not detecting"/>
						<Parameter Name="Type" Type="Property" Value="Retroreflective"/>
						<Parameter Name="Logic" Type="Property" Value="Normally Off"/>
						<Parameter Name="Length" Type="Property" Value="0.1"/>
						<Parameter Name="Signal" Type="Output" Value="0"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="beacon">
					<Transform Position="[0.0, 0.7, 1.1]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="HMI Beacon"/>
						<Parameter Name="Name" Type="Property" Value="Beacon"/>
						<Parameter Name="Height" Type="Property" Value="0.1"/>
						<Parameter Name="Radius" Type="Property" Value="0.05"/>
						<Parameter Name="Stick Length" Type="Property" Value="0.0"/>
						<Parameter Name="Off Color" Type="Property" Value="[128, 128, 128, 255]"/>
						<Parameter Name="On Color" Type="Property" Value="[0, 255, 0, 255]"/>
						<Parameter Name="Input" Type="Input" Value="Light.Value"/>
					</Parameters>
					<Children/>
				</Object>
				<Object Class="electranslationaljoint">
					<Transform Position="[0.0, 0.0, 0.5]" Quaternion="[0.707, 0.0, -0.707, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Electric Translational Joint"/>
						<Parameter Name="Name" Type="Property" Value="Axis"/>
						<Parameter Name="Visible" Type="Property" Value="False"/>
						<Parameter Name="Type" Type="Property" Value="Translational"/>
						<Parameter Name="Limits" Type="Property" Value="[0.0, 1.0]"/>
						<Parameter Name="Speed" Type="Output" Value="0.0"/>
						<Parameter Name="Speed Rel." Type="Property" Value="0.0001"/>
						<Parameter Name="Motor Input" Type="Input" Value="Motor.Speed"/>
					</Parameters>
					<Children>
						<Object Class="modelphysics">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="3D object with physics"/>
								<Parameter Name="Name" Type="Property" Value="Door"/>
								<Parameter Name="File" Type="Property" Value="res/graphics/cube.egg"/>
								<Parameter Name="Scale" Type="Property" Value="[1.0, 1.0, 0.05]"/>
								<Parameter Name="Color" Type="Property" Value="[0, 0, 255, 255]"/>
								<Parameter Name="Texture" Type="Property" Value=""/>
								<Parameter Name="Physics shape" Type="Property" Value="Box"/>
								<Parameter Name="Physics dimensions" Type="Property" Value="[1.0, 1.0, 0.05]"/>
								<Parameter Name="Physics visible" Type="Property" Value="False"/>
								<Parameter Name="Material" Type="Property" Value="Wood"/>
								<Parameter Name="Mass" Type="Property" Value="0.0"/>
								<Parameter Name="Friction" Type="Property" Value="Medium"/>
							</Parameters>
							<Children>
								<Object Class="reflector">
									<Transform Position="[-0.45, -0.5, -0.1]" Quaternion="[0.707, 0.0, 0.0, 0.707]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Reflector"/>
										<Parameter Name="Name" Type="Property" Value="Reflector"/>
										<Parameter Name="File" Type="Property" Value="res/graphics/cylinder.egg"/>
										<Parameter Name="Scale" Type="Property" Value="[0.025, 0.05, 0.05]"/>
										<Parameter Name="Color" Type="Property" Value="[200, 200, 200, 255]"/>
										<Parameter Name="Texture" Type="Property" Value=""/>
										<Parameter Name="Physics shape" Type="Property" Value="CylinderX"/>
										<Parameter Name="Physics dimensions" Type="Property" Value="[0.025, 0.05, 0.05]"/>
										<Parameter Name="Physics visible" Type="Property" Value="False"/>
										<Parameter Name="Mass" Type="Property" Value="0.0"/>
										<Parameter Name="Friction" Type="Property" Value="Medium"/>
										<Parameter Name="Dimensions" Type="Property" Value="[0.025, 0.05, 0.05]"/>
										<Parameter Name="Material" Type="Property" Value="Reflex"/>
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
					<Transform Position="[0.0, 2.0, 0.25]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
					<Parameters>
						<Parameter Name="Class" Type="Property" Value="Electric Cabinet"/>
						<Parameter Name="Name" Type="Property" Value="Main Cabinet"/>
						<Parameter Name="File" Type="Property" Value="res/graphics/cube.egg"/>
						<Parameter Name="Scale" Type="Property" Value="[0.25, 0.25, 0.5]"/>
						<Parameter Name="Color" Type="Property" Value="[192, 192, 192, 255]"/>
						<Parameter Name="Texture" Type="Property" Value=""/>
						<Parameter Name="Physics shape" Type="Property" Value="Box"/>
						<Parameter Name="Physics dimensions" Type="Property" Value="[0.25, 0.25, 0.5]"/>
						<Parameter Name="Physics visible" Type="Property" Value="False"/>
						<Parameter Name="Mass" Type="Property" Value="0.0"/>
						<Parameter Name="Friction" Type="Property" Value="Medium"/>
						<Parameter Name="Dimensions" Type="Property" Value="[0.25, 0.25, 0.5]"/>
						<Parameter Name="Material" Type="Property" Value="Actuator"/>
					</Parameters>
					<Children>
						<Object Class="panel">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="HMI Panel"/>
								<Parameter Name="Name" Type="Property" Value="Panel"/>
								<Parameter Name="Width" Type="Property" Value="50"/>
								<Parameter Name="Height" Type="Property" Value="200"/>
								<Parameter Name="Color" Type="Property" Value="[192, 192, 192, 255]"/>
							</Parameters>
							<Children>
								<Object Class="button">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="HMI Button"/>
										<Parameter Name="Name" Type="Property" Value="DoorButton"/>
										<Parameter Name="Label" Type="Property" Value="Open Door"/>
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
								<Parameter Name="Name" Type="Property" Value="Source"/>
								<Parameter Name="State" Type="Property" Value="On"/>
								<Parameter Name="Voltage" Type="Property" Value="380.0"/>
								<Parameter Name="Frequency" Type="Property" Value="50.0"/>
								<Parameter Name="Output" Type="Output" Value="[0.0, 0.0]"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="motorreversingcontactor">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="Motor Reversing Contactor"/>
								<Parameter Name="Name" Type="Property" Value="MotorContactor"/>
								<Parameter Name="State" Type="Property" Value="Stop"/>
								<Parameter Name="In Voltage" Type="Input" Value="Source.Output"/>
								<Parameter Name="Out Voltage" Type="Output" Value="[0.0, 0.0]"/>
								<Parameter Name="Input Fwd" Type="Input" Value="MotorFwd.Value"/>
								<Parameter Name="Input Rev" Type="Input" Value="MotorRev.Value"/>
							</Parameters>
							<Children/>
						</Object>
						<Object Class="codesys">
							<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
							<Parameters>
								<Parameter Name="Class" Type="Property" Value="CoDeSys PLC via CoDeSys OPC Server"/>
								<Parameter Name="Name" Type="Property" Value="PLC"/>
								<Parameter Name="State" Type="Property" Value="Offline"/>
								<Parameter Name="Version" Type="Property" Value="CODESYS OPC Server V3"/>
								<Parameter Name="Topic" Type="Property" Value="PLC1.Application.GVL"/>
							</Parameters>
							<Children>
								<Object Class="writetaggroup">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
									<Parameters>
										<Parameter Name="Class" Type="Property" Value="Tag Group"/>
										<Parameter Name="Name" Type="Property" Value="Inputs"/>
										<Parameter Name="Type" Type="Property" Value="Write"/>
										<Parameter Name="State" Type="Property" Value="Offline"/>
										<Parameter Name="Update Rate" Type="Property" Value="100"/>
										<Parameter Name="Mode" Type="Property" Value="Write always"/>
									</Parameters>
									<Children>
										<Object Class="writetag">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="PLC tag"/>
												<Parameter Name="Name" Type="Property" Value="Button"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
												<Parameter Name="Value" Type="Input" Value="DoorButton.Output"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="writetag">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="PLC tag"/>
												<Parameter Name="Name" Type="Property" Value="SensorOpen"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
												<Parameter Name="Value" Type="Input" Value="Sensor2.Signal"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="writetag">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="PLC tag"/>
												<Parameter Name="Name" Type="Property" Value="SensorClose"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
												<Parameter Name="Value" Type="Input" Value="Sensor1.Signal"/>
											</Parameters>
											<Children/>
										</Object>
									</Children>
								</Object>
								<Object Class="readtaggroup">
									<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
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
												<Parameter Name="Name" Type="Property" Value="MotorFwd"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
												<Parameter Name="Value" Type="Output" Value="None"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="readtag">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="PLC tag"/>
												<Parameter Name="Name" Type="Property" Value="Light"/>
												<Parameter Name="State" Type="Property" Value="Offline"/>
												<Parameter Name="Value" Type="Output" Value="None"/>
											</Parameters>
											<Children/>
										</Object>
										<Object Class="readtag">
											<Transform Position="[0.0, 0.0, 0.0]" Quaternion="[1.0, 0.0, 0.0, 0.0]"/>
											<Parameters>
												<Parameter Name="Class" Type="Property" Value="PLC output variable"/>
												<Parameter Name="Name" Type="Property" Value="MotorRev"/>
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
