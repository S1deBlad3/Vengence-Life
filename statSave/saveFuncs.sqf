fn_SaveStat =
{
	_varName = _this select 0;
	_varValue = _this select 1;
	profileNameSpace setVariable [_varName + serverID,_varValue];
};

fn_LoadStat =
{
	_varName = _this select 0;
	_varValue = profileNameSpace getVariable (_varName + serverID);
	if(isNil "_varValue") exitWith {};
	[_varName,_varValue] call fn_SetStat;
};

//===========================================================================
//ADD VARIABLES TO THIS ARRAY THAT NEED SPECIAL SCRIPTING TO LOAD
specialVarLoads =
[
	"weaponsPlayer",
	"magazinesPlayer",
	"gogglesPlayer",
	"vestPlayer",
	"outfit",
	"hat",
	"backpackPlayer",
	"positionPlayer",
	"directionPlayer"
];

//THIS FUNCTIONS HANDLES HOW STATS ARE LOADED
fn_SetStat =
{
	_varName = _this select 0;
	_varValue = _this select 1;
	if(isNil '_varValue') exitWith {};
	if(_varName in specialVarLoads) then
	{
		if(_varName == 'positionPlayer') then {player setPosATL _varValue};
		if(_varName == 'directionPlayer') then {player setDir _varValue};
		if(_varName == 'gogglesPlayer') then {removeGoggles player; player addGoggles _varValue;};
		if(_varName == 'vestPlayer') then {removeVest player; player addVest _varValue;};
		if(_varName == 'outfit') then {removeUniform player; player addUniform _varValue;};
		if(_varName == 'hat') then {removeHeadGear player; player addHeadGear _varValue;};
		if(_varName == 'weaponsPlayer') then {if(count _varValue > 0) then {removeAllWeapons player; {player addWeapon _x} forEach _varValue;};};
		if(_varName == 'magazinesPlayer') then {if(count _varValue > 0) then {{player removeMagazine _x} forEach (magazines player); {player addMagazine _x} forEach _varValue; reload player};};
		if(_varName == 'backpackPlayer') then {player addBackpack _varValue;};
	}
	else
	{
		call compile format ["%1 = %2",_varName,_varValue];
	};
};

//==================================================================================================================================================================================================
saveFuncsLoaded = true;