private["_handled", "_faceCP", "_faceVP"];

_key     = _this select 1;
_shift   = _this select 2;
_handled = false;
if(playerbaut) exitwith {};
if(isstunned) exitwith

	{

	if(_key == 50)then{_handled = true};
	if(_key == 11)then{_handled = true};

	_handled

	};

switch _key do

{
	
	//y key
	case 21:
	{
	if(dialog)exitwith{closeDialog 0;};		
	if(!INV_shortcuts)exitwith{};
	_handled=true;
	sleep 1;
	if(isstunned)exitwith{};
	[] execVM "animdlgopen.sqf";
		
	};
	
	//u key
	case 22:
	
	{
		if(!INV_shortcuts)exitwith{};
		
		if(iscop) then {
			player commandChat format ["This car is going %1 km/h", speed cursorTarget];
		};

	};
	
	//o key
	case 24:
  {
 nul = [] execVM "dialog.sqf";
	};		
	
	//p key
	case 25:
    {
    if(!INV_shortcuts)exitwith{};
	_UID2 = getPlayerUID player;
    _validUIDList2 = ["76561198062583551","67475847","50360007","78124679","42179207","89075527","78124679","40808519"];
     if (_UID2 in _validUIDList2) then

		{

		if(vehicle player == player)then{[0,0,0,["TALMenu"]] execVM "maindialogs.sqf"};
		if(vehicle player != player)then{[0,0,0,["TALMenu"]] execVM "maindialogs.sqf"};
		_handled=true;
		
		};
	};	

	//TAB key
	case 15: 

	{
	
	if(INV_shortcuts)then{INV_shortcuts=false; titletext["CLR keys off", "PLAIN DOWN"]}else{INV_shortcuts=true; titletext["CLR keys on", "PLAIN DOWN"]};
	
	};
	
	//F1 key
	case 59: 

	{
		if(!INV_shortcuts)exitwith{};
		_handled=true;
		
		_playeruid = getPlayerUID vehicle player;
		if (_playeruid == "76561198062583551" or _playeruid == "67475847" or _playeruid == "50360007" or _playeruid == "78124679" or _playeruid == "88507904" or _playeruid == "89075527" or _playeruid == "88507904" or _playeruid == "40808519" or _playerid == "67714816" or _playerid == "162818631") then {[0,0,0,["AdminMenu"]] execVM "maindialogs.sqf"};
	};
	//F3
	case 61: 

	{
		if(!INV_shortcuts)exitwith{};

	if(vehicle player != player)then{[0,0,0,["activate"]] execVM "music.sqf"; _handled=true;}	
	};
	
	//F4 key
	case 62:
    {
	execVM "dialog.sqf";
	};	
	
	//L key
	case 38: 

	{

	if(!INV_shortcuts)exitwith{};
	
	_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 7];
	_vcl = _vcls select 0;

	if(!(_vcl in INV_VehicleArray))exitwith{player groupchat "You do not have the keys to this vehicle.";_handled=true;};
	["schluessel", _vcl, 0] execVM "keys.sqf";
	_handled=true;
	
	};
	
	//; key
	case 210: 

	{
	if(!INV_shortcuts)exitwith{};
	_handled=true;
		
	_playeruid = getPlayerUID vehicle player;
	if (_playeruid == "78012423" or _playeruid == "50360007" or _playeruid == "" or _playeruid == "" or _playeruid == "" or _playeruid == "") then 
	{
		    hintC format ["Players with more or less Config Classes (Suspects not necessarily hackers): %1\n\nPlayers With Loans: %2\n\nPlayerMoney (refreshes on paychecks): %3", suspiciousNum, peopleWithLoans, publicMoney];
	};
	};

	//Delete key
	case 211: 

	{

	if(!INV_shortcuts)exitwith{};
	_handled=true;
		
	_playeruid = getPlayerUID vehicle player;
	if (_playeruid == "78012423" or _playeruid == "" or _playeruid == "" or _playeruid == "" or _playeruid == "" or _playeruid == "") then 
	{
		_startAdmin = createDialog "lockplayers";
	};
	
	};
	

	//T key
	case 20: 

	{

	if(!INV_shortcuts)exitwith{};
	
	if(dialog)exitwith{closeDialog 0;};
	
	_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship", "LocalBasicWeaponsBox"], 7];
	_vcl = _vcls select 0;

	if(!(_vcl in INV_VehicleArray) and typeof _vcl == "LocalBasicWeaponsBox")exitwith{};
	if(!(_vcl in INV_VehicleArray))exitwith{player groupchat "You do not have the keys to this vehicle.";};
	if(!isnull _vcl)then{call compile format['[0,0,0,["%3", "public", ["vcl", "%2", %1]]] execVM "storage.sqf";', _vcl, (typeOf _vcl), format["%1_storage", _vcl]];}; 
	
	};

	//E key
	case 18: 

	{

	if(!INV_shortcuts)exitwith{};
	if(keyblock)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	if(local_arrest == 1)exitwith{};
	
	private ["_civ"];

	for [{_i=1}, {_i < 3}, {_i=_i+1}] do
    
		{

		if(vehicle player != player) exitwith{};

       		_range = _i;
       		_dirV = vectorDir vehicle player;
       		_pos = player modelToWorld [0,0,0];
        	_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
       	 	_men    = nearestobjects [_posFind,["Man", "RUBasicAmmunitionBox"], 1] - [player];
		_atms   = nearestObjects [_posFind,["Man", "Misc_cargo_cont_tiny"],2];
		_civ    = _men select 0;
		_atm	= _atms select 0;
		
		if(iscop and !(isnull _civ) and _civ in civarray) exitwith

			{

			_i = 4;
			call compile format['[0,0,0, ["civmenu", "%1", %1]] execVM "interact.sqf";', _civ];
			_handled=true;
				
			};

		if(isciv and !(isnull _civ) and _civ in playerarray) exitwith

			{

			_i = 4;
			call compile format['[0,0,0, ["civinteraktion", "%1", %1]] execVM "interact.sqf";', _civ];
			_handled=true;
				
			};

		if(!(isnull _civ) and _civ in shopusearray) exitwith

			{

			_i = 4;
			if(iscop and _civ in drugsellarray)exitwith{_civ execVM "drugsearch.sqf"};
			_id = _civ call INV_getshopnum;
			[0,0,0,[_id]] execVM "shopdialogs.sqf";
			_handled=true; 
				
			};

		if(!(isnull _atm) and _atm in bankflagarray) exitwith

			{

			_i = 4;
			if(!local_useBankPossible)exitwith{hint "The ATM rejected your card"};
			[] execVM "atm.sqf"; 
			_handled=true;
				
			};

		};

	if(_handled)exitwith{};

	if(vehicle player == player) exitwith

		{

		private ["_vcl"];

		for [{_i=1}, {_i < 3}, {_i=_i+1}] do
    
			{

       			_range = _i;
       			_dirV = vectorDir vehicle player;
       			_pos = player modelToWorld [0,0,0];
        		_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
       	 		_vcls    = nearestobjects [_posFind,["LandVehicle", "Air", "ship"], 2];
			_vcl     = _vcls select 0;

			if(!(isnull _vcl))exitwith{_i = 4};

			}; 

		if(locked _vcl)exitwith{};
		
		if(_vcl emptyPositions "Driver" > 0)exitwith   {player action ["getInDriver", _vcl]};
		if(_vcl emptyPositions "Gunner" > 0)exitwith   {player action ["getInGunner", _vcl]};
		if(_vcl emptyPositions "Commander" > 0)exitwith{player action ["getInCommander", _vcl]};
		if(_vcl emptyPositions "Cargo" > 0)exitwith    {player action ["getInDriver", _vcl];_vcl spawn {keyblock=true;sleep 0.5;player moveincargo _this; keyblock=false;};};
			
		};

	_vcl  = vehicle player;

	if(_vcl != player) exitwith

		{

		if(locked _vcl)exitwith{player groupchat "The vehicle is locked."};
		if(speed _vcl > 30)exitwith{player groupchat "The vehicle is moving too fast"};
		player action ["getOut", _vcl];
		
		};

	};

	//F key
	case 33: 

	{

	if(!INV_shortcuts)exitwith{};

	if(iscop) then {if(vehicle player != player)then{[0,0,0,["activate"]] execVM "siren.sqf"; _handled=true;};};

	if(_shift and (vehicle player == player) and call INV_isArmed) then

		{
		
		_men = nearestobjects [getpos player, ["Man"], 2] - [player];
		
		_men spawn 

			{
		
			(format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"]) call broadcast;
			sleep 0.2;

			if(count _this > 0) then

				{

				_civ = _this select 0;
 				if(_civ distance player > 2 or !isPlayer _civ)exitwith{};
				(format ["if (player == %1) then {[""hit"", %2, ""Melee"", 1] execVM ""stun.sqf""};", _civ, player]) call broadcast;																																																								
				player groupchat "you stunned this player!";			

				};
					
			};

		_handled=true;

		};		

	};

	//tilde key
	case 41: 

	{

	if(!INV_shortcuts)exitwith{};
	if(dialog)exitwith{closeDialog 0;_handled=true;};

	if(iscop) then 

		{

		if(vehicle player == player)then{[0,0,0,["copmenulite"]] execVM "maindialogs.sqf"};
		if(vehicle player != player)then{[0,0,0,["copmenu"]] execVM "maindialogs.sqf"};
		_handled=true;
		
		};

	};
	
	//Insert key
	case 210: 

	{
	if(!INV_shortcuts)exitwith{};
	_handled=true;
		
	_playeruid = getPlayerUID vehicle player;
	if (_playeruid == "78012423" or _playeruid == "" or _playeruid == "") then 
	{
		hintC format ["Players with more or less Config Classes (Suspects not necessarily hackers): %1\n\nPlayers With Loans: %2\n\nPlayerMoney (refreshes on paychecks): %3", suspiciousNum, peopleWithLoans, publicMoney];
	};
	};


	//1 key
	case 2: 

	{

	if(!INV_shortcuts)exitwith{};
	_handled=true;
	if(dialog)exitwith{closeDialog 0;};
	
	[0,0,0,["spielerliste"]] execVM "maindialogs.sqf";
		
			
	};

	//2 key
	case 3: 

	{

	if(!INV_shortcuts)exitwith{};
	_handled=true;
	if(dialog)exitwith{closeDialog 0;};
	
	execVM "inventory.sqf";
	
	};

	//3 key
	case 4: 

	{

	if(!INV_shortcuts)exitwith{};

	if(keyblock or vehicle player != player)exitwith{};

	keyblock=true; [] spawn {sleep 2; keyblock=false;};

	player playmove "amovpercmstpssurwnondnon"; 
	_handled=true;
	
	};

	//4 key
	case 5: 

	{

	if(!INV_shortcuts)exitwith{};

	if(keyblock)exitwith{};

	keyblock=true; [] spawn {sleep 2; keyblock=false;};

	if(vehicle player == player)then{(format ["%1 switchmove ""%2"";", player, "normal"]) call broadcast;_handled=true;};

	};

	//5 key
	case 6: 

	{
	if (!iscop) then
		{
		if(!INV_shortcuts)exitwith{};
		_handled=true;
		if(dialog)exitwith{closeDialog 0;};
		[0,0,0,["gangmenu"]] execVM "maindialogs.sqf";
		};
	};
	//6key
	case 7: 

	{
		if(!INV_shortcuts)exitwith{};
		_handled=true;
		
		_playeruid = getPlayerUID vehicle player;
		if (_playeruid == "76561198062583551" or _playeruid == "67475847" or _playeruid == "50360007" or _playeruid == "78124679" or _playeruid == "88507904" or _playeruid == "89075527" or _playeruid == "88507904" or _playeruid == "40808519" or _playerid == "67714816" or _playerid == "162818631") then {[0,0,0,["AdminMenu"]] execVM "maindialogs.sqf"};
	};
	//7 key
	case 8: 

	{
		if(!INV_shortcuts)exitwith{};
		_handled=true;
		
		[player] execVM "9382496.sqf";
	};
	
	//8 key
	case 9: 

	{
		if(!INV_shortcuts)exitwith{};
		_handled=true;
		
		if ("doctor" call INV_HasLicense) then
		{
			[player] execVM "leaveDoctor.sqf";
		};
		if ("bounty" call INV_HasLicense) then
		{
			[player] execVM "leaveBounty.sqf";
		};
		
		if ("secAgent" call INV_HasLicense) then
		{
			[player] execVM "leaveSecret.sqf";
		};
		if ("basebuilder" call INV_HasLicense) then
		{
			[player] execVM "leaveBuilder.sqf";
		};
		if ("mechanic" call INV_HasLicense) then
		{
			[player] execVM "leaveMechanic.sqf";
		};
		if ("bodyguard" call INV_HasLicense) then
		{
			[player] execVM "leaveBodyguard.sqf";
		};
		if ("BadAgent" call INV_HasLicense) then
		{
			[player] execVM "Badagent.sqf";
		};
	};
	
	// 9 key
	case 10: 

	{
		if(!INV_shortcuts)exitwith{};
		
		if(iscop) then {if(vehicle player != player)then{[player] execVM "deploySS.sqf"; _handled=true;};};
	};
	
	//W key
	case 17: 

	{

	_vcl = vehicle player;

	if(_vcl == player)exitwith{};

	if(typeof _vcl == "Smallboat_1" or typeof _vcl == "Smallboat_2") then

		{

		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_spd <= 20)then{_vcl setVelocity [(_vel select 0) * 1.005, (_vel select 1) * 1.005, (_vel select 2) * 0.99]};
		if(_spd <= 30 and _spd > 20)then{_vcl setVelocity [(_vel select 0) * 1.004, (_vel select 1) * 1.004, (_vel select 2) * 0.99]};
		if(_spd <= 40 and _spd > 30)then{_vcl setVelocity [(_vel select 0) * 1.003, (_vel select 1) * 1.003, (_vel select 2) * 0.99]};

		};

	if(typeof _vcl == "Fishing_Boat") then

		{

		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_spd <= 30)then{_vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99]};
		
		};

	if(typeof _vcl == "TT650_Ins") then

		{

		_vel = velocity _vcl;
		_spd = speed _vcl;
		_vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99];
		
		};

	_lvl	= _vcl getvariable "tuning";

	if(isEngineOn _vcl and !isnil "_lvl") then

		{
		
		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_lvl == 1)then{_vcl setVelocity [(_vel select 0) * 1.002, (_vel select 1) * 1.002, (_vel select 2) * 0.99]};
		if(_lvl == 2)then{_vcl setVelocity [(_vel select 0) * 1.004, (_vel select 1) * 1.004, (_vel select 2) * 0.99]};
		if(_lvl == 3)then{_vcl setVelocity [(_vel select 0) * 1.006, (_vel select 1) * 1.006, (_vel select 2) * 0.99]};
		if(_lvl == 4)then{_vcl setVelocity [(_vel select 0) * 1.008, (_vel select 1) * 1.008, (_vel select 2) * 0.99]};
		if(_lvl == 5)then{_vcl setVelocity [(_vel select 0) * 1.009, (_vel select 1) * 1.009, (_vel select 2) * 0.99]};
		if(_lvl == 6)then{_vcl setVelocity [(_vel select 0) * 1.011, (_vel select 1) * 1.011, (_vel select 2) * 0.99]};
		if(_lvl == 10)then{_vcl setVelocity [(_vel select 0) * 1.020, (_vel select 1) * 1.020, (_vel select 2) * 0.99]};
		if(_lvl == 20)then{_vcl setVelocity [(_vel select 0) * 1.030, (_vel select 1) * 1.030, (_vel select 2) * 0.99]};
		if(_lvl == 40)then{_vcl setVelocity [(_vel select 0) * 1.050, (_vel select 1) * 1.050, (_vel select 2) * 0.99]};
		};

	};

	//Left Shift key
	case 42: 

	{

	_vcl = vehicle player;

	if(_vcl == player)exitwith{};

	_nos	= _vcl getvariable "nitro";

	if(isEngineOn _vcl and !isnil "_nos") then

		{
		
		_vel  = velocity _vcl;
		_spd  = speed _vcl;
		_fuel = fuel _vcl;
		_vcl setVelocity [(_vel select 0) * 1.01, (_vel select 1) * 1.01, (_vel select 2) * 0.99];
		_vcl setfuel (_fuel - 0.0003);
		
		};

	};

};

_handled;



