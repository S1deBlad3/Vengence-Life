_carrier = _this select 0;
_action = _this select 2;

_carrier removeAction _action;

_carrier vehicleChat "Vehicle Detached";

_newAction = _carrier addAction ["Attach Vehicle", "attachVehicle.sqf", [], 1, false, true, "", "driver _target == player"];
_carrier setVariable ["attachAction", _newAction];

_carrier setVariable ["attached", false];