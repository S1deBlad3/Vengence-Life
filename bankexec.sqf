_handler = [] execVM "bankvariables.sqf";
waitUntil {scriptDone _handler};

_handler = [] execVM "interest.sqf";

if ((vehicle player) == "MVD_Soldier";) then {StartGeld = 200000;};