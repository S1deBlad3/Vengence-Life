waitUntil {(alive player)};

civstatsdone = false;

'

if(local server) then

{

for [{_i=1}, {_i <= civscount}, {_i=_i+1}] do 

	{

	call compile format ["
	if(kopfgeld_civ%1 > 0)then{publicVariable ""kopfgeld_civ%1""};
	if(civ%1_arrest > 0)then{publicVariable ""civ%1_arrest""};
	if(civ%1_wanted > 0)then{publicVariable ""civ%1_wanted""};
	if(civ%1_mayor > 0)then{publicVariable ""civ%1_mayor""};
	if(civ%1_bounty > 0)then{publicVariable ""civ%1_bounty""};
	if(count civ%1_reason > 0)then{publicVariable ""civ%1_reason""};
	", _i];		

	};

publicvariable "gangsarray";
civstatsdone=true; publicvariable "civstatsdone";

};

' call broadcast;

waituntil {civstatsdone};

if ("secAgent" call INV_HasLicense) then
{
	player addWeapon "M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player groupChat "You are a secret agent and can arrest wanted people. SLeave the job if you want to go cop or you respawn with M9SD";
};

if ("bounty" call INV_HasLicense && (iscop)) then
{
	[player] execVM "leaveBounty.sqf";
};

if ("doctor" call INV_HasLicense && (iscop)) then
{
	[player] execVM "leaveDoctor.sqf";
};

if ("mechanic" call INV_HasLicense && (iscop)) then
{
	[player] execVM "leaveMechanic.sqf";
};

if ("bodyguard" call INV_HasLicense && (iscop)) then
{
	[player] execVM "leaveBodyguard.sqf";
};

if ("doctor" call INV_HasLicense and (isciv)) then
{
	player addaction ["Make Medkit ($5,000)","makeMedkit.sqf", 717];
};

if ("basebuilder" call INV_HasLicense and (isciv)) then
{
	player addaction ["Base Builder Menu","basebuilderinit.sqf",[],717];
};

if ("mechanic" call INV_HasLicense and (isciv)) then
{
	player addaction ["Make Large Repair Kit ($6,000)","makeRepair.sqf",[],717];
};

if ("bodyguard" call INV_HasLicense and (isciv)) then
{
	player addaction ["Bodyguard M9 ($10,000)","getM9.sqf",[],717];
};

if (isciv) then 

{

call compile format['
%1_arrest = 0;
%1_wanted = 0;
%1_mayor = 0;
%1_bounty = 0;
%1_reason = [];
kopfgeld_%1 = 0;
publicVariable "%1_mayor";
publicVariable "%1_bounty";
publicVariable "%1_arrest";
publicVariable "%1_wanted";
publicVariable "%1_reason";
publicVariable "kopfgeld_%1";
', player]; 

};

call ClientRequestVar;

waitUntil {JIP_Stats_Ready};

if (local_arrest == 1) then {player switchmove "civillying01"; waituntil {animationstate player == "civillying01"}; ["arrest", 20, player] execVM "civmenu.sqf";}
if (isdead == 1 and isciv) then {player setpos getpos deadcamlogic;[] execVM "rejoincamera.sqf";};
if(time > 20)then{skiptime (currentTime - daytime)};
