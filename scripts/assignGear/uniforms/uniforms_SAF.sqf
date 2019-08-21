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
_insignia = "";

switch (_camoPattern) do {
	case "m10_digital" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhssaf_uniform_m10_digital"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhssaf_uniform_m10_digital";
		_leaderUniform = "rhssaf_uniform_m10_digital";
		_rpilotUniform = "rhssaf_uniform_m10_digital";
		_fpilotUniform = "rhssaf_uniform_heli_pilot";
		_sniperUniform = "rhssaf_uniform_m10_digital";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "m97_digital" : {
				_rflmHelmetArray = ["rhssaf_helmet_m97_digital","rhssaf_helmet_m97_digital_black_ess","rhs_6b27m_digi_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhssaf_helmet_m97_olive_nocamo"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_green_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_green_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhssaf_beret_black";
				_slHelmet = "rhs_6b27m_digi_ess";
				_tlHelmet = "rhs_6b27m_digi_ess";
				_sniperHelmet = "rhssaf_booniehat_digital";
			};
			case "beret_green_army" : {
				_rflmHelmetArray = ["rhssaf_beret_green"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhssaf_beret_black"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_green_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_green_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhssaf_beret_black";
				_slHelmet = "rhssaf_beret_green";
				_tlHelmet = "rhssaf_beret_green";
				_sniperHelmet = "rhssaf_beret_green";
			};
			case "beret_red_para" : {
				_rflmHelmetArray = ["rhssaf_beret_para"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhssaf_beret_black"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_green_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_green_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhssaf_beret_black";
				_slHelmet = "rhssaf_beret_para";
				_tlHelmet = "rhssaf_beret_para";
				_sniperHelmet = "rhssaf_beret_para";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike";
				_rotaryCrewHelmet = "rhs_zsh7a_mike";
				_fixedPilotHelmet = "rhs_zsh7a";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmVest = "rhssaf_vest_md12_m70_rifleman";
		_gunnerVest = "rhssaf_vest_md12_digital";
		_glVest = "rhssaf_vest_md12_digital";
		_medVest = "rhssaf_vest_md99_digital_rifleman";
		_pilotVest = "rhssaf_vest_md98_digital";
		_crewVest = "rhssaf_vest_md98_digital";
		_coyVest = "rhssaf_vest_md99_digital_rifleman_radio";
		_slVest = "rhssaf_vest_md99_digital_rifleman_radio";
		_tlVest = "rhssaf_vest_md99_digital_rifleman_radio";
		_sniperVest = "rhssaf_vest_md99_digital_rifleman";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_rgr";
		_medRuck = "rhssaf_kitbag_digital";
		_armgRuck = "rhssaf_kitbag_digital";
		_largeRuck = "rhssaf_alice_smb";
		_medicRuck = "rhssaf_kitbag_digital";
		_atRuck = "B_AssaultPack_rgr";
		_sniperRuck = "B_AssaultPack_rgr";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

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