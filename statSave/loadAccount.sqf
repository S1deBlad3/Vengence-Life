//ADD STATS THAT NEED TO BE LOADED HERE.
["positionPlayer"] call fn_LoadStat;
["directionPlayer"] call fn_LoadStat;
["inventoryPlayer"] call fn_LoadStat;
["gogglesPlayer"] call fn_LoadStat;
["vestPlayer"] call fn_LoadStat;
["outfit"] call fn_LoadStat;
["hat"] call fn_LoadStat;
["backpackPlayer"] call fn_LoadStat;
["weaponsPlayer"] call fn_LoadStat;
["magazinesPlayer"] call fn_LoadStat;
["itemsPlayer"] call fn_LoadStat;


//===========================================================================


//END
statsLoaded = 1;
player globalChat format ["Your stats are loaded %1.",name player];