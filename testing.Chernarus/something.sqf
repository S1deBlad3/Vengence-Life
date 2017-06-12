_target = cursortarget;

if ((player distance _target)<50) then {
systemChat "Distance check";
if (!isPlayer _target) then {
	systemChat "It is player";
	player switchmove "AwopPercMstpSgthWpstDnon_Part4";
	_target switchmove "CtsDoktor_Doktor_idleni1";
	_target attachTo [tor, [0, 0, -0.5] ]; 
	_target setVectorDirAndUp [ [0, -1, 0], [0, 0, 1] ];
}else{
systemChat "It was not a player"};
};