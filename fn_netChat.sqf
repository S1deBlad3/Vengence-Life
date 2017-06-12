private ["_obj"];

_obj = _this select 0;    //chat msg


// broadcast PV
PVEH_netChat = [_obj];
publicVariable "PVEH_netChat";

// run on current machine also if not dedi server
if (not isDedicated) then {player globalchat _obj};

true  