

playerPos = getpos player;
heliPos = getpos heli;
endMarker = getmarkerpos "endPOS";
startMarker = getmarkerpos "startPOS";

if (playerPos distance heliPos <= 30) then {

hint "It marks the position";

player moveincargo heli;

sleep 2;

};

if (playerPos distance startMarker <= 50) then {


heli domove(getmarkerpos "endPOS");

i = 0;

loop = true;

while {loop} do {

if (heliPos distance endMarker <= 150) then {

loop = false;
};

heliPos = getpos heli;
sleep 3;
i = i + 1;
hint str i;
};

hint "Distance is less then 150, landing";
heli land "LAND";
sleep 20; 

//sleep 5;

player action ["Eject",vehicle player];



} else {

heli domove(getmarkerpos "startPOS");

i = 0;

loop = true;

while {loop} do {

if (heliPos distance startMarker <= 150) then {

loop = false;
};

heliPos = getpos heli;
sleep 3;
i = i + 1;
hint str i;
};

hint "Distance is less then 150, landing";

heli land "LAND";

sleep 20; 

player action ["Eject",vehicle player];

}; 

