keyPressed = {
	//_this select 1 is the key that you pressed down, keys are in the format found here https://community.bistudio.com/wiki/ListOfKeyCodes
	_key     = _this select 1;
	_handled = false;

	//If key is your selected key, then... In this case if you press the "end" key.
	if (_key == 207) then {
		[] execVM "TheGreatStep\test.sqf" //or some code
	};
};

//This adds an eventhandler that executes keyPressed when you press a key on your keyboard
waituntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call keyPressed"];
