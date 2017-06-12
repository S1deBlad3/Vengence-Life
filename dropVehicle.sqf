_carrier = _this select 0;
_vehicle = _this select 1;

// don't bother opening chute if vehicle already at harmless altitude.

if (((getPos _vehicle) select 2) < 3) exitWith{};

// wait for safe distance from aircraft before we deploy parachute

waitUntil { (_vehicle distance _carrier) > 20 };

_vehiclePos = getPos _vehicle;
_chute = "ParachuteMediumWest" createVehicle [_vehiclePos select 0, _vehiclePos select 1, (_vehiclePos select 2) + 1];
_chute setDir (getDir _carrier);
_deployed = _time;

_vehicleVelocity = velocity _vehicle;
_chute setVelocity [_vehicleVelocity select 0, _vehicleVelocity select 1, _vehicleVelocity select 2];

_chute setPos [ (getPos _vehicle) select 0, (getPos _vehicle) select 1, ( (getPos _vehicle) select 2 ) + 1];

while { ((getPos _vehicle) select 2) > 3 } do
{
	_chutePos = getPos _chute;
	_x = _chutePos select 0;
	_y = _chutePos select 1;
	_z = _chutePos select 2;
	_d = getDir _chute;
	
	_vehicle setPos [_x, _y, _z - 3];
	_vehicle setDir _d;
};