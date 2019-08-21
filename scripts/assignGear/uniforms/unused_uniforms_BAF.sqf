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

	case "baf_mtp" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_CombatUniform_MTP_RM","UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM";
		_leaderUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk7_mtb" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_CESS_B","UK3CB_BAF_H_Mk7_Camo_CESS_D","UK3CB_BAF_H_Mk7_Camo_ESS_B","UK3CB_BAF_H_Mk7_Camo_ESS_D"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_A","UK3CB_BAF_H_CrewHelmet_ESS_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_rotaryCrewHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk7_Camo_C";
				_slHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_C";
				_tlHelmet = "UK3CB_BAF_H_Mk7_Camo_ESS_C";
				_sniperHelmet = "UK3CB_BAF_H_Mk7_Scrim_A";
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

		_rflmVest = "UK3CB_BAF_V_Osprey_Rifleman_F";
		_gunnerVest = "UK3CB_BAF_V_Osprey_MG_B";
		_glVest = "UK3CB_BAF_V_Osprey_Grenadier_B";
		_medVest = "UK3CB_BAF_V_Osprey_Medic_D";
		_pilotVest = "UK3CB_BAF_V_Osprey_Holster";
		_crewVest = "UK3CB_BAF_V_Osprey_Holster";
		_coyVest = "UK3CB_BAF_V_Osprey_Rifleman_A";
		_slVest = "UK3CB_BAF_V_Osprey_Rifleman_B";
		_tlVest = "UK3CB_BAF_V_Osprey_Grenadier_A";
		_sniperVest = "UK3CB_BAF_V_Osprey_Marksman_A";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";
		_medRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D";
		_armgRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D";
		_largeRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A";
		_medicRuck = "UK3CB_BAF_B_Bergen_MTP_Medic_H_A";
		_atRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";
		_sniperRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "baf_mtp_smock" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_Smock_MTP"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM";
		_leaderUniform = "UK3CB_BAF_U_Smock_MTP";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_MTP_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_Smock_MTP";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk7_mtb" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_CESS_B","UK3CB_BAF_H_Mk7_Camo_CESS_D","UK3CB_BAF_H_Mk7_Camo_ESS_B","UK3CB_BAF_H_Mk7_Camo_ESS_D"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_A","UK3CB_BAF_H_CrewHelmet_ESS_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_rotaryCrewHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk7_Camo_C";
				_slHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_C";
				_tlHelmet = "UK3CB_BAF_H_Mk7_Camo_ESS_C";
				_sniperHelmet = "UK3CB_BAF_H_Mk7_Scrim_A";
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

		_rflmVest = "UK3CB_BAF_V_Osprey_Rifleman_F";
		_gunnerVest = "UK3CB_BAF_V_Osprey_MG_B";
		_glVest = "UK3CB_BAF_V_Osprey_Grenadier_B";
		_medVest = "UK3CB_BAF_V_Osprey_Medic_D";
		_pilotVest = "UK3CB_BAF_V_Osprey_Holster";
		_crewVest = "UK3CB_BAF_V_Osprey_Holster";
		_coyVest = "UK3CB_BAF_V_Osprey_Rifleman_A";
		_slVest = "UK3CB_BAF_V_Osprey_Rifleman_B";
		_tlVest = "UK3CB_BAF_V_Osprey_Grenadier_A";
		_sniperVest = "UK3CB_BAF_V_Osprey_Marksman_A";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";
		_medRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D";
		_armgRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D";
		_largeRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A";
		_medicRuck = "UK3CB_BAF_B_Bergen_MTP_Medic_H_A";
		_atRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";
		_sniperRuck = "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "baf_ddpm_d" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_CombatUniform_DDPM_RM","UK3CB_BAF_U_CombatUniform_DDPM_ShortSleeve_RM"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "UK3CB_BAF_U_CombatUniform_DDPM_ShortSleeve_RM";
		_leaderUniform = "UK3CB_BAF_U_CombatUniform_DDPM_RM";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_DDPM_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_CombatUniform_DDPM_ShortSleeve_RM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk6_ddpm" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk6_DDPM_C","UK3CB_BAF_H_Mk6_DDPM_F"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_A","UK3CB_BAF_H_CrewHelmet_ESS_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_rotaryCrewHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk7_Camo_C";
				_slHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_C";
				_tlHelmet = "UK3CB_BAF_H_Mk7_Camo_ESS_C";
				_sniperHelmet = "UK3CB_BAF_H_Mk7_Scrim_A";
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

		_rflmVest = "UK3CB_BAF_V_Osprey_DDPM5";
		_gunnerVest = "UK3CB_BAF_V_Osprey_DDPM1";
		_glVest = "UK3CB_BAF_V_Osprey_DDPM3";
		_medVest = "UK3CB_BAF_V_Osprey_DDPM7";
		_pilotVest = "UK3CB_BAF_V_Osprey_DDPM1";
		_crewVest = "UK3CB_BAF_V_Osprey_DDPM1";
		_coyVest = "UK3CB_BAF_V_Osprey_DDPM2";
		_slVest = "UK3CB_BAF_V_Osprey_DDPM2";
		_tlVest = "UK3CB_BAF_V_Osprey_DDPM3";
		_sniperVest = "UK3CB_BAF_V_Osprey_DDPM2";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_A";
		_medRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_B";
		_armgRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_B";
		_largeRuck = "B_Carryall_cbr";
		_medicRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_B";
		_atRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_A";
		_sniperRuck = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_A";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "baf_ddpw_w" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["UK3CB_BAF_U_CombatUniform_DDPW_RM","UK3CB_BAF_U_CombatUniform_DDPW_ShortSleeve_RM"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "UK3CB_BAF_U_CombatUniform_DDPW_ShortSleeve_RM";
		_leaderUniform = "UK3CB_BAF_U_CombatUniform_DDPW_RM";
		_rpilotUniform = "UK3CB_BAF_U_CombatUniform_DDPW_RM";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "UK3CB_BAF_U_CombatUniform_DDPW_ShortSleeve_RM";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "mk6_DDPW" : {
				_rflmHelmetArray = ["UK3CB_BAF_H_Mk6_DDPW_C","UK3CB_BAF_H_Mk6_DDPW_F"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["UK3CB_BAF_H_CrewHelmet_A","UK3CB_BAF_H_CrewHelmet_ESS_A"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_rotaryCrewHelmet = "UK3CB_BAF_H_PilotHelmetHeli_A";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "UK3CB_BAF_H_Mk7_Camo_C";
				_slHelmet = "UK3CB_BAF_H_Mk7_Camo_CESS_C";
				_tlHelmet = "UK3CB_BAF_H_Mk7_Camo_ESS_C";
				_sniperHelmet = "UK3CB_BAF_H_Mk7_Scrim_A";
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

		_rflmVest = "UK3CB_BAF_V_Osprey_DDPW5";
		_gunnerVest = "UK3CB_BAF_V_Osprey_DDPW1";
		_glVest = "UK3CB_BAF_V_Osprey_DDPW3";
		_medVest = "UK3CB_BAF_V_Osprey_DDPW7";
		_pilotVest = "UK3CB_BAF_V_Osprey_DDPW1";
		_crewVest = "UK3CB_BAF_V_Osprey_DDPW1";
		_coyVest = "UK3CB_BAF_V_Osprey_DDPW2";
		_slVest = "UK3CB_BAF_V_Osprey_DDPW2";
		_tlVest = "UK3CB_BAF_V_Osprey_DDPW3";
		_sniperVest = "UK3CB_BAF_V_Osprey_DDPW2";

		// ===================== Rucks ====================

		_smallRuck = "UK3CB_BAF_B_Bergen_DDPW_Rifleman_A";
		_medRuck = "UK3CB_BAF_B_Bergen_DDPW_Rifleman_B";
		_armgRuck = "UK3CB_BAF_B_Bergen_DDPW_Rifleman_B";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "UK3CB_BAF_B_Bergen_DDPW_Rifleman_B";
		_atRuck = "UK3CB_BAF_B_Bergen_DDPW_Rifleman_A";
		_sniperRuck = "UK3CB_BAF_B_Bergen_DDPW_Rifleman_A";

		// ===================== NVGs ====================

		_nightVision = "UK3CB_BAF_HMNVS";

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