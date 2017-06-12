_carrier = _this select 0;
_pilot = _this select 1;
_action = _this select 2;

_pilot vehicleChat "Cancelled Attach";
_carrier removeAction _action;
_carrier addAction ["Attach Vehicle", "attachVehicle.sqf", [], 1, false, true, "", "driver _target == player"];
_carrier setVariable ["cancelledAttach", true];