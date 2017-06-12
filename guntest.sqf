_art = (_this select 3) select 0;

if(_art == "info")then

{

licenseflag2 sidechat "Ok, to score well in this test, when I give you your pistol, you must go through the door to your right and try to take out as many targets as possible.";
sleep 8;
licenseflag2 sidechat "You also get points for completing the course in the shortest time possible and using as few shots as possible.";
sleep 5;
licenseflag2 sidechat "if you are not sure where to go, simply follow the arrows.";
sleep 4;
licenseflag2 sidechat "please note that the targets will not pop up if you try to do the course backwards or in an unintended fashion.";
sleep 6;
licenseflag2 sidechat "Also you will only get points for the targets -you- hit, so dont think having some friends shooting targets for you is going to help.";

};

if(_art == "test")then

{
	INV_LizenzOwner = INV_LizenzOwner + ["semiautomatic"];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

};

if(_art == "rifle")then

{
	_geld = "geld" call INV_GetItemAmount;
	if ("semiautomatic" call INV_HasLicense) then
	{
		if (_geld >= 15000) then
		{
			INV_LizenzOwner = INV_LizenzOwner + ["riflelicense"];
			["geld", -(15000)] call INV_addinventoryitem;
			licenseflag2 sidechat format["You received a Semi-automatic rifle license!", name player]
		}		
		else
		{
		licenseflag2 sidechat format["You do not have enough money.", name player];
		}
	}	
	else
	{
		licenseflag2 sidechat format["You need a pistol license first!", name player];
	}	


};
