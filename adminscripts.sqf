adminMenu_Players = playableUnits;
hint "upp and running";

hint = 
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;


	switch (_sel) do {
    case 1: { call hint3 };
    case 2: { call Godmode };
	case 3: { call playerA };
	case 4: { execVM "teleport.sqf" };
	case 5: { execVM "menu_commands.sqf" };
    default { hint "You have not selected a valid option" };
	};

};




hint2 =
{
	
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	
	hint "hint 3 is 1";
};




//Hinting
hint3 =
{
	
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	hint format ["%1", _selected];
};

//Godmode
Godmode =
{
	if (isnil ("gdmode2on")) then 
{
	gdmode2on = 0;
};

if (gdmode2on==0) then
{
	curPlayer = (vehicle player);
	publicVariable "curPlayer";
	sleep 0.1;
	
	_sCodeExec = 'curPlayer allowDamage false;';
	
	player setVehicleInit _sCodeExec;
	processInitCommands;
	clearVehicleInit player;
	
	gdmode2on=1;
	hint "God mode ON!";
}
else
{

	curPlayer = (vehicle player);
	publicVariable "curPlayer";
	sleep 0.1;
	
	_sCodeExec = 'curPlayer allowDamage true;';
	
	player setVehicleInit _sCodeExec;
	processInitCommands;
	clearVehicleInit player;
	
	gdmode2on=0;
	hint "God mode OFF!";
};
	
};


playerA = 
{
closeDialog 1500;
_ok = createDialog "EAT";
};



adminMenuKick =
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
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



