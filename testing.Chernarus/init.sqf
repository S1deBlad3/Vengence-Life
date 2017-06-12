//Put this in your init

enableSaving [false, false];
[] execVM "key.sqf";

waituntil {!isnull (finddisplay 46)};
(findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call KEYDOWN_FNC;false;"];

player addaction ["Buy key", "something.sqf"];
player addaction ["Sit on chair","attach.sqf"];
player addaction ["Release","detach.sqf"];
player addaction ["Carry body","carry.sqf"];
