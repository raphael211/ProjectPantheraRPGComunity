/*
    File: init.sqf
    Author: 
    
    Description:
    
*/
StartProgress = false;

if (hasInterface) then {
    [] execVM "briefing.sqf"; //Load Briefing
};
[] execVM "KRON_Strings.sqf";

if(getPlayerUID player in ["76561197977578516","76561197988128109"]) then
{
onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";

StartProgress = true;

