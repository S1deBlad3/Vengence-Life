private ["_obj"];

_obj = _this select 0;    //hint msg


// broadcast PV
PVEH_netHint = [_obj];
publicVariable "PVEH_netHint";

// run on current machine also if not dedi server
if (not isDedicated) then {hint _obj};

true  