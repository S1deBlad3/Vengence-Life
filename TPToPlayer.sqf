_n2sh = 10;  
_n2c = "Select Player:";
shnext = false;
nlist = [];  
ssdfsdhsdfh = "";

sdgsnhs = true;
if (sdgsnhs) then 
{
		 
	{if (_x != player) then {nlist set [count nlist, name _x];};} forEach playableUnits;
		
	shnmenu = 
	{
		_pmenu = [["",true],[_n2c, [-1], "", -5, [["expression", ""]], "1", "0"]];
		for "_i" from (_this select 0) to (_this select 1) do
		{_arr = [format['%1',nlist select (_i)], [_i - (_this select 0) + 2],  "", -5, [["expression", format["ssdfsdhsdfh = nlist select %1;",_i]]], "1", "1"];_pmenu set [_i+2, _arr];};
		if (count nlist >  (_this select 1)) then {_pmenu set [(_this select 1)+2, ["Next", [12], "", -5, [["expression", "shnext = true;"]], "1", "1"]];}
		else {_pmenu set [(_this select 1)+2, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];};
		_pmenu set [(_this select 1)+3, ["Exit", [13], "", -5, [["expression", "ssdfsdhsdfh = 'exitscript';"]], "1", "1"]];
		showCommandingMenu "#USER:_pmenu";
	};
	_j = 0; _n2sh = 10; if (_n2sh>9) then {_n2sh=10;};
	while {ssdfsdhsdfh==""} do
	{
		[_j,(_j+_n2sh) min (count nlist)] call shnmenu;_j=_j+_n2sh;
      WaitUntil {ssdfsdhsdfh!="" or shnext};	
		shnext = false;
	};

	
	if (ssdfsdhsdfh!= "exitscript") then
	{
		_name = ssdfsdhsdfh;
		{
			if(format[name _x] == _name) then 
			{
				
				player attachto [_x,[0.0,0.0,0.1]];
				sleep 1.0;
				detach player;

			};
		} forEach playableUnits;
	};
	sdgsnhs = false;
	
};