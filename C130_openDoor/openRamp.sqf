// openRamp.sqf
// © JUNE 2009 - norrin (norrin@iinet.net.au)

_vcl = _this select 0;

_vcl animate ["ramp_top",1];
_vcl animate ["ramp_bottom",1];

sleep 0.1;
_vcl setVariable ["NORRN_openRamp", true, true];


if (true) exitWith {};
