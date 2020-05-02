private ["_time1", "_time2"];
_time1 = _this select 0;
_time2 = _this select 1;

player groupChat format["You can not use an ATM for %1 minutes", (_time1 / 60)];

for [{_i = 0}, {_i <= _time1}, {_i + 60}] do {

	sleep 60;
	_time1 = _time1 - 60;
	player groupChat format["You can not use an ATM for %1 minutes", (_time1 / 60)];

};