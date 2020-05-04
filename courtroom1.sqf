private ["_defendent", "_prosecutor", "_time", "_judge"];

_defendent = _this select 0;
_time = _this select 1;
_prosecutor = _this select 2;
_bounty       = call compile format["kopfgeld_%1", player];
_reason = call compile format ["%1_reason", player];
_defplace = getMarkerPos "defendentSpawn";
_prosplace = getMarkerPos "LawerSpawn";
_oldprospos = getPos _prosecutor;
//_olddefpos = getPos _defendent;
_judge = playerstringarray select JudgeNumber;


format ["if (player == %1) then {[""get""] execVM ""JudgeTP.sqf""};", _judge] call broadcast;
//player groupChat format ["%1", _isit];

	if (isNil "_judge") then 
	{
		
		player groupchat format ["No judge to review your case. You will be sent straight to jail"];
		
		format['server globalChat "The Judge have decided that the defendent is guilty";'] call broadcast;

		format ["if (player == %1) then {[""arrest"", %2, %3] execVM ""civmenu.sqf"";};", _defendent, _time, _prosecutor] call broadcast;

		player groupChat format[localize "STRS_civmenu_arrested", _defendent];
 
		_prosecutor setPos [_oldprospos select 0, _oldprospos select 1, (_oldprospos select 2)];
		
	} else {


//format ["if (player == %1) then {player setPos [_prosplace select 0, _prosplace select 1, (_prosplace select 2)];};", _judge] call broadcast;
/*

for [{_c=0}, {_c < (count playerstringarray)}, {_c=_c+1}] do 
	{
	
	player groupchat format ["%1", _c];
	
   _Fspieler = playerstringarray select _c;
	
	if(_Fspieler == _judge) then {
	
	player groupchat format ["This is working"];
	
	};
	

	};

*/


player groupChat format ["%1 has plead his case. %2 has accused you of a crime worthy of %3 minutes in jail. You stand charged with %4   : which is worth %5", _defendent, _prosecutor, _time, _reason, _bounty];


//_defendent setPos [_defplace select 0, _defplace select 1, _defplace select 2 ];
//_prosecutor setPos getMarkerPos "lawerSpawn";


//Real ones
_defendent setPos [_defplace select 0, _defplace select 1, (_defplace select 2)];
(format ["%1 switchmove ""%2"";", _defendent, "unaercposlechvelitele1"]) call broadcast;
_prosecutor setPos [_prosplace select 0, _prosplace select 1, (_prosplace select 2)];

player groupChat format ["%1 is judge", _judge];
//hint str _prosplace;


for [{ _i = 0 }, { _i <= 10 }, { _i = _i + 11 }] do {



hint "loop";
 
format['server globalChat "%1 You have 30 seconds to prepare your case. %2 you have the same. Good luck. .";', _prosecutor, _defendent] call broadcast;
sleep 2;
 
 
 }; 
 
 
 format['server globalChat "Court is now in session. Good luck.";'] call broadcast;
 
 for [{ _i = 0 }, { _i <= 10 }, { _i = _i + 1 }] do {
sleep 1; 
 }; 
 
format['server globalChat "Court is over the judge will now give his verdict.";'] call broadcast;

format ["if (player == %1) then {[%2, %3] execVM ""Judgedecide.sqf""};", player, _defendent, _time] call broadcast; //change to judge

Fate = 0;
loop = 1;


scopeName "verdict";

hint "we got here";

while {loop == 1} do {

if (Fate == 1) then {


format['server globalChat "The Judge have decided that the defendent is guilty";'] call broadcast;

format ["if (player == %1) then {[""arrest"", %2, %3] execVM ""civmenu.sqf"";};", _defendent, _time, _prosecutor] call broadcast;

player groupChat format[localize "STRS_civmenu_arrested", _defendent];
 
//_prosecutor setPos [_oldprospos select 0, _oldprospos select 1, (_oldprospos select 2)];

format ["if (player == %1) then {[""set""] execVM ""JudgeTP.sqf""};", _judge] call broadcast;

loop = 0;
};

if (Fate == 2) then {

format['server globalChat "The Judge have decided that the defended is not guilty";'] call broadcast;
//_prosecutor setPos [_oldprospos select 0, _oldprospos select 1, (_oldprospos select 2)];
//_defendent setPos [_defplace select 0, _defplace select 1, (_defplace select 2)];
format ["if (player == %1) then {[""set""] execVM ""JudgeTP.sqf""};", _judge] call broadcast;
loop = 0;

};


//hint "Waiting for verdict";

sleep 1;

};

};
 




