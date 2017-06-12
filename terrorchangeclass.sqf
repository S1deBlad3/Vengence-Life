private ["_type", "_ar", "_oldUnit", "_newUnit", "_dummyUnit", "_dummyGroup", "_fSelectWeapon"];

_type = _this select 0;
_oldtype = typeof player;
_oldUnit = player;

_ar = [weapons _oldUnit, magazines _oldUnit, rank _oldUnit, score _oldUnit, group _oldUnit, getPos _oldUnit, (leader _oldUnit) == _oldUnit, vehicleVarName _oldUnit];

_fSelectWeapon = {
	private ["_unit", "_weap", "_cfg", "_muz", "_ar"];
	_unit = _this select 0;
	_weap = _this select 1;
	_cfg = (configFile >> "CfgWeapons" >> _weap >> "muzzles");
	if (isArray _cfg) then {
		_ar = getArray _cfg;
		_muz = _ar select 0;
		if (_muz == "this") then { _muz = _weap };
	} else {
		_muz = _weap;
	};

	if (player hasWeapon _weap) then { _unit selectWeapon _muz };
};

_dummyGroup = createGroup (side _oldUnit);
_dummyUnit = (_ar select 4) createUnit [_type, [0,0,0], [], 0, "NONE"]; // Join in the old group incase there was only 1 member
[_oldUnit] join _dummyGroup;

_newUnit = _dummyGroup createUnit [_type, _ar select 5, [], 0, "NONE"];
_newUnit disableAI "MOVE";
_newUnit disableAI "AUTOTARGET";
_newUnit disableAI "TARGET";
_newUnit disableAI "ANIM";

addSwitchableUnit _newUnit;
titleCut ["","black faded", 0];
player setpos getpos deadcamlogic;
sleep 1;

_oldUnit setVehicleInit format["this setVehicleVarName 'old%1'; old%1 = this", _ar select 7];
_newUnit setVehicleInit format["this setVehicleVarName '%1'; %1 = this;", _ar select 7];
processInitCommands;

selectPlayer _newUnit;
removeAllWeapons _newUnit;
{ _newUnit addMagazine _x } forEach (_ar select 1);
{ _newUnit addWeapon _x } forEach (_ar select 0);

if ((primaryWeapon _newUnit) != "") then { [_newUnit, primaryWeapon _newUnit] call _fSelectWeapon };

[_oldUnit] joinsilent (group server);
[_newUnit] joinsilent startgroup;
startgroup selectLeader _newUnit;
deleteVehicle _dummyUnit;
deletegroup _dummyGroup;

removeSwitchableUnit _newUnit;
removeSwitchableUnit _oldUnit;
_oldUnit setPos [9000 + (random 50), 8000 + (random 50), 0];

player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
//player addMPEventHandler ["MPKilled",{_this deleteVehicle _newUnit;}];
if(_type == "GUE_Soldier_1")then{INV_LizenzOwner = INV_LizenzOwner + ["terror"]; player setpos (_ar select 5)};
["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
execVM "actions.sqf";
execVM "briefing.sqf";

titleCut["", "BLACK in",2];