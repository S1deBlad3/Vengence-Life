_defendent = _this select 0;
_time = _this select 1;



if (!(createDialog "Court_decide")) exitWith {hint "Dialog Error!"};

ctrlSetText [3, format["Will you send %1 to jail for %2 minutes",_defendent, _time]];	



waitUntil{(not(ctrlVisible 1025))};		


//player groupchat format ["%1", courtDecide];
		
/*		

if (Fate == 1) then

	{
		//["yes"] execVM "courtroom1.sqf";
		hint "You be going to jail";
	};

if (Fate == 2) then

	{																	

	//["no"] execVM "courtroom1.sqf";
	 hint "you will be sent to jail now";
	};
	*/