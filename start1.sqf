hint "Hack is loaded use select action to ...Hack Menu...";
closedialog 0;
    cutText ['','PLAIN',0];
    endloadingscreen;

if (isnil "tracker") then {tracker = 0;};



if (tracker == 0) then
{

[]spawn
{
private["_veh", "_idx"];
_idx = -1;

while {true} do
{
   if (_idx == -1) then
   {
      _idx = (vehicle player) addAction [("<t color=""#2845FF"">" + (" ...Admin Menu... ") + "</t>"), "start2.sqf"];
      _veh = vehicle player;
   };

   if (_veh != vehicle player) then
   {
      _veh removeAction _idx;

      _idx = -1;      
   };
   Sleep 1;
};
};
tracker = 1;
};





waituntil {!alive player ; sleep 1;};
tracker = 0;





