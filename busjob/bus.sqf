private ["_action","_busnumber","_vehbool","_veh","_objonroad"];

_action = _this select 3;
objonroad = isOnRoad player;


if (_action == "get") then {
if (busnumber >= 1) exitWith {hint "You have a bus"};
if (!objonroad) exitWith {hint "You are not on a road"}; 
busnumber = busnumber + 1;
if (busspawned) exitwith {
hint "Stuck here";
};
busspawned = true;
_bus = "Ikarus" createVehicle position player;
_player = player;

_player moveInDriver _bus;

hint format ["%1", busnumber];


_veh = typeof vehicle player;	

player addaction ["Bus name","busjob\busloop.sqf"];

execVM "busjob\busloop.sqf";



};

