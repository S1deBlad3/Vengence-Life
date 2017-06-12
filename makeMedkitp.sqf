if (!("medp" call INV_HasLicense)) exitWith {player groupChat "You no longer have this job. This option still remains until you respawn but you cannot use it."};
if (('geld' call INV_GetItemAmount) < 5000) exitWith {player groupChat "Not enough money.";};
['geld', -5000] call INV_addinventoryitem;

player playmove "AinvPknlMstpSlayWrflDnon_medic";
waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
['medikit',1] call INV_AddInventoryItem;
player groupChat "Medkit made. Press 2 to check inventory.";