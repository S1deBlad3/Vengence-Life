["
_NotLock = getPlayerUID player;
if(!(_NotLock == ""7202240"" or _NotLock == ""50360007"" or _NotLock == ""41575936"" or _NotLock == ""71625408"" or _NotLock == ""31437760""  or _NotLock == ""45950720"")) then
{
	disableuserinput true;
	player groupChat ""You have been locked by the admin because the admin has a message and needs chat silence"";
};
"] execVM "public.sqf";

hint "Players locked, don't forget to unlock after you are finished";