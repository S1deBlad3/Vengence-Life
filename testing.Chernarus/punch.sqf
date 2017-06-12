_target = cursortarget;

if ((player distance _target)<50) then {

player switchMove "CtsDoktor_Vojak_uder1";

sleep 1;

_target switchmove "CtsDoktor_Doktor_uder4";

sleep 5;

_target setdamage 1;


_target switchmove "CtsDoktor_Doktor_idleni1";

sleep 5;

_target switchmove "CtsDoktor_Doktor_death";

};