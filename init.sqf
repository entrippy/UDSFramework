// ====================================================================================
//	File: init.sqf
//	Last Modified By: Mr. Agnet/ Diabolical
// https://community.bistudio.com/wiki/init.sqf
// ====================================================================================
// prevent mission end on 0 tickets

bis_fnc_moduleRespawnTickets_end = false;

// ====================================================================================

if (hasInterface) then { waitUntil { !isNull player && isPlayer player }; };

// ====================================================================================
// =============================== CONFIGURABLE VARIABLES =============================
// ====================================================================================
// Headless Client Parameter
// Dictates whether applicable scripts will run on the Headless Client or Server, primarily for testing purposes.

if (("HeadlessClient_Controller" call BIS_fnc_GetParamValue) == 1) then { r_var_headlessClient = true; } else { r_var_headlessClient = false; };

//=====================================================================================
// JIP Menu Script
// Needs to be changed to the respective gear script you are using, so JIP players can have the same gear as other players.

if (hasInterface) then {
	_side = toLower format ["%1", side player];

	// BLUFOR
	if (_side == "west") then {
		r_fnc_assignGear = compile preprocessfilelinenumbers "scripts\assignGear\assignGear_BLU.sqf";
	};
	// OPFOR
	if (_side == "east") then {
		r_fnc_assignGear = compile preprocessfilelinenumbers "scripts\assignGear\assignGear_OPF.sqf";
	};
} else {
	// Crates - Server side
	r_fnc_assignGear = compile preprocessfilelinenumbers "scripts\assignGear\assignGear_BLU.sqf";
};

// ====================================================================================
// ========================== SCRIPTS AND FUNCTIONS ===================================
// ====================================================================================
// Disable Saving and Auto Saving

enableSaving [false, false];

// ====================================================================================
// Mute Orders and Reports

enableSentences false;

//===================================================================================
// CLY remvoveDead disable for players

if (hasInterface) then { player setVariable ["CLY_removedead",false,true]; };

// ====================================================================================

//AI Skill Selector

// hash outh the sides not use with //

[] execVM "scripts\setAISKill\skillBlu.sqf";
[] execVM "scripts\setAISKill\skillOpf.sqf";
[] execVM "scripts\setAISKill\skillInd.sqf";

// ====================================================================================
// Briefing Scripts
// Edit relevant briefingSIDE.sqf with your intended SMEAC.
// If you've left the 'r_var_brief_separateBriefings' variable false, use briefingGeneric.sqf.
// If set to true, use the relevant side's scripts.

[] execVM "u3_briefing.sqf";

//=====================================================================================
// Dead Cleanup
// [60,0,true] execVM "scripts\cly_removedead.sqf";
// [wait time for men,wait time for vehicles,remove units with gear (optional, default true)] execVM "scripts\cly_removedead.sqf";
// A wait time of 0 prevents that type from being removed.
// Prevent an individual unit from being removed:  this setVariable ["CLY_removedead",false,true]
// Remove an individual unit immediately upon death:  this setVariable ["CLY_removedead",true,true]

[180,0,true] execVM "scripts\cly_removeDead.sqf";

//=====================================================================================
//spectator init.

if (!isDedicated) then
{
    [] spawn
    {
        while {true} do
        {
            if (([side (group player)]  call bis_fnc_respawntickets == 0) && (!alive player)) exitWith
            {
                with uiNamespace do {

				BIS_RscRespawnControlsMap_ctrlButtonSpectate ctrlEnable true;
				BIS_RscRespawnControlsMap_ctrlButtonSpectate ctrlSetTooltip "";
				BIS_RscRespawnControlsMap_ctrlButtonSpectate ctrlRemoveAllEventHandlers "ButtonDown";
				BIS_RscRespawnControlsMap_ctrlButtonSpectate ctrlAddEventhandler ["ButtonDown",{["close"] call BIS_fnc_showRespawnMenu;	[true] call ace_spectator_fnc_setSpectator;	}];

				};
            };
            sleep 0.1;
        };
    };
};