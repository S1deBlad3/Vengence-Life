// openDoor_init.sqf
// © JUNE 2009 - norrin (norrin@iinet.net.au)

_vcl 		= _this select 0;
_c 			= 0;
_cc			= 0;
_openDoor = _vcl addAction ["Open C-130 doors", "C130_openDoor\openDoor.sqf", "", 0, false, true];
_closeDoor = _vcl addAction ["Close C-130 doors", "C130_openDoor\closeDoor.sqf","", 0, false, true];
_openRamp = _vcl addAction ["Open C-130 ramp", "C130_openDoor\openRamp.sqf", "", 0, false, true];
_closeRamp = _vcl addAction ["Close C-130 ramp", "C130_openDoor\closeRamp.sqf","", 0, false, true];
_toAttach 	= objNull;
_vcl removeAction _openDoor;
_vcl removeAction _closeDoor;
_vcl removeAction _openRamp;
_vcl removeAction _closeRamp;

if (isServer) then
{
	_vcl setVariable ["NORRN_openDoor", false, true];
	_vcl setVariable ["NORRN_openRamp", false, true];
	sleep 2;
};

while {alive _vcl} do
{ 	
	// Door action
	if (!(_vcl getVariable "NORRN_openDoor") && _c == 0) then
	{	
		_openDoor = _vcl addAction ["Open C-130 doors", "C130_openDoor\openDoor.sqf", "", 0, false, true];
		_vcl removeAction _closeDoor;
		_c = 1;
	};
		
	if ((_vcl getVariable "NORRN_openDoor") && _c == 1) then
	{	
		_closeDoor = _vcl addAction ["Close C-130 doors", "C130_openDoor\closeDoor.sqf","", 0, false, true];
		_vcl removeAction _openDoor;
		_c = 0;
	};
	// Ramp Action
	if (!(_vcl getVariable "NORRN_openRamp") && _cc == 0) then
	{	
		_openRamp = _vcl addAction ["Open C-130 ramp", "C130_openDoor\openRamp.sqf", "", 0, false, true];
		_vcl removeAction _closeRamp;
		_cc = 1;
	};
		
	if ((_vcl getVariable "NORRN_openRamp") && _cc == 1) then
	{	
		_closeRamp = _vcl addAction ["Close C-130 ramp", "C130_openDoor\closeRamp.sqf","", 0, false, true];
		_vcl removeAction _openRamp;
		_cc = 0;
	};
	sleep 2;
};
if (!alive _vcl) exitWith {};



