
/*

waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
waitUntil {(getPlayerUID player) != ""};

reserved_units = [civ1, civ30, civ28, civ29, cop1, cop14, cop15, cop18, cop17, T100, T1001, T1001_3, T1001_4, T1001_8, T1001_5, T1001_6, T1001_7, T1001_1, T1001_2, civ2_1, civ23, T1002, T1003, T1001];
reserved_uids = ["243956422","168950470","144225158","166951942","78012423"];

_uid = getPlayerUId player;

if !((player in reserved_units)&& !(_uid in reserved_uids)) then {
   player groupChat "You are in a private slot, kicking to lobby in 5 seconds";
   sleep 5;
   failMission "end1";
 };
 
 
 */