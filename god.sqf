if (isnil ("gdmode2on")) then 
{
	gdmode2on = 0;
};

if (gdmode2on==0) then
{
	curPlayer = (vehicle player);
	publicVariable "curPlayer";
	sleep 0.1;
	
	_sCodeExec = 'curPlayer allowDamage false;';
	
	player setVehicleInit _sCodeExec;
	processInitCommands;
	clearVehicleInit player;
	
	gdmode2on=1;
	hint "God mode ON!";
}
else
{

	curPlayer = (vehicle player);
	publicVariable "curPlayer";
	sleep 0.1;
	
	_sCodeExec = 'curPlayer allowDamage true;';
	
	player setVehicleInit _sCodeExec;
	processInitCommands;
	clearVehicleInit player;
	
	gdmode2on=0;
	hint "God mode OFF!";
};