private ["_obj", "_texture"];

_obj = _this select 0;    //object
_texture = _this select 1; //texture


// broadcast PV
PVEH_netSetObjectTexture = [_obj,_texture];
publicVariable "PVEH_netSetObjectTexture";

// run on current machine also if not dedi server
if (not isDedicated) then {_obj setObjectTexture [0, (_texture)]};

true  