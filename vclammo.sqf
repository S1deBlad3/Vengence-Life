 _art = _this select 0;

if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
_vcl    = vehicle player;

if (player == _vcl) exitWith {player groupChat localize "STRS_inv_item_vclammo_novehicle";};
_vehiclepimpweapons = ["DSHKM","PKT","M240_veh","M240_veh_2","KPVT","SPG9","FFARLauncher_14","M134","M2","ZiS_S_53","DT_veh","KPVT","Offroad_SPG9_Gue","AGS30","YakB","AT6Launcher","S8Launcher","GAU12","BombLauncherF35","SidewinderLaucher_F35"];
_vehiclepimpammos   = ["150Rnd_127x107_DSHKM","1500Rnd_762x54_PK","100Rnd_762x51_M240","500Rnd_145x115_KPVT","PG9_AT","OG9_HE","14Rnd_FFAR","2000Rnd_762x51_M134","4000Rnd_762x51_M134","1200Rnd_762x51_M240","100Rnd_127x99_M2","33Rnd_85mmHE","PG9_AT","300Rnd_25mm_GAU12","2Rnd_GBU12","2Rnd_Sidewinder_F35","1470Rnd_127x108_YakB","4Rnd_AT6_Mi24V","80Rnd_80mm","29Rnd_30mm_AGS30"];
_hasRearmableWeapon = 0;
_rearmWeaponarray   = [];

for [{_i=0}, {_i < (count _vehiclepimpweapons)}, {_i=_i+1}] do 

	{	

	if ((_vehiclepimpweapons select _i) in (weapons _vcl)) then 

		{

		_rearmWeaponarray = _rearmWeaponarray + [ [(_vehiclepimpweapons select _i), _i] ];
		_hasRearmableWeapon = 1;

		};

	};

if (_hasRearmableWeapon == 0) exitWith {player groupChat localize "STRS_inv_item_vclammo_nomg";};

	{	

	_waffe = _x select 0;
	_muni = _vehiclepimpammos select (_x select 1);
	_vcl RemoveMagazines _waffe;
	 _vcl AddMagazine _muni;
	sleep 0.1;

	} forEach _rearmWeaponarray;

player groupChat localize "STRS_inv_item_vclammo_rearmed";
[_item, -1] call INV_AddInventoryItem;

};