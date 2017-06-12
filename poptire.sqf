 _art = _this select 0;

if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
_closeVcl   = dummyobj;
_closest    = -1;

	{ 

	if (not(isNull(_x))) then 

		{

		if ( ((player distance _x) < 7) and ( ((player distance _x) < _closest) or (_closest == -1) ) ) then 

			{

			_closest  = (player distance _x);
			_closeVcl = _x;	
		
			};

		};

	} forEach INV_ServerVclArray;	

if(typeof _closeVcl == "MMT_Civ" or typeof _closeVcl == "MMT_USMC")exitwith{hint "You can only pop tires on cars."};



if (not(_closest == -1)) then 

	{
	if(player distance chernologic < 300) then
	{	
	[format["%1 was seen slashing tires!",name player]] call fn_netHint;
	};

	player playMove "AinvPknlMstpSnonWnonDnon_AmovPknlMstpSrasWpstDnon"; 

	sleep 2; 
	WaitUntil {animationState player != "AinvPknlMstpSnonWnonDnon_AmovPknlMstpSrasWpstDnon"}; 
	_randomchance = random 50;
	if(_randomchance > 30) then
	{
	player groupchat "You failed to retrieve the knife.";
	[_item, -1] call INV_AddInventoryItem;
	};
	nul = [_closeVcl,"wheel_1_1_steering",1] call fn_netSetHit;
	nul = [_closeVcl,"wheel_1_2_steering",1] call fn_netSetHit;
	nul = [_closeVcl,"wheel_2_1_steering",1] call fn_netSetHit;
	nul = [_closeVcl,"wheel_2_2_steering",1] call fn_netSetHit;
	nul = [_closeVcl,"tirepop"] call fn_netSay3D;
	player groupchat "You popped the tires!";
	
	

	};

};