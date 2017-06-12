private ["_obj"];

_obj = _this select 0;    //scriptname



// broadcast PV
PVEH_netExecVM = [_obj];
publicVariable "PVEH_netExecVM";

// run on current machine also if not dedi server
if (not isDedicated) then {execVM _obj};

true  