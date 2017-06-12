//All Credits to this script goes to DGS
_this = _this select 3;
_art  = _this select 0;
_vcl  = vehicle player;
_playtime     = 5000;
_lichtstaerke = 0.3;
_shortDur     = 200.000;
_longDur      = 200.000;
_Songname = "Radio Music";

if (_art == "activate") then 
{
	if (isNil "SIREN_SirenePlaying") then 
	{
		SIREN_SirenePlaying = false;
	};
	
	if ((SIREN_SirenePlaying) or (!(player == (driver (vehicle player))))) exitWith {};
	
	SIREN_SirenePlaying = true;
	_turnOn       = false;
	
	if (call compile format["isNil(""%1_Sirene_on"")", _vcl]) then
	{
		_turnOn = true;
	}
	else 
	{
		if (call compile format["not(%1_Sirene_on)", _vcl]) then
		{
			_turnOn = true;
		}
		else 
		{
			_turnOn = false;
		};
	};
	
	if (_turnOn) then 
	{
		format ["[0,0,0,[""client"", %1]] execVM ""music.sqf"";", player] call broadcast;
		titletext["Music On - " + _Songname, "PLAIN DOWN"];
	} 
	else 
	{
		call compile format["%1_Sirene_on = false; publicVariable ""%1_Sirene_on"";", _vcl];
		titletext["Music off", "PLAIN DOWN"];
	};
	
	sleep 1;

	SIREN_SirenePlaying = false;
};

if (_art == "client") then 
{
	_vcl         = vehicle (_this select 1);
	_driver      = driver _vcl;
	_starttime   = time;
	
	call compile format["%1_Sirene_on = true;", _vcl];

	
	while {( ((time < _starttime+_playtime) or (_driver == driver _vcl)) and (alive _vcl) and (call compile format["%1_Sirene_on", _vcl]))} do 
	{
		if (player distance _vcl < 500) then 
		{
			_vcl say ["Radio", 1];
					sleep _shortDur;
		} 
		else
		{
			sleep 5;
		};

		if (isNull(_vcl)) exitWith {};
	};


	};

