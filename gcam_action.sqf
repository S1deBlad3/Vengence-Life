_uidList = [
"7202240",
"50360007",
"41575936",
"71625408",
"31437760",
"45950720"
];

if ((getPlayerUID vehicle player) in _uidList) then {
	player addAction ["Camera", "gcam.sqf", [], 1, false, true, "", ""];
};
