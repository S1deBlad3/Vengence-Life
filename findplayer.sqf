adminMenu_Players = playableUnits;

findplayer = 
{
	_adminMenu_Players = playableUnits;
	_sel = lbCurSel 1500;
	_selected = _adminMenu_Players select _sel;
	format["[] spawn {server globalChat ""%1 has been warned by an admin.""; if(name player == ""%1"") then {closeDialog 0; playSound ""warn""; titleText [""YOU HAVE BEEN WARNED BY AN ADMIN"",""BLACK""]; sleep 5; titleText [""Be good now..."",""PLAIN""];};};", name _selected] call broadcast;
};


clear = 
{
lbClear 1500;
};


testing =
{
_sel = lbCurSel 1500;
hint format[" %1", _sel];
};