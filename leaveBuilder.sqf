_id = _this select 2;

INV_LizenzOwner = INV_LizenzOwner - ["basebuilder"];
["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
_hasjob = false;
player removeAction _id;
player groupChat "You have left your job.";