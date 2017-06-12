private["_nyan, _plr, _case"];

_plr = _this select 0;

_case = _this select 1;

_class = "";

_pos = getposatl player;

if (_plr == "") exitwith { Hint "Some how there was an error check your scripts : or You need to select a name in the player list , if you wish to activate it on all players then click all players or select an indevidiual name to perform that action onto. then click EXECUTE.";};

if (_plr == "ALL PLAYERS") then {_plr = "";};
if (_plr == "EVERYONE BUT ME") then {_plr = "FUCKEMGRANDPAIHATEJEWS";};


Switch (_case) do
{
	case "Teleport others to you":
	{
		_class = format ["player setVariable['lastPos',0]; 
		player setposatl [%1,%2,%3];", _pos select 0, _pos select 1, _pos select 2];
	};
};
nil = [_plr, 11 ,_class] execVM "wuat\scripts\Dwarden.sqf";
