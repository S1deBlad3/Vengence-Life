_id = _this select 2;

INV_LizenzOwner = INV_LizenzOwner - ["secAgent"];
["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
iscop = false;
isciv = true;
removeAllWeapons player;
player removeAction _id;
player groupChat "You have left your job and your weapons have been taken back.";