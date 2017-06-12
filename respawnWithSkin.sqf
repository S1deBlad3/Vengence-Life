sleep 2;

if("terror" call INV_haslicense and isciv)then{_h = ["GUE_Soldier_1", "none"] execVM "masterChangeClass.sqf";waituntil{scriptdone _h}; player setpos getmarkerpos "gcvrs_lvrp3_marker";};
if("sobr_training" call INV_haslicense and iscop)then{_h = ["MVD_soldier", "none"] execVM "masterChangeClass.sqf";waituntil{scriptdone _h}; player setpos getmarkerpos "respawn_west";};

sleep 1;

{
	if(!isPlayer _x) then
	{
		_x setDammage 1;
		hideBody _x;
	};
} forEach units group player;