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

	case "vdv_emr_wd" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_vdv_emr"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_vdv_emr";
		_leaderUniform = "rhs_uniform_vdv_emr";
		_rpilotUniform = "rhs_uniform_vdv_emr";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_vdv_emr";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b7_1m_emr" : {
				_rflmHelmetArray = ["rhs_6b7_1m_emr"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_beret_vdv1";
				_slHelmet = "rhs_6b7_1m_emr";
				_tlHelmet = "rhs_6b7_1m_emr";
				_sniperHelmet = "rhs_Booniehat_digi";
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

		_rflmVest = "rhs_6b23_digi_6sh92";
		_gunnerVest = "rhs_6b23_6sh116";
		_glVest = "rhs_6b23_digi_6sh92_vog";
		_medVest = "rhs_6b23_digi_medic";
		_pilotVest = "rhs_6b23_digi_crew";
		_crewVest = "rhs_6b23_digi_crew";
		_coyVest = "rhs_6b23_digi_6sh92_headset_mapcase";
		_slVest = "rhs_6b23_digi_6sh92_headset";
		_tlVest = "rhs_6b23_digi_6sh92_vog_headset";
		_sniperVest = "rhs_6b23_digi_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_oli";
		_medRuck = "rhs_assault_umbts";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_assault_umbts";
		_atRuck = "B_FieldPack_oli";
		_sniperRuck = "B_FieldPack_oli";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "vdv_flora_wd" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_vdv_flora"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_vdv_flora";
		_leaderUniform = "rhs_uniform_vdv_flora";
		_rpilotUniform = "rhs_uniform_vdv_flora";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_vdv_flora";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b7_1m_flora" : {
				_rflmHelmetArray = ["rhs_6b7_1m_flora"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_beret_vdv1";
				_slHelmet = "rhs_6b7_1m_flora";
				_tlHelmet = "rhs_6b7_1m_flora";
				_sniperHelmet = "rhs_Booniehat_flora";
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

		_rflmVest = "rhs_6b23_6sh92";
		_gunnerVest = "rhs_6b23_vydra_3m";
		_glVest = "rhs_6b23_6sh92_vog";
		_medVest = "rhs_6b23_medic";
		_pilotVest = "rhs_6b23_crew";
		_crewVest = "rhs_6b23_crew";
		_coyVest = "rhs_6b23_6sh92_headset_mapcase";
		_slVest = "rhs_6b23_6sh92_headset";
		_tlVest = "rhs_6b23_6sh92_vog_headset";
		_sniperVest = "rhs_6b23_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_oli";
		_medRuck = "umbts_flora";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "umbts_flora";
		_atRuck = "B_FieldPack_oli";
		_sniperRuck = "B_FieldPack_oli";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "vdv_emr_d" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_emr_des_patchless"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_vdv_flora";
		_leaderUniform = "rhs_uniform_vdv_flora";
		_rpilotUniform = "rhs_uniform_vdv_flora";
		_fpilotUniform = "rhs_uniform_df15_tan";
		_sniperUniform = "rhs_uniform_vdv_flora";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b7_1m_des" : {
				_rflmHelmetArray = ["hg_6b7_des"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_beret_vdv1";
				_slHelmet = "hg_6b7_des";
				_tlHelmet = "hg_6b7_des";
				_sniperHelmet = "rhs_gssh18";
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

		_rflmVest = "v6b23tan";
		_gunnerVest = "v6b23tan";
		_glVest = "v6b23tanvog";
		_medVest = "v6b23tan";
		_pilotVest = "rhs_6b23_crew";
		_crewVest = "rhs_6b23_crew";
		_coyVest = "v6b23tan";
		_slVest = "v6b23tan";
		_tlVest = "v6b23tanvog";
		_sniperVest = "v6b23tan";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_cbr";
		_medRuck = "B_Kitbag_tan";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_cbr";
		_medicRuck = "B_Kitbag_tan";
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

	case "vdv_recon_gorka_wd" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_gorka_r_g"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_vdv_emr";
		_leaderUniform = "rhs_uniform_gorka_r_g";
		_rpilotUniform = "rhs_uniform_gorka_r_g";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_gorka_r_g";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "6b7_1m_olive" : {
				_rflmHelmetArray = ["rhs_6b7_1m_olive"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_beret_vdv1";
				_slHelmet = "rhs_6b7_1m_olive";
				_tlHelmet = "rhs_6b7_1m_olive";
				_sniperHelmet = "rhs_Booniehat_digi";
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

		_rflmVest = "rhs_6b23_digi_6sh92_spetsnaz2";
		_gunnerVest = "rhs_6b23_digi_rifleman";
		_glVest = "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
		_medVest = "rhs_6b23_digi_medic";
		_pilotVest = "rhs_6b23_digi_crew";
		_crewVest = "rhs_6b23_digi_crew";
		_coyVest = "rhs_6b23_digi_6sh92_headset_mapcase";
		_slVest = "rhs_6b23_digi_6sh92_headset_spetsnaz";
		_tlVest = "rhs_6b23_digi_6sh92_vog_headset";
		_sniperVest = "rhs_6b23_digi_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_oli";
		_medRuck = "rhs_assault_umbts";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_assault_umbts";
		_atRuck = "B_FieldPack_oli";
		_sniperRuck = "B_FieldPack_oli";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "vdv_afghan_m88" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_m88_patchless"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_vdv_emr";
		_leaderUniform = "rhs_uniform_m88_patchless";
		_rpilotUniform = "rhs_uniform_m88_patchless";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_m88_patchless";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "ssh68" : {
				_rflmHelmetArray = ["rhs_ssh68"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_fieldcap_khk";
				_slHelmet = "rhs_ssh68";
				_tlHelmet = "rhs_ssh68";
				_sniperHelmet = "rhs_ssh68";
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

		_rflmVest = "rhsgref_6b23_khaki_rifleman";
		_gunnerVest = "rhsgref_6b23_khaki_rifleman";
		_glVest = "rhsgref_6b23_khaki_rifleman";
		_medVest = "rhsgref_6b23_khaki_medic";
		_pilotVest = "rhs_vydra_3m";
		_crewVest = "rhs_vydra_3m";
		_coyVest = "rhsgref_6b23_khaki_officer";
		_slVest = "rhsgref_6b23_khaki_nco";
		_tlVest = "rhsgref_6b23_khaki_rifleman";
		_sniperVest = "rhsgref_6b23_khaki_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_oli";
		_medRuck = "rhs_assault_umbts";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_assault_umbts";
		_atRuck = "B_FieldPack_oli";
		_sniperRuck = "B_FieldPack_oli";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "mvd_gorka_wd" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["gorka3"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_vdv_emr";
		_leaderUniform = "gorka3";
		_rpilotUniform = "gorka3";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "gorka3";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "altyn" : {
				_rflmHelmetArray = ["rhs_altyn","rhs_altyn","rhs_altyn","rhs_altyn_novisor_ess","rhs_altyn_novisor"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_beret_mp2";
				_slHelmet = "rhs_altyn_novisor";
				_tlHelmet = "rhs_altyn_novisor_ess";
				_sniperHelmet = "rhs_beanie_green";
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

		_rflmVest = "rhs_6b23_digi_6sh92_spetsnaz2";
		_gunnerVest = "rhs_6b23_digi_rifleman";
		_glVest = "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
		_medVest = "rhs_6b23_digi_medic";
		_pilotVest = "rhs_6b23_digi_crew";
		_crewVest = "rhs_6b23_digi_crew";
		_coyVest = "rhs_6b23_digi_6sh92_headset_mapcase";
		_slVest = "rhs_6b23_digi_6sh92_headset_spetsnaz";
		_tlVest = "rhs_6b23_digi_6sh92_vog_headset";
		_sniperVest = "rhs_6b23_digi_sniper";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_oli";
		_medRuck = "rhs_assault_umbts";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_assault_umbts";
		_atRuck = "B_FieldPack_oli";
		_sniperRuck = "B_FieldPack_oli";

		// ===================== NVGs ====================

		_nightVision = "rhs_1PN138";

		// =================== Goggles ===================

		_gogglesArray = [""]; // leave empty for player defined or use ["Item array"] to add whatchoowan
		_gogglesRandom = (floor(random (count _gogglesArray)));
		_goggles = _gogglesArray select _gogglesRandom;

		// ================================================
	};

	case "mvd_izlom_wd" : {
		// ==================== Uniforms ==================

		_rflmUniformArray = ["rhs_uniform_mvd_izlom"];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "rhs_uniform_vdv_emr";
		_leaderUniform = "rhs_uniform_mvd_izlom";
		_rpilotUniform = "rhs_uniform_mvd_izlom";
		_fpilotUniform = "rhs_uniform_df15";
		_sniperUniform = "rhs_uniform_mvd_izlom";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "altyn" : {
				_rflmHelmetArray = ["rhs_altyn","rhs_altyn","rhs_altyn","rhs_altyn_novisor_ess","rhs_altyn_novisor"];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = ["rhs_tsh4","rhs_tsh4_ess"];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "rhs_zsh7a_mike_alt";
				_rotaryCrewHelmet = "rhs_zsh7a_mike_alt";
				_fixedPilotHelmet = "rhs_zsh7a_alt";
				_coyHelmet = "rhs_beret_mp2";
				_slHelmet = "rhs_altyn_novisor";
				_tlHelmet = "rhs_altyn_novisor_ess";
				_sniperHelmet = "rhs_beanie_green";
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

		_rflmVest = "rhs_6b23_6sh116_od";
		_gunnerVest = "rhs_6b23_6sh116_od";
		_glVest = "rhs_6b23_6sh116_vog_od";
		_medVest = "rhs_6b23_digi_medic";
		_pilotVest = "rhs_6b23_digi_crew";
		_crewVest = "rhs_6b23_digi_crew";
		_coyVest = "rhs_6b23_6sh116_od";
		_slVest = "rhs_6b23_6sh116_od";
		_tlVest = "rhs_6b23_6sh116_vog_od";
		_sniperVest = "rhs_6b23_6sh116_od";

		// ===================== Rucks ====================

		_smallRuck = "B_FieldPack_oli";
		_medRuck = "rhs_assault_umbts";
		_armgRuck = "rhs_sidor";
		_largeRuck = "B_Carryall_oli";
		_medicRuck = "rhs_assault_umbts";
		_atRuck = "B_FieldPack_oli";
		_sniperRuck = "B_FieldPack_oli";

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