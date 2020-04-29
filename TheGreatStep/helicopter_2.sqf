
private ["_playerPos", "_endMarker","startMarker", "_heliPos"];
playerPos = getpos player;
_heliPos = getpos TourHeli_2;
_endMarker = getmarkerpos "endPOS_2";
_startMarker = getmarkerpos "startPOS_2";
_geld      = 'geld' call INV_GetItemAmount;
if (_geld < 10000) exitWith {role groupChat "You don't have money for that";};
['geld', -(10000)] call INV_AddInventoryItem;

player moveincargo TourHeli_2;

TourHeli_2 lock false;
sleep 5;
TourHeli_2 lock true;

if (playerPos distance _startMarker <= 50) then {


TourHeli_2 domove(getmarkerpos "endPOS_2");

i = 0;

loop = true;

while {loop} do {

if (_heliPos distance _endMarker <= 200) then {

loop = false;
};

_heliPos = getpos TourHeli_2;
sleep 3;
i = i + 1;
hintSilent str i;
};

hint "Distance is less then 150, landing";
TourHeli_2 land "LAND";
playerPos = position player;
while {PlayerPos select 2 > 5} do {
	TourHeli_2 land "LAND";
	playerPos = position player;
	player groupchat format["%1", playerPos select 2];
	sleep 2;
	}; 

player action ["Eject",vehicle player];
TourHeli_2 lock false;
sleep 10;
TourHeli_2 lock true;
//execVM "TheGreatStep\ReturnHeli.sqf";
}; 
hint "it got here";


_heliPos = position TourHeli_2;

sleep 10;

TourHeli_2 domove(getmarkerpos "startPOS_2");

i = 0;

loop = true;

player groupChat format["It got here before the loop"];

while {loop} do {

	if (_heliPos distance _startMarker <= 150) then {

	loop = false;
	};
	player groupChat format["In the loop"];
	_heliPos = getpos TourHeli_2;
	sleep 3;
	//i = i + 1;
	//hint str i;
	};
	
	
_heliPos = getpos TourHeli_2;
while {__heliPos select 2 < 10} do {

TourHeli_2 land "LAND";
sleep 2;
};




