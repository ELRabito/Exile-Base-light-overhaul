/**
 * ExileClient_object_portableGenerator_switchOn
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_portableGenerator", "_floodLights", "_sound"];
_portableGenerator = _this;
_floodLights = nearestObjects [_portableGenerator, ["Exile_Construction_FloodLight_Static","Land_PortableLight_double_F","Land_LampAirport_F","Land_LampHalogen_F","Land_LampShabby_F","Land_LampStreet_F","RwG_Construction_Overhead_Light_Static"], 100];
if (count _floodLights > 0) then
{
	{
	for "_i" from 0 to count getAllHitPointsDamage _x do
	{
		_x allowDamage true;
		_x setHitIndex [_i, 0];
		["toggleFloodLightRequest", [netId _x, 0]] call ExileClient_system_network_send;
		_x allowDamage false;
	};
} 
forEach _floodLights;
};
_sound = createSoundSource ["Exile_Sound_PortableGenerator", getPos _portableGenerator, [], 0];
_portableGenerator setVariable ["isRunning", true, true];
_portableGenerator setVariable ["Sound", _sound];
true
