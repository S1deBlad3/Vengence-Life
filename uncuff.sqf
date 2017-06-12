

_cop = _this select 0;

if (!alive player)exitwith{}; 

isstunned=false;
StunActiveTime=0;

player groupchat "You have been handcuffed!"; 


waituntil {(!(alive _cop)) or player distance _cop > 5};
	




	
	detach player;
	vehicle player action ["eject", vehicle player];
	vehicle player action ["getout", vehicle player];
	player groupchat "You managed to free yourself!"; 
	_me = player;
	(format ["%1 switchmove ""%2"";", player, "normal"]) call broadcast;
	isstunned=false;
	StunActiveTime=0;



