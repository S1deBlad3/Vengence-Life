_target = cursortarget;

if ((player distance _target)<50) then {
systemChat "Distance check";
if (!isPlayer _target) then {
	systemChat "It is player";
	player switchmove "AwopPercMstpSgthWpstDnon_Part4";
	_target switchmove "AinjPfalMstpSnonWrflDnon_carried_up";
	sleep 6;
	_target attachTo [player, [0, 0, 0] ]; 
	_target = _carryied;
	
}else{
systemChat "It was not a player"};
};