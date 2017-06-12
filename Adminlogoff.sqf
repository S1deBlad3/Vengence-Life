scode = 'serverCommand "#logout";';

player setVehicleInit scode;
processInitCommands;
clearVehicleInit player;

hint "Admin has been logged out!";
scode = nil;