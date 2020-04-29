adminMenu_Players = playableUnits;
_x = player;
_uid = getPlayerUID player;
_walking = isWalking player;
//_form = format ["player:%1", _x];
lbAdd [1500, format ["player: %1 - Guid: %2 - Walking: %3 - Vcl: %4 - Bank: %5 - Inv: %6 - Gun: %7", name _x, _uid, _walking, if(vehicle _x != _x) then {typeOf (vehicle _x)} else {"No Vcl"}, _x getVariable "bankMoney", _x getVariable "moneyPlayer", weapons _x]]; forEach playableUnits;

for [{_i=0}, {_i < (count playerarray)}, {_i=_i+1}] do 
	{
		_spieler = playerarray select _i;
		lbAdd[1500, format["%1"], _spieler];
	};

lbSetCurSel [1500,0];

hint "upp and running";

adminMenuKick =
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	hint "working";
	format["serverCommand ""#kick %1"";",name _selected] call broadcast;
	format["%1 was kicked by an admin.",name _selected] call broadcast;
};

adminMenuBan =
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	format["serverCommand ""#ban %1"";",name _selected] call broadcast;
	format["%1 was banned by an admin.",name _selected] call broadcast;
};

adminMenuCrash =
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	format["if(name player == ""%1"") then {for ""_i"" from 0 to 100 do {_d = findDisplay _i; _d closeDisplay 0;};};",name _selected] call broadcast;
};

adminMenuWarn =
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	format["[] spawn {server globalChat ""%1 has been warned by an admin.""; if(name player == ""%1"") then {closeDialog 0; playSound ""warn""; titleText [""YOU HAVE BEEN WARNED BY AN ADMIN"",""BLACK""]; sleep 5; titleText [""Be good now..."",""PLAIN""];};};", name _selected] call broadcast;
};

adminMenuTeleport =
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	(vehicle player) setPosATL (getPosATL _selected);
	server globalChat format["You have teleported to %1",name _selected];
};

adminMenuLock =
{
	gamerzlock = 'serverCommand "#lock";';
	player setVehicleInit gamerzlock;
	processInitCommands;
	clearVehicleInit player;
	hint "SERVER IS LOCKED!";
	gamerzlock = nil;
};

adminMenuUnlock = 
{
	gamerzunlock = 'serverCommand "#unlock";';
    player setVehicleInit gamerzunlock;
    processInitCommands;
    clearVehicleInit player;
    hint "SERVER IS UNLOCKED!";
    gamerzunlock = nil;
};

adminMenuClean = 
{
	execVM "gamerz\cleanme2.sqf";
	hint "Cleaner Starting in 30 Seconds";
};

adminMenuFix = 
{
    execVM "gamerz\fixbuildings.sqf";
	hint "Building Fixer Starting in 30 Seconds";
};

adminMenuSup40 = 
{
	//if (isModerator) exitwith {hint "For Admins + Only!";};
	//["supgrade40",1] call INV_AddInventoryItem;
	hint "Your attempted abuse has been logged for a Dev.";
};

adminMenuPick = 
{
	//if (isModerator) exitwith {hint "For Admins + Only!";};
	//execVM "gamerz\lockpick2.sqf";
	hint "Your attempted abuse has been logged for a Dev.";
};

adminMenuSkipTime = 
{
	execVM "gamerz\skip2hours.sqf";
};

adminMenuRepair = 
{
	if (isModerator) exitwith {hint "For Admins + Only!";};
	vehicle player setfuel 1;
	vehicle player setvehicleammo 1;
	vehicle player setdammage 0;
	hint "Repaired";
};

testing = 
{
hint "Working";
};
