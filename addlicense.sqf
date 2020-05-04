_this    = _this select 3;
_number  = _this select 0;
_art     = _this select 1;

if ((_art == "remove") or (_art == "add")) then 

{

if (_art == "add") then 

	{
	_uid = getPlayerUID vehicle  player;
	_license = ((INV_Lizenzen select _number) select 0);
	_name    = ((INV_Lizenzen select _number) select 2);
	_cost    = ((INV_Lizenzen select _number) select 3);
	if (_license call INV_HasLicense) exitWith {player groupChat localize "STRS_inv_buylicense_alreadytrue";};
	if (('geld' call INV_GetItemAmount) < _cost) exitWith {player groupChat localize "STRS_inv_buylicense_nomoney";};
	if(_license == "car" or _license == "truck")then{demerits = 10};	//demerits = Punkte wie in Flensburg

	if(_license == "bounty" and (CopsKilled >5)) exitWith {player groupChat "You killed to many Cops to become a bountyhunter."};
	if(_license == "bounty" and ("secAgent" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and ("doctor" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and ("mechanic" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bounty" and (iscop)) exitWith {player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "SWAT_training" and !(_UID in _SWATUIDList)) exitWith { player groupChat "You are not able to become a member of the Elite SWAT squad."};
	if(_license == "TV" and (_UID in _TVUIDList)) exitWith { player groupChat "Sorry, but you are not allowed to access this."};
	//if(_license == "sobr_training" and !(_uid in sobrerlaubt)) exitWith { player groupChat "You are not able to become a SOBR. If you a are good cop make a post in the HGS Forum then you will be able to buy this license."};
	if(_license == "gunprobationpistol" and (_uid in keineGun)) exitWith { player groupChat "Its not allowed to you to buy this license! You should think about changing your Gameplay!"};
	if(_license == "response_training" and (_uid in keincriminal)) exitWith { player groupChat "Its not allowed to you to buy this license! You should think about changing your Gameplay!"};
	if(_license == "terror" and (_uid in keinterror)) exitWith { player groupChat "Its not allowed to you to buy this license! You should think about changing your Gameplay!"};
	if(_license == "secAgent" and ("bounty" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and (iscop)) exitWith { player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "secAgent" and ("doctor" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and ("mechanic" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "secAgent" and (_uid in validUIDList)) exitWith { player groupChat format["%1, you have been banned from becoming a secret agent.", name player]};
	if(_license == "secAgent") then
	{
		isciv = false;
		iscop = true;
		player addWeapon "M9SD";
		player addMagazine "15Rnd_9x19_M9SD";
		player addMagazine "15Rnd_9x19_M9SD";
		player addMagazine "15Rnd_9x19_M9SD";
		player addMagazine "15Rnd_9x19_M9SD";
		player addMagazine "15Rnd_9x19_M9SD";
		player addMagazine "15Rnd_9x19_M9SD";
		player addMagazine "15Rnd_9x19_M9SD";
		player addMagazine "15Rnd_9x19_M9SD";
		player groupChat "You are now a secret agent and can arrest wanted people. Just getting this job and dropping your guns is a kickable offense. If you switch cop, leave job or else you get stuck with M9SD. Check map tabs for description.";
		INV_LizenzOwner = INV_LizenzOwner + ["probator"];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	};
	
	if(_license == "doctor" and ("bounty" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor" and ("secAgent" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor" and ("mechanic" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor" and (iscop)) exitWith {player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "doctor" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "doctor") then
	{
		player groupChat "You are now a Doctor and get bigger paychecks as well as the ability (if you scroll the mouse wheel) to make a medkit anywhere for 4k. Check map tabs for more information.";
		player addaction ["Make Medkit ($5,000)","makeMedkit.sqf",[],717];
	};
	
	if(_license == "basebuilder" and ("secAgent" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder" and ("doctor" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder" and ("bounty" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder" and ("mechanic" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "basebuilder") then
	{
		player groupChat "You are now a Base Builder and have a new action in scroll menu to buy base buildings. Check map tabs for more information.";
		player addaction ["Base Builder Menu","basebuilderinit.sqf",[],717];
	};
	
	if(_license == "mechanic" and ("bounty" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic" and ("secAgent" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic" and (iscop)) exitWith {player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "mechanic" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic" and ("doctor" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic" and ("bodyguard" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "mechanic") then
	{
		player groupChat "You are now a Mechanic and get bigger paychecks as well as the ability (if you scroll the mouse wheel) to make a large repair kit anywhere for 6k. Check map tabs for more information.";
		player addaction ["Make Large Repair Kit ($6,000)","makeRepair.sqf",[],717];
	};
	
	if(_license == "bodyguard" and ("bounty" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard" and ("secAgent" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard" and (iscop)) exitWith {player groupChat "Cops are not allowed to get civ jobs."};
	if(_license == "bodyguard" and ("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard" and ("doctor" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard" and ("mechanic" call INV_HasLicense)) exitWith { player groupChat "You already have a job. Leave that one before you join another."};
	if(_license == "bodyguard") then
	{
		player groupChat "You are now a bodyguard. You can order an m9 on the spot. Bodyguards cannot do illegal things unless their employer tells them too. They cannot kill without authorization. Dropping bodyguard weapon for other people is a kickable offense. Check map tabs for more information.";
		player addaction ["Bodyguard M9 ($10,000)","getM9.sqf",[],717];
	};

	if(_license == "medp") then
	{
		player groupChat "You are now a Medical Police Officer and get bigger paychecks as well as the ability (if you scroll the mouse wheel) to make a medkit anywhere for 4k. Check map tabs for more information.";
		player addaction ["Make Medkit ($5,000)","makeMedkitp.sqf",[],717];
	};
	

	['geld', -(_cost)] call INV_AddInventoryItem;
	player groupChat format[localize "STRS_inv_buylicense_gottraining", (_cost call ISSE_str_IntToStr), _name];

	if(_license == "bounty") then 
	{
		true call TurnBountyFunc;
	};
	
	
	
	//if(_license == "terror")exitwith{["GUE_Soldier_1", "terror"] execVM "masterChangeClass.sqf";};
	//if(_license == "sobr_training")exitwith{["MVD_soldier", "sobr_training"] execVM "masterChangeClass.sqf";};
	
	INV_LizenzOwner = INV_LizenzOwner + [_license];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	
	} 
	else 
	{

	_license = ((INV_Lizenzen select _number) select 0);
	name    = ((INV_Lizenzen select _number) select 2);
	if (not(_license call INV_HasLicense)) exitWith {player groupChat localize "STRS_inv_buylicense_alreadyfalse";};
	INV_LizenzOwner = INV_LizenzOwner - [_license];
	if(_license == "bounty") then {false call TurnBountyFunc;};
	player groupChat format[localize "STRS_inv_buylicense_losttraining", _name];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

	};

};

