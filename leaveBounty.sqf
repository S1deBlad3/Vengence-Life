_id = _this select 2;

INV_LizenzOwner = INV_LizenzOwner - ["bounty"];
["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
player removeAction _id;
player groupChat "You have left your job.";