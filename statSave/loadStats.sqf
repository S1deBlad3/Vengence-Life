//===========================================================================
_loadFromDBClient =
"
	_array = _this;
	_uid = _array select 0;
	if((getPlayerUID player) != _uid) exitWith {};
	_varName = _array select 1;
	_varValue = _array select 2;
	if(isNil '_varValue') exitWith {};
	if(_varName == 'moneyAccount') then {bankaccount = _varValue;};
	if(_varName == 'Licenses') then {INV_LizenzOwner = _varValue;};
	if(_varName == 'Inventory') then {INV_InventarArray = _varValue;};
	if(_varName == 'privateStorageCiv') then {private_storage = _varValue;};
	
	
";

loadFromDBClient = compile _loadFromDBClient;
//===========================================================================
_sendToServer =
"
	accountToServerLoad = _this;
	publicVariableServer 'accountToServerLoad';
";

sendToServer = compile _sendToServer;
//===========================================================================
"accountToClient" addPublicVariableEventHandler 
{
	(_this select 1) spawn loadFromDBClient;
};
//===========================================================================

statFunctionsLoaded = 1;

if(ssDebug == 1) then
{

};

