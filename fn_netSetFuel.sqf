private ["_obj","_fuel"];

_obj = _this select 0;    //vehicle
_fuel = _this select 1;    //fuel amount



// broadcast PV
PVEH_netSetFuel = [_obj,_fuel];
publicVariable "PVEH_netSetFuel";

// run on current machine also if not dedi server
if (not isDedicated) then {_obj setfuel _fuel};

true  