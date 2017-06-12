_id = _this select 2;

INV_LizenzOwner = INV_LizenzOwner - ["bodyguard"];
["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
removeAllWeapons player;
player removeAction _id;
player groupChat "You have left your job.";