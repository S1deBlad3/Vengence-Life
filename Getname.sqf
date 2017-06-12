if (isnil "Called") then {Called=0};

Called=Called+1;
if (Called == 2) then {
_Wait=8;
while {_Wait !=0 } do {_Wait=_Wait-1;hint format ["Spawning in %1 seconds.",_Wait];sleep 1.0;};

// could just use a sleep ( sleep 10; ) command but this above gives a visual display of countdown.

veh = createVehicle ["AmmoBoxBig", position player, [], 0, "NONE"];

veh addWeaponCargo ["M14_EP1", 100];
veh addWeaponCargo ["Remington870_lamp", 100];
veh addWeaponCargo ["M4A3_CCO_EP1", 100];
veh addWeaponCargo ["M4A1_AIM_SD_camo", 100];
veh addWeaponCargo ["BAF_L85A2_RIS_CWS", 100];
veh addWeaponCargo ["BAF_AS50_scoped", 100];
veh addWeaponCargo ["Winchester1866", 100];
veh addWeaponCargo ["LeeEnfield", 100];
veh addWeaponCargo ["revolver_EP1", 100];
veh addWeaponCargo ["FN_FAL", 100];
veh addWeaponCargo ["FN_FAL_ANPVS4", 100];
veh addWeaponCargo ["m107", 100];
veh addWeaponCargo ["Mk_48_DZ", 100];
veh addWeaponCargo ["M249_DZ", 100];
veh addWeaponCargo ["DMR", 100];
veh addWeaponCargo ["M16A2", 100];
veh addWeaponCargo ["M16A2GL", 100];
veh addWeaponCargo ["AK_47_M", 100];
veh addWeaponCargo ["AK_74", 100];
veh addWeaponCargo ["M4A1_Aim", 100];
veh addWeaponCargo ["AKS_74_kobra", 100];
veh addWeaponCargo ["AKS_74_U", 100];
veh addWeaponCargo ["AK_47_M", 100];
veh addWeaponCargo ["M24", 100];
veh addWeaponCargo ["M1014", 100];
veh addWeaponCargo ["M4A1", 100];
veh addWeaponCargo ["MP5SD", 100];
veh addWeaponCargo ["MP5A5", 100];
veh addWeaponCargo ["huntingrifle", 100];

veh addWeaponCargo ["glock17_EP1", 100];
veh addWeaponCargo ["M9", 100];
veh addWeaponCargo ["M9SD", 100];
veh addWeaponCargo ["Colt1911", 100];
veh addWeaponCargo ["UZI_EP1", 100];

veh addMagazineCargo ["30Rnd_556x45_Stanag", 100];
veh addMagazineCargo ["30Rnd_556x45_StanagSD", 100];
veh addMagazineCargo ["20Rnd_762x51_DMR", 100];
veh addMagazineCargo ["30Rnd_762x39_AK47", 100];
veh addMagazineCargo ["5Rnd_762x51_M24", 100];
veh addMagazineCargo ["10Rnd_127x99_m107", 100];
veh addMagazineCargo ["8Rnd_B_Beneli_74Slug", 100];
veh addMagazineCargo ["1Rnd_HE_M203", 100];
veh addMagazineCargo ["FlareWhite_M203", 100];
veh addMagazineCargo ["FlareGreen_M203", 100];
veh addMagazineCargo ["1Rnd_Smoke_M203", 100];
veh addMagazineCargo ["200Rnd_556x45_M249", 100];
veh addMagazineCargo ["8Rnd_B_Beneli_Pellets", 100];
veh addMagazineCargo ["30Rnd_9x19_MP5", 100];
veh addMagazineCargo ["30Rnd_9x19_MP5SD", 100];
veh addMagazineCargo ["100Rnd_762x51_M240", 100];
veh addMagazineCargo ["15Rnd_W1866_Slug", 100];
veh addMagazineCargo ["5x_22_LR_17_HMR", 100];
veh addMagazineCargo ["10x_303", 100];

veh addMagazineCargo ["15Rnd_9x19_M9", 100];
veh addMagazineCargo ["15Rnd_9x19_M9SD", 100];
veh addMagazineCargo ["7Rnd_45ACP_1911", 100];
veh addMagazineCargo ["17Rnd_9x19_glock17", 100];
veh addMagazineCargo ["8Rnd_9x18_Makarov", 100];
veh addMagazineCargo ["6Rnd_45ACP", 100];
veh addMagazineCargo ["8Rnd_9x18_Makarov", 100];

veh addWeaponCargo ["Binocular_Vector", 100];
veh addWeaponCargo ["NVGoggles", 100];
veh addWeaponCargo ["ItemGPS", 100];
veh addWeaponCargo ["ItemMap", 100];
veh addWeaponCargo ["ItemCompass", 100];
veh addWeaponCargo ["ItemWatch", 100];
veh addWeaponCargo ["ItemKnife", 100];
veh addWeaponCargo ["ItemMatchbox", 100];
veh addMagazineCargo ["PipeBomb", 100];
veh addMagazineCargo ["HandGrenade_west", 100];
veh addMagazineCargo ["ItemBandage", 100];
veh addMagazineCargo ["ItemPainkiller", 100];
veh addMagazineCargo ["ItemMorphine", 100];
veh addMagazineCargo ["ItemEpinephrine", 100];
veh addMagazineCargo ["ItemAntibiotic", 100];
veh addMagazineCargo ["ItemBloodbag", 100];
veh addMagazineCargo ["PartEngine", 100];
veh addMagazineCargo ["PartGeneric", 100];
veh addMagazineCargo ["PartVRotor", 100];
veh addMagazineCargo ["ItemJerrycan", 100];
veh addBackpackCargo ["DZ_ALICE_Pack_EP1", 2];
veh addBackpackCargo ["DZ_Backpack_EP1", 2];


hint "Ammo Box spawned , Box will be removed in 80 seconds.";

_Wait=80;
while {_Wait !=0 } do {_Wait=_Wait-1;hint format ["Removing box in %1 seconds.",_Wait];sleep 1.0;};

deletevehicle veh;

hint "Ammo Box Removed"; 
Called = 0;
};

