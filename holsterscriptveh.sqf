

while {true} do
{
vehicle addaction ["Holster Pistol","noscript.sqf",'["animation", "holsterpistol"] execVM "holsterscript.sqf";',1,false,true,"",'(player hasweapon "m9" or player hasweapon "Colt1911" or player hasweapon ""Makarov" or player hasweapon "MakarovSD" or player hasweapon "M9SD") and !noholster'];
vehicle addaction ["Holster Rifle","noscript.sqf",'["animation", "holsterrifle"] execVM "holsterscript.sqf";',1,false,true,"",'player hasweapon "Saiga12K" or player hasweapon "Huntingrifle" or player hasweapon "MP5A5" or player hasweapon "M1014" or player hasweapon "M16A2" or player hasweapon "MP5SD" or player hasweapon "VSS_vintorez" or player hasweapon "M4A1_HWS_GL" or player hasweapon "Huntingrifle" or player hasweapon "AK_47_M" or player hasweapon "PK"'];

};