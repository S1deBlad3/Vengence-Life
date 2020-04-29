private ["_bankReserve"];
_this = _this select 3;
_item = _this select 0;
_item2 = _this select 1;
_item3 = _this select 2;
_array = [_item, _item2, _item3];
_array2 = [];

//_bankReserve = player getVariable "bankreserve";
//_bankReserve = 0;
//_bankReserve = _bankReserve + bankmoney;
	banktest = banktest + bankmoney;
//player groupChat format["bank testing script :%1", banktest];
	publicVariable "banktest";


/*
if(_bankReserve > 500000) then {
	player groupChat "Max amount of money";
	player setVariable ["bankreserve", _bankReserve, true];
} else {
};

*/

if(banktest > 200000) then {

banktest = 200000;
publicVariable "banktest";

};




//player setVariable ["bankreserve", _bankReserve, true];

//_array2 = _array2 + [bankreserve] + [_bankReserve];

_array2 = _array2 + [banktest];

hint str _array2;


//publicVariable "bankreserve";
