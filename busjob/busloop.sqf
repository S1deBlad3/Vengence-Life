//hint format ["%1", busspawned]; //Debug script
//Had to make the script easy for it to work
//There will be a bug that the script doesnt know what a bus is

_veh = typeof vehicle player;

hint format ["%1", _veh];


if (vehicle player != player) then {

hint _veh;

};


