_geld = 'geld' call INV_GetItemAmount;

if (_geld < 30000) exitWith {role groupChat "Not Enough Money"};

['geld', -(30000)] call INV_AddInventoryItem;

_backup = "ru_policeman" createUnit [position player, group player];