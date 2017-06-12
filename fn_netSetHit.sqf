private ["_obj","_part","_damage"];

_obj = _this select 0;    //target
_part = _this select 1;    //part
_damage = _this select 2;    //damage

// broadcast PV
PVEH_netSetHit = [_obj,_part,_damage];
publicVariable "PVEH_netSetHit";

// run on current machine also if not dedi server
if (not isDedicated) then {_obj sethit [_part, _damage];};

true  