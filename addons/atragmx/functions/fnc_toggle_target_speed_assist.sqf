/*
 * Author: Ruthberg
 * Toggles the target speed assist screen on/off
 *
 * Arguments:
 * update speed? <NUMBER>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * 1 call ace_atragmx_fnc_toggle_target_speed_assist
 *
 * Public: No
 */
#include "script_component.hpp"

if (ctrlVisible 8000) then {
    false call FUNC(show_target_speed_assist);
    true call FUNC(show_main_page);
    
    if (_this == 1) then {
        [] call FUNC(calculate_target_speed_assist);
        ctrlSetText [330, Str(parseNumber(ctrlText 8007))];
        ctrlSetText [140050, Str(parseNumber(ctrlText 8007))];
        [] call FUNC(calculate_target_solution);
    };
} else {
    false call FUNC(show_main_page);
    true call FUNC(show_target_speed_assist);
};
