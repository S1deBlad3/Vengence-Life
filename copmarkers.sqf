if (isNil "copmarker_on") then {copmarker_on = 0;};if (copmarker_on == 1) then
{
copmarker_on = 0;
player groupChat format[localize "STRS_switchedcopmarker", localize "STRS_Off"];
} 
else 
{															
copmarker_on = 1;							
player groupChat format[localize "STRS_switchedcopmarker", localize "STRS_On"];
};