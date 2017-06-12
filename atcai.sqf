if (('geld' call INV_GetItemAmount) < 2000000) exitWith {player groupChat "You Need 2 Million Dollars For This.";};
['geld', -2000000] call INV_addinventoryitem;

player commandChat "Left click on the map where you would like the ai to attack and they will appear there.";
openMap true;

onMapSingleClick "
onMapSingleClick """";
_terrgrp = createGroup sideEnemy;
_terrwp = _terrgrp addWaypoint [_pos, 0];
[_terrwp, 0] setwaypointtype ""GUARD"";

_terr1 = ""GUE_Soldier_2"" createUnit [_pos, _terrgrp, """", 1];
_terr2 = ""GUE_Soldier_1"" createUnit [_pos, _terrgrp, """", 0];
_terr3 = ""GUE_Soldier_1"" createUnit [_pos, _terrgrp, """", 0];
_terr4 = ""GUE_Soldier_1"" createUnit [_pos, _terrgrp, """", 0];
_terr5 = ""GUE_Soldier_1"" createUnit [_pos, _terrgrp, """", 0];
";

(format ['server globalchat "%1 is sending in terrorists to attack."', name player]) call broadcast;