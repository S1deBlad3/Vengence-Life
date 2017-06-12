// openDoor.sqf
// © JUNE 2009 - norrin (norrin@iinet.net.au)

_vcl = _this select 0;

_vcl animate ["door_2_1",1];
_vcl animate ["door_1",1];

sleep 0.1;
_vcl setVariable ["NORRN_openDoor", true, true];


if (true) exitWith {};
