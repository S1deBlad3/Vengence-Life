_civmenuciv  = civmenuciv;
_civmenu_civ = civmenu_civ;
_geld        = 'geld' call INV_GetItemAmount;

//hint "nice";
//_strafe = _this select 1;
//if (!(_strafe call ISSE_str_isInteger)) exitWith {player groupChat localize "STRS_inv_no_valid_number";};
//_strafe = _strafe call ISSE_str_StrToInt;  if (_strafe <= 0) exitWith {};
//(format ["if (player == %1) then {[""Court"", %2] execVM ""CourtLogic.sqf"";}; server globalchat format[localize ""STRS_civmenu_ticket_globalchat"", name %1, name %2];", _civmenuciv, player] call broadcast; //Real Script
//(format ["if (player == %1) then {[""Court"", %1] execVM ""CourtLogic.sqf"";};", player] call broadcast;
//(format ["if (player == %1) then {hint ""working marre""};", player] call broadcast;
format ["if (player == %1) then {execVM ""CourtLogic.sqf""};", player] call broadcast;




