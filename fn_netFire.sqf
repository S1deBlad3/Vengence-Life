private ["_obj"];

_obj = _this select 0;    //target

// broadcast PV
PVEH_netFire = [_obj];
publicVariable "PVEH_netFire";

// run on current machine also if not dedi server
if (not isDedicated) then {[(_obj), 20, 5, [0, 1, -0.3], true, 1, false] spawn 
    AFS};

true  