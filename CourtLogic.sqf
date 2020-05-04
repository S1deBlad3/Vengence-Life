_loopart = _this select 0;
_geld    = 'geld' call INV_GetItemAmount;
_player = _this select 1;
//hint "nice its so broken";
//if (_loopart == "Court") then 

//{
//_strafe = _this select 1;					
//_cop    = _this select 1;		
_didpay = 0;
_copplayernumber = playersNumber west;
//_copticket = round(_strafe/_copplayernumber);	
																
if (!(createDialog "Court_calling")) exitWith {hint "Dialog Error!"};

ctrlSetText [1, format["Arrested you. Would you like to plead your case in court?"]];	

waitUntil{(not(ctrlVisible 1024))};		


//player groupchat format ["%1", courtDecide];
																			

if (courtDecide == 1) then

	{
		//["yes"] execVM "courtroom1.sqf";
		hint "you will be addressing the court soon, plead your case";
	};

if (courtDecide == 2) then

	{																	

	//["no"] execVM "courtroom1.sqf";
	 hint "you will be sent to jail now";
	};
	
	player groupchat format ["%1", courtDecide];

//};


