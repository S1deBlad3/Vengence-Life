//written by eddie vedder
_label = _this select 0;

if (_label == "basicintro") then 

{
titletext [localize "STRS_anfang_laden","plain"];
sleep 6;
vehicle player say ["Chernintro",1];
[player] execVM "9382496.sqf";
titletext [localize "STRS_anfang_02","plain"];
sleep 6;
titletext [localize "STRS_anfang_03","plain"];
sleep 6;			
titletext [localize "STRS_anfang_04","plain"];
sleep 8;
3 fademusic 0;

titletext [localize "STRS_anfang_06","plain"];
sleep 10;




};