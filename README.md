##Exile Light tweak by El Rabito v0.3

## v0.3 Changes
>> Included the light "RwG_Construction_Overhead_Light_Static".


## Installation
##1. Copy the four files into the folder \Server\mpmissions\Exile.YOURMISSION\custom\Lights\
##2. Add the lines below to your CfgExileCustomCode located in config.cpp in your missionfile. 


	class CfgExileCustomCode 
	{
	
	//LightFix
	ExileServer_object_floodLight_network_toggleFloodLightRequest = "custom\Lights\ExileServer_object_floodLight_network_toggleFloodLightRequest.sqf";
	ExileClient_object_floodLight_network_toggleFloodLightRequest = "custom\Lights\ExileClient_object_floodLight_network_toggleFloodLightRequest.sqf";
	ExileClient_object_portableGenerator_switchOn = "custom\Lights\ExileClient_object_portableGenerator_switchOn.sqf";
	ExileClient_object_portableGenerator_switchOff = "custom\Lights\ExileClient_object_portableGenerator_switchOff.sqf";
	
	};
	


# License Info: If you server is named KFB (Kentucky Fried Bambi) you have no permission to use this. Any violation will result in a DMCA.
