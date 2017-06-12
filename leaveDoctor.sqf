_id = _this select 3;

INV_LizenzOwner = INV_LizenzOwner - ["doctor"];
["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
player removeAction _id;
player groupChat "You have left your job.";