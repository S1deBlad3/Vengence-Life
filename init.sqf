enableSaving [false, false];
WEST setFriend [EAST, 1];
EAST setFriend [WEST, 1];
version        	= "1.01";
compatible     	= 102;
internDebug    	= false;
debug          	= false;
addonversion   	= false;
dedicatedServer = false;


execVM "TheGreatStep\Main.sqf";
