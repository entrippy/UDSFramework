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

	case "usmc_marpat_wd" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_FROG01_wd"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_FROG01_wd";
		_leaderUniform = "rhs_uniform_FROG01_wd";
		_rpilotUniform = "rhs_uniform_FROG01_wd";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_FROG01_wd";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "lwh_helmet_marpatwd" : {
				_rflmHelmetArray = ["rhsusf_lwh_helmet_marpatwd","rhsusf_lwh_helmet_marpatwd_blk_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_green";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_green";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_lwh_helmet_marpatwd_headset_blk";
				_slHelmet = "rhsusf_lwh_helmet_marpatwd_headset_blk";
				_tlHelmet = "rhsusf_lwh_helmet_marpatwd_headset";
				_sniperHelmet = "rhs_booniehat2_marpatwd";
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

		_rflmVest = "rhsusf_spc_rifleman";
		_gunnerVest = "rhsusf_spc_mg";
		_glVest = "rhsusf_spc_teamleader";
		_medVest = "rhsusf_spc_corpsman";
		_pilotVest = "rhsusf_spc_crewman";
		_crewVest = "rhsusf_spc_crewman";
		_coyVest = "rhsusf_spc_light";
		_slVest = "rhsusf_spc_squadleader";
		_tlVest = "rhsusf_spc_teamleader";
		_sniperVest = "rhsusf_spc_marksman";

		// ===================== Rucks ====================

		_smallRuck = "rhsusf_falconii_coy";
		_medRuck = "rhsusf_assault_eagleaiii_coy";
		_armgRuck = "rhsusf_assault_eagleaiii_coy";
		_largeRuck = "rhsgref_wdl_alicepack";
		_medicRuck = "rhsusf_assault_eagleaiii_coy";
		_atRuck = "rhsusf_falconii_coy";
		_sniperRuck = "rhsusf_falconii_coy";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "usmc_marpat_d" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_FROG01_d"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_FROG01_d";
		_leaderUniform = "rhs_uniform_FROG01_d";
		_rpilotUniform = "rhs_uniform_FROG01_d";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_FROG01_d";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "lwh_helmet_marpatwd" : {
				_rflmHelmetArray = ["rhsusf_lwh_helmet_marpatd","rhsusf_lwh_helmet_marpatd_ess"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_black";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_black";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_lwh_helmet_marpatd_headset";
				_slHelmet = "rhsusf_lwh_helmet_marpatd_headset";
				_tlHelmet = "rhsusf_lwh_helmet_marpatd_headset";
				_sniperHelmet = "rhs_booniehat2_marpatd";
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

		_rflmVest = "rhsusf_spc_rifleman";
		_gunnerVest = "rhsusf_spc_mg";
		_glVest = "rhsusf_spc_teamleader";
		_medVest = "rhsusf_spc_corpsman";
		_pilotVest = "rhsusf_spc_crewman";
		_crewVest = "rhsusf_spc_crewman";
		_coyVest = "rhsusf_spc_light";
		_slVest = "rhsusf_spc_squadleader";
		_tlVest = "rhsusf_spc_teamleader";
		_sniperVest = "rhsusf_spc_marksman";

		// ===================== Rucks ====================

		_smallRuck = "rhsusf_falconii_coy";
		_medRuck = "rhsusf_assault_eagleaiii_coy";
		_armgRuck = "rhsusf_assault_eagleaiii_coy";
		_largeRuck = "rhsgref_wdl_alicepack";
		_medicRuck = "rhsusf_assault_eagleaiii_coy";
		_atRuck = "rhsusf_falconii_coy";
		_sniperRuck = "rhsusf_falconii_coy";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_15";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "usa_airborne_ocp" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_cu_ocp_101st"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_cu_ocp_101st";
		_leaderUniform = "rhs_uniform_cu_ocp_101st";
		_rpilotUniform = "rhs_uniform_cu_ocp_101st";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_cu_ocp_101st";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "ach_helmet" : {
				_rflmHelmetArray = ["rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_ESS_ocp"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_black";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_black";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_ach_helmet_headset_ocp";
				_slHelmet = "rhsusf_ach_helmet_headset_ocp";
				_tlHelmet = "rhsusf_ach_helmet_headset_ess_ocp";
				_sniperHelmet = "rhs_Booniehat_ocp";
			};
			case "fast_ballistic" : {
				_rflmHelmetArray = ["rhsusf_opscore_mc_cover_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_black";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_black";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_slHelmet = "rhsusf_opscore_mc_cover_pelt_cam";
				_tlHelmet = "rhsusf_opscore_mc_cover_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_mc_cover_pelt";
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

		_rflmVest = "rhsusf_iotv_ocp_Rifleman";
		_gunnerVest = "rhsusf_iotv_ocp_SAW";
		_glVest = "rhsusf_iotv_ocp_Grenadier";
		_medVest = "rhsusf_iotv_ocp_Medic";
		_pilotVest = "rhsusf_iotv_ocp";
		_crewVest = "rhsusf_iotv_ocp";
		_coyVest = "rhsusf_iotv_ocp_Squadleader";
		_slVest = "rhsusf_iotv_ocp_Squadleader";
		_tlVest = "rhsusf_iotv_ocp_Teamleader";
		_sniperVest = "rhsusf_iotv_ocp";

		// ===================== Rucks ====================

		_smallRuck = "rhsusf_falconii_mc";
		_medRuck = "rhsusf_assault_eagleaiii_ocp";
		_armgRuck = "rhsusf_assault_eagleaiii_ocp";
		_largeRuck = "B_Carryall_mcamo";
		_medicRuck = "rhsusf_assault_eagleaiii_ocp";
		_atRuck = "rhsusf_falconii_mc";
		_sniperRuck = "rhsusf_falconii_mc";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "usa_airborne_ucp" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_cu_ucp_101st"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_cu_ucp_101st";
		_leaderUniform = "rhs_uniform_cu_ucp_101st";
		_rpilotUniform = "rhs_uniform_cu_ucp_101st";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_cu_ucp_101st";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "ach_helmet" : {
				_rflmHelmetArray = ["rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ESS_ucp"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_black";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_black";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_ach_helmet_headset_ucp";
				_slHelmet = "rhsusf_ach_helmet_headset_ucp";
				_tlHelmet = "rhsusf_ach_helmet_headset_ess_ucp";
				_sniperHelmet = "rhs_Booniehat_ucp";
			};
			case "fast_ballistic" : {
				_rflmHelmetArray = ["rhsusf_opscore_ut_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_black";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_black";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_ut_pelt_nsw";
				_slHelmet = "rhsusf_opscore_ut_pelt_cam";
				_tlHelmet = "rhsusf_opscore_ut_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_ut_pelt";
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

		_rflmVest = "rhsusf_iotv_ucp_Rifleman";
		_gunnerVest = "rhsusf_iotv_ucp_SAW";
		_glVest = "rhsusf_iotv_ucp_Grenadier";
		_medVest = "rhsusf_iotv_ucp_Medic";
		_pilotVest = "rhsusf_iotv_ucp";
		_crewVest = "rhsusf_iotv_ucp";
		_coyVest = "rhsusf_iotv_ucp_Squadleader";
		_slVest = "rhsusf_iotv_ucp_Squadleader";
		_tlVest = "rhsusf_iotv_ucp_Teamleader";
		_sniperVest = "rhsusf_iotv_ucp";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_mcamo";
		_medRuck = "rhsusf_assault_eagleaiii_ucp";
		_armgRuck = "rhsusf_assault_eagleaiii_ucp";
		_largeRuck = "B_Carryall_cbr";
		_medicRuck = "rhsusf_assault_eagleaiii_ucp";
		_atRuck = "B_AssaultPack_mcamo";
		_sniperRuck = "B_AssaultPack_mcamo";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "usa_army_acu" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_acu_ucp"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_acu_ucp";
		_leaderUniform = "rhs_uniform_acu_ucp";
		_rpilotUniform = "rhs_uniform_acu_ucp";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_acu_ucp";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "ach_helmet" : {
				_rflmHelmetArray = ["rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ESS_ucp"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_black";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_black";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_ach_helmet_headset_ucp";
				_slHelmet = "rhsusf_ach_helmet_headset_ucp";
				_tlHelmet = "rhsusf_ach_helmet_headset_ess_ucp";
				_sniperHelmet = "rhs_Booniehat_ucp";
			};
			case "fast_ballistic" : {
				_rflmHelmetArray = ["rhsusf_opscore_ut_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_black";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_black";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_ut_pelt_nsw";
				_slHelmet = "rhsusf_opscore_ut_pelt_cam";
				_tlHelmet = "rhsusf_opscore_ut_pelt_nsw";
				_sniperHelmet = "rhsusf_opscore_ut_pelt";
			};
			case "mich_2000_d" : {
				_rflmHelmetArray = ["rhsusf_mich_bare_norotos_arc_tan"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_black";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_black";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_mich_bare_norotos_arc_alt_tan";
				_slHelmet = "rhsusf_mich_bare_norotos_arc_alt_tan";
				_tlHelmet = "rhsusf_mich_bare_norotos_arc_alt_tan_headset";
				_sniperHelmet = "rhs_Booniehat_ucp";
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

		_rflmVest = "rhsusf_spcs_ucp_rifleman";
		_gunnerVest = "rhsusf_spcs_ucp_saw";
		_glVest = "rhsusf_spcs_ucp_grenadier";
		_medVest = "rhsusf_spcs_ucp_medic";
		_pilotVest = "rhsusf_spcs_ucp_crewman";
		_crewVest = "rhsusf_spcs_ucp_crewman";
		_coyVest = "rhsusf_spcs_ucp_teamleader_alt";
		_slVest = "rhsusf_spcs_ucp_squadleader";
		_tlVest = "rhsusf_spcs_ucp_grenadier";
		_sniperVest = "rhsusf_spcs_ucp_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_mcamo";
		_medRuck = "rhsusf_assault_eagleaiii_ucp";
		_armgRuck = "rhsusf_assault_eagleaiii_ucp";
		_largeRuck = "B_Carryall_cbr";
		_medicRuck = "rhsusf_assault_eagleaiii_ucp";
		_atRuck = "B_AssaultPack_mcamo";
		_sniperRuck = "B_AssaultPack_mcamo";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "ranger_m81_g3" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_g3_m81"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_g3_m81";
		_leaderUniform = "rhs_uniform_g3_m81";
		_rpilotUniform = "rhs_uniform_g3_m81";
		_fpilotUniform = "U_B_PilotCoveralls";
		_sniperUniform = "rhs_uniform_g3_m81";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "fast_ballistic" : {
				_rflmHelmetArray = ["rhsusf_opscore_rg_cover_pelt"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhsusf_hgu56p_visor_black";
				_rotaryCrewHelmet = "rhsusf_hgu56p_visor_black";
				_fixedPilotHelmet = "RHS_jetpilot_usaf";
				_coyHelmet = "rhsusf_opscore_rg_cover_pelt";
				_slHelmet = "rhsusf_opscore_rg_cover_pelt";
				_tlHelmet = "rhsusf_opscore_rg_cover_pelt";
				_sniperHelmet = "rhsusf_opscore_rg_cover_pelt";
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

		_rflmVest = "rhsusf_mbav_rifleman";
		_gunnerVest = "rhsusf_mbav_mg";
		_glVest = "rhsusf_mbav_grenadier";
		_medVest = "rhsusf_mbav_medic";
		_pilotVest = "rhsusf_mbav_light";
		_crewVest = "rhsusf_mbav_light";
		_coyVest = "rhsusf_mbav_light";
		_slVest = "rhsusf_mbav_rifleman";
		_tlVest = "rhsusf_mbav_grenadier";
		_sniperVest = "rhsusf_mbav_light";

		// ===================== Rucks ====================

		_smallRuck = "B_AssaultPack_khk";
		_medRuck = "B_Kitbag_sgg";
		_armgRuck = "B_Kitbag_sgg";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "B_Kitbag_sgg";
		_atRuck = "B_AssaultPack_khk";
		_sniperRuck = "B_AssaultPack_khk";

		// ===================== NVGs ====================

		_nightVision = "rhsusf_ANPVS_14";

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