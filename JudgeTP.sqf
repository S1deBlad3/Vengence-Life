_art = _this select 0;
_prosplace = getMarkerPos "judgeSpawn";
//hint "it's working marre";
//JudgePrePosition = getPos player;
//player groupchat format ["Art = %1", _art];

if (_art == ("set")) then {
player setPos [JudgePrePosition select 0, JudgePrePosition select 1, (JudgePrePosition select 2)];
};


if (_art == ("get")) then {
JudgePrePosition = getPos player;
player setPos [_prosplace select 0, _prosplace select 1, (_prosplace select 2)];
};

