_ejected = false;
player groupChat "Transport commencing in 10 seconds. You have 10 seconds to get inside a vehicle if you want to transport that vehicle as well";
sleep 10;

if (vehicle player iskindof "Air") exitWith {player groupChat "You cannot load an air vehicle."};
_grp = createGroup west;
_wp = _grp addWaypoint [getmarkerpos "swatlz", 0];
[_wp, 0] setwaypointtype "MOVE";

//_c130 = "C130J" createVehicle [(position Player select 0) + (random 100), (position Player select 1) + 250, 500];
//_c130 setPos [(getPos _c130 select 0) + (_x * 10), (getPos _c130 select 1) + 400, 300];
_c130 = createVehicle ["C130J", position player, [], 0, "FLY"];
_c130 engineOn true;
_c130 setDir 170;
_dir = 170;
_speed = 500;
_c130 setVelocity [(sin _dir * _speed),(cos _dir * _speed), 0];
_c130 allowdammage false;
_c130 flyInHeight 300;

_man = "USMC_Soldier" createUnit [position player, _grp, "this moveInDriver _c130; this flyinHeight 250", 1];
_c130 lock true;

if(vehicle player != player) then
{
	(vehicle player) setpos [getpos _c130];
	(vehicle player) attachTo [_c130, [0,0,-9]];
	player commandChat "Welcome aboard. Please sit tight, we will be in cherno in no time. I will drop the vehicle once we are over the LZ. Please do not eject while we are flying. That will result in death and probably a vehicle glitch.";
}
else
{
	player moveInCargo [_c130, 1];
	player commandChat "Welcome aboard. Please sit tight, we will be in cherno in no time. I will eject you once we get to the LZ. All you have to do is enjoy the flight.";
};

while {!_ejected} do
{
	if (_c130 distance getmarkerpos "swatlz" <= 300) then
	{
		if (vehicle player iskindof "Air") then
		{
			_ejected = true;
			player action ["eject", vehicle player];
			
			sleep 8;
			deleteVehicle _c130;
			deleteVehicle _man;
		}
		else
		{
			_ejected = true;
			detach (vehicle player);
			
			sleep 8;
			deleteVehicle _c130;
			deleteVehicle _man;
		};
	};
	
	if (vehicle player == player and !_ejected) then
	{
		sleep 8;
		deleteVehicle _c130;
		deleteVehicle _man;
		_ejected = true;
	};
};

_ejected = false;
