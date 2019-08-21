// AssignGear - Uniforms
// by Mr. Agnet
// - Defines all of the wearable items to be used by the assignGear script.
// - Current Side, Faction: OPFOR, AFRF
// - Primary Mod: RHS
// - Variables: _camoPattern - "universal", "arid", "wdl"
//				_headgear - "helmets", "softcover"

// =======================================================================
// Declares variables

private [
"_gogglesArray","_gogglesRandom","_goggles","_insignia",
"_rflmUniformArray","_rflmRandom","_rflmUniform","_leaderUniform",
"_rflmHelmetArray","_rflmHRandom","_rflmHelmet","_coyHelmet","_slHelmet","_tlHelmet","_sniperHelmet",
"_rflmVest","_gunnerVest","_glVest","_medVest","_coyVest","_slVest","_tlVest",
"_smallRuck","_medRuck","_largeRuck","_medicRuck","_atRuck","_armgRuck",
"_crewUniform","_rpilotUniform","_fpilotUniform",
"_crewmanHelmetArray","_crewmanHRandom","_crewmanHelmet","_crewmanHelmetArray","_crewmanHRandom","_rotaryPilotHelmet","_rotaryCrewHelmet","_fixedPilotHelmet",
"_crewVest","_pilotVest",
"_sniperUniform","_sniperVest","_sniperRuck",
"_nightVision",
"_diverUniform","_diverVest","_diverRuck",
"_divingGoggles"
];

// =======================================================================
// =========================== Camo Specific =============================
// =======================================================================

_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
_gogglesRandom = (floor(random (count _gogglesArray)));
_goggles = _gogglesArray select _gogglesRandom;
_insignia = "";

switch (_camoPattern) do {

	case "cdf_ttsko_forest" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhsgref_uniform_ttsko_forest"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhsgref_uniform_ttsko_forest";
		_leaderUniform = "rhsgref_uniform_ttsko_forest";
		_rpilotUniform = "rhsgref_uniform_ttsko_forest";
		_fpilotUniform = "U_BG_Guerrilla_6_1";
		_sniperUniform = "rhsgref_uniform_ttsko_forest";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b27m" : {
				_rflmHelmetArray = ["rhsgref_6b27m_ttsko_forest"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsgref_fieldcap_ttsko_forest"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhsgref_fieldcap_ttsko_forest";
				_slHelmet = "rhsgref_6b27m_ttsko_forest";
				_tlHelmet = "rhsgref_6b27m_ttsko_forest";
				_sniperHelmet = "rhsgref_fieldcap_ttsko_forest";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p";
				_rotaryCrewHelmet = "rhsusf_hgu56p_mask";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmVest = "rhsgref_6b23_ttsko_mountain_rifleman";
		_gunnerVest = "rhs_6b5_rifleman_ttsko";
		_glVest = "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
		_medVest = "rhsgref_6b23_ttsko_mountain_medic";
		_pilotVest = "rhsgref_6b23_ttsko_forest";
		_crewVest = "rhsgref_6b23_ttsko_forest";
		_coyVest = "rhsgref_6b23_ttsko_mountain_officer";
		_slVest = "rhsgref_6b23_ttsko_mountain_nco";
		_tlVest = "rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz";
		_sniperVest = "rhsgref_6b23_ttsko_mountain_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_cbr";
		_medRuck = "UK3CB_B_Alice_K";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "UK3CB_B_Alice_K";
		_atRuck = "B_FieldPack_cbr";
		_sniperRuck = "B_FieldPack_cbr";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

#include "default.sqf"
};

// =======================================================================
// ========================= Non-Camo Specific ===========================
// =======================================================================

// =================== Diver Gear ===================

_diverUniform = "U_O_Wetsuit";
_diverVest = "V_RebreatherB";
_diverRuck = "B_AssaultPack_blk";
_divingGoggles = "G_O_Diving";

// =======================================================================