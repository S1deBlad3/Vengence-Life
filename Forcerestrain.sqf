_civ = civmenuciv;
_aim = cursorTarget;
if (_aim isKindOf "Man") then
{
nearestObjects [player, [], 15];

(format ["%1 switchmove ""%2"";", _civ, "ActsPsitMstpSnonWunaDnon_sceneNikitinDisloyalty_Sykes"]) call broadcast;

(format['server globalchat "%3 was focrced restraind by admin by %2";if (rolestring == "%1") then {execVM "Unrestrain.sqf";}', _civ, name player, name _civ]) call broadcast;
};
