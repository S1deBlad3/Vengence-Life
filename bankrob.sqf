_this = _this select 3;
_art  = _this select 0;
_safe = _this select 1; 

if (_art == "ausrauben") then 

{	

//player setVariable ["bankreserve", 0, true];

banktest = 0;
publicVariable "banktest";
call compile format["local_cash = robpool%1", _safe];
format['[0,1,2,["opfer", %1, %2]] execVM "bankReserve.sqf";', _safe, local_cash] call broadcast;
local_cash = local_cash + banktest;
//if(local_cash < 10000)exitwith{player groupchat "This safe has recently been cracked open and contains nothing."}; //Debug

if(!robenable)exitwith{player groupchat "you are already robbing the bank"}; //Debug
//if(!(call INV_isArmed) and !debug)exitWith{player groupChat localize "STRS_bank_rob_noweapon";}; //Debug
robenable = false;
call compile format["robpool%1 = 0;publicvariable ""robpool%1"";", _safe];											
player groupChat format[localize "STRS_bank_rob_info", (robb_money call ISSE_str_IntToStr)];
format['[0,1,2,["opfer", %1, %2]] execVM "bankrob.sqf";', _safe, local_cash] call broadcast;
player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;

player groupChat format["bank testing script :  %1", banktest];

waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};

if (alive player) then 

	{
	
	['geld', local_cash] call INV_AddInventoryItem;
	player groupChat format[localize "STRS_bank_rob_success"];
	[local_cash] spawn Bank_Rob_End_Script;
		
	};

stolencash = stolencash + local_cash;

local_useBankPossible = false;
robenable = true;
rblock = rblock + ((local_cash/10000)*60);
_rblock = rblock;
[rblock, _rblock] execVM "bankTimer.sqf";
sleep 2;

if(_rblock != rblock)exitwith{};

for [{rblock}, {rblock > -1}, {rblock=rblock-1}] do {sleep 1;};												

local_useBankPossible = true;
stolencash = 0;
rblock	   = 0;


};


if (_art == "opfer") then 

{

_robpool = _this select 2;
_robpool = _robpool + banktest;
															
titleText [localize "STRS_bank_rob_titlemsg", "plain"];

_safe say "Bank_alarm"; //Debug
copbase1 say "Police_alarm";

sleep 8;

["Bank", "civilian", _robpool] spawn Isse_AddCrimeLogEntry;
server globalchat format["The bank robber stole $%1!", _robpool];

sleep 4;

_percentlost = _robpool/2000000;

if(_percentlost > Maxbankrobpercentlost)then{_percentlost == Maxbankrobpercentlost};

_verlust = round(bankmoney*_percentlost); 
			
if ((bankmoney <= _verlust) and (bankmoney >= 1) and (('bankversicherung' call INV_GetItemAmount) == 0)) then 

	{
																				
	bankmoney = 0;
	player groupChat localize "STRS_bank_rob_allmoneylost";

	};
					
if ((bankmoney >  _verlust) and (('bankversicherung' call INV_GetItemAmount) == 0)) then 

	{ 
													
	bankmoney = bankmoney - _verlust;
	player groupChat format[localize "STRS_bank_rob_somemoneylost", (_verlust call ISSE_str_IntToStr), (bankmoney call ISSE_str_IntToStr)];

	};
															
if (('bankversicherung' call INV_GetItemAmount) > 0) then 

	{		

	player groupChat localize "STRS_bank_rob_lostnomoney";
	['bankversicherung', -(1)] call INV_AddInventoryItem;				

	};

};

