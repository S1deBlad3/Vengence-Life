_carrier = _this select 0;
_position = _this select 1;
_unit = _this select 2;

if (not (_carrier isKindOf "UH60_Base" || _carrier isKindOf "MV22")) exitWith { hint "Wrong object type for attach vehicle!" };

if (_position != "driver") exitWith {hint "lol"};

_this addAction ["Attach Vehicle", "attachVehicle.sqf", false, false, true, 1, "", "driver _target == player"];