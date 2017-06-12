_carrier = _this select 0;
_pilot = _this select 1;
_action = _this select 2;

_nearest = nearestObject [getPos _carrier, "LandVehicle"];

if ((typeOf _nearest) == "") exitWith { _carrier vehicleChat "No land vehicles near by" };

_carrier removeAction _action;
_carrier setVariable ["cancelledAttach", false];

_cancelAction = _carrier addAction ["Cancel Attach", "cancelAttach.sqf", [], 1, false, true, "", "driver _target == player"];

_carrier vehicleChat format ["Ready to attach vehicle --%1--", typeOf _nearest];

waitUntil { ( (_carrier distance _nearest) < 30 ) && ( (getPos _carrier select 2) > 7 ) && ( (getPos _carrier select 2) < 20 ) || _carrier getVariable "cancelledAttach" };

if (_carrier getVariable "cancelledAttach") exitWith { _carrier vehicleChat "Cancelled Vehicle Attach" };

_carrier vehicleChat format ["%1 now attached", typeOf _nearest];

_carrier setVariable ["attached", true];
_carrier removeAction _cancelAction;
_carrier addAction ["Detach Vehicle", "detachVehicle.sqf", _nearest, 1, false, true, "", "driver _target == player"];

while { _carrier getVariable "attached" } do { 
	_x = getPos _carrier select 0;
	_y = getPos _carrier select 1;
	_z = getPos _carrier select 2;
	_d = getDir _carrier;
	
	_nearest setPos [_x, _y, _z - 7];
	_nearest setDir _d;
};

[_carrier, _nearest] execVM "dropVehicle.sqf";