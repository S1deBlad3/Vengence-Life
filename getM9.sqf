if (!("bodyguard" call INV_HasLicense)) exitWith {player groupChat "You no longer have this job. This option still remains until you respawn but you cannot use it."};
if (('geld' call INV_GetItemAmount) < 10000) exitWith {player groupChat "Not enough money.";};
['geld', -10000] call INV_addinventoryitem;

player addWeapon "M9SD";
player addMagazine "15Rnd_9x19_M9SD";
player addMagazine "15Rnd_9x19_M9SD";
player addMagazine "15Rnd_9x19_M9SD";
player addMagazine "15Rnd_9x19_M9SD";
player addMagazine "15Rnd_9x19_M9SD";
player addMagazine "15Rnd_9x19_M9SD";
player addMagazine "15Rnd_9x19_M9SD";
player addMagazine "15Rnd_9x19_M9SD";

player groupChat "Weapon recieved. You are not allowed to drop the weapon for other civs. This is a bodyguard weapon.";