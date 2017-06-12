if (isnil ("HaxSmokeOn")) then 
{
	HaxSmokeOn = 0;
};

if (HaxSmokeOn==0) then
{
	HaxSmokeOn=1;
	hint "Smoke is ON!";
	
	sCode = 'while {HaxSmokeOn==1} do {';
	sCode = sCode + 'Flare = "SmokeShell" createVehicle position vehicle player;Flare attachTo [vehicle player,[0,0,0]];';
	sCode = sCode + 'Flare1 = "Smokeshellpurple" createVehicle position vehicle player;Flare1 attachTo [vehicle player,[1,0,0]];';
	sCode = sCode + 'Flare2 = "Smokeshellgreen" createVehicle position vehicle player;Flare2 attachTo [vehicle player,[2,0,0]];';
	sCode = sCode + 'Flare3 = "Smokeshellpurple" createVehicle position vehicle player;Flare3 attachTo [vehicle player,[-1,0,0]];';
	sCode = sCode + 'Flare4 = "Smokeshellgreen" createVehicle position vehicle player;Flare4 attachTo [vehicle player,[-2,0,0]];';
	sCode = sCode + 'Flare5 = "Smokeshellgreen" createVehicle position vehicle player;Flare5 attachTo [vehicle player,[-3,0,0]];';
	sCode = sCode + 'Flare6 = "Smokeshellgreen" createVehicle position vehicle player;Flare6 attachTo [vehicle player,[3,0,0]];';
	sCode = sCode + 'Flare7 = "SmokeShellRed" createVehicle position vehicle player;Flare7 attachTo [vehicle player,[4,0,0]];';
	sCode = sCode + 'Flare8 = "SmokeShellRed" createVehicle position vehicle player;Flare8 attachTo [vehicle player,[-4,0,0]];';
	sCode = sCode + 'sleep 28;};';
	
	[] spawn compile sCode;
}
else
{
	sleep 0.5;
	deleteVehicle Flare;
	deleteVehicle Flare1;
	deleteVehicle Flare2;
	deleteVehicle Flare3;
	deleteVehicle Flare4;
	deleteVehicle Flare5;
	deleteVehicle Flare6;
	deleteVehicle Flare7;
	deleteVehicle Flare8;
	HaxSmokeOn=0;
	hint "Smoke is OFF!";
};