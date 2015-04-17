/*
 * Author: Ruthberg
 * Updates all target column input fields
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call ace_atragmx_fnc_update_target
 *
 * Public: No
 */
#include "script_component.hpp"

ctrlSetText [140000, Str(Round((GVAR(latitude) select GVAR(currentTarget)) * 100) / 100)];
ctrlSetText [140010, Str(Round((GVAR(directionOfFire) select GVAR(currentTarget)) * 100) / 100)];
ctrlSetText [140020, Str(Round((GVAR(windSpeed1) select GVAR(currentTarget)) * 100) / 100)];
ctrlSetText [140021, Str(Round((GVAR(windSpeed2) select GVAR(currentTarget)) * 100) / 100)];
ctrlSetText [140030, Str(Round((GVAR(windDirection) select GVAR(currentTarget))))];
ctrlSetText [140040, Str(Round((GVAR(inclinationAngle) select GVAR(currentTarget))))];
ctrlSetText [140041, Str(floor(cos(GVAR(inclinationAngle) select GVAR(currentTarget)) * 100) / 100)];
ctrlSetText [140050, Str(Round((GVAR(targetSpeed) select GVAR(currentTarget)) * 100) / 100)];
ctrlSetText [140060, Str(Round((GVAR(targetRange) select GVAR(currentTarget))))];

if (GVAR(currentUnit) == 2) then {
    ctrlSetText [14002, "Wind Speed (m/s)"];
    ctrlSetText [14005, "Target Speed (m/s)"];
} else {
    ctrlSetText [14002, "Wind Speed (mph)"];
    ctrlSetText [14005, "Target Speed (mph)"];
};

if (GVAR(currentUnit) == 1) then {
    ctrlSetText [14006, "Target Range (yards)"];
} else {
    ctrlSetText [14006, "Target Range (meters)"];
};
