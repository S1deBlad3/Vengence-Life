
while{zipping == 1 and alive player} do 
	{
		_veh = vehicle player;
		
		if(vehicle civmenuciv != vehicle player) then {if(vehicle player iskindof "bicycle") then {player groupchat "You have no available passenger seats!"} else {detach civmenuciv; format['%2 moveincargo %1',_veh,civmenuciv] call broadcast;};};
        if(vehicle player == player) then {format['moveOut %1',civmenuciv] call broadcast; civmenuciv attachto [player,[0,1,0]]; (format ["%1 switchmove ""%2"";", civmenuciv, "UnaErcPoslechVelitele4"]) call broadcast;};
		
		if(!alive player) then {zipping = 0; detach civmenuciv;};
		
		/*
		if !(animationstate player == "UnaErcPoslechVelitele4")then {player groupchat "The civilian is out of his cuffs."; cuffing = 0; detach civmenuciv; (format ["%1 switchmove %2;", civmenuciv, "normal"]) call broadcast;};
		*/
		//if((vehicle player) distance (civmenuciv) > 10) then {hint "The suspect has escaped!";cuffing = 0;, detach civmenuciv};
		sleep 2;		
	};

	

