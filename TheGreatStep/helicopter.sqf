
private ["_playerPos", "_endMarker","startMarker","_heliPos"];
_playerPos = getpos player;
_heliPos = getpos TourHeli_1;
_endMarker = getmarkerpos "endPOS_1";
_startMarker = getmarkerpos "startPOS_1";
_geld      = 'geld' call INV_GetItemAmount;
if (_geld < 10000) exitWith {role groupChat "You don't have money for that";};
['geld', -(10000)] call INV_AddInventoryItem;


player moveincargo TourHeli_1;
TourHeli_1 lock false;
sleep 5;
TourHeli_1 lock true;

if (_playerPos distance _startMarker <= 50) then {


TourHeli_1 domove(getmarkerpos "endPOS_1");

i = 0;

loop = true;

while {loop} do {

if (_heliPos distance _endMarker <= 150) then {

loop = false;
};

_heliPos = getpos TourHeli_1;
sleep 3;
i = i + 1;
hintSilent str i;
};

hint "Distance is less then 150, landing";
TourHeli_1 land "LAND";
_playerPos = position player;
while {_PlayerPos select 2 > 5} do {
	TourHeli_1 land "LAND";
	_playerPos = position player;
	player groupchat format["%1", _playerPos select 2];
	sleep 2;
	}; 

player action ["Eject",vehicle player];
TourHeli_1 lock false;
sleep 10;
TourHeli_1 lock true;
//execVM "TheGreatStep\ReturnHeli.sqf";
}; 
hint "it got here";


_heliPos = position TourHeli_1;

sleep 10;

TourHeli_1 domove(getmarkerpos "startPOS_1");

i = 0;

loop = true;

player groupChat format["It got here before the loop"];

while {loop} do {

	if (_heliPos distance _startMarker <= 150) then {

	loop = false;
	};
player groupChat format["In the loop"];
	_heliPos = getpos TourHeli_1;
	sleep 3;
	//i = i + 1;
	//hint str i;
	};

_heliPos = getpos TourHeli_1;
while {__heliPos select 2 > 5} do {

TourHeli_1 land "LAND";
sleep 2;
};




