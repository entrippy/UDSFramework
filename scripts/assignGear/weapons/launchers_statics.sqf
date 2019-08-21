// AssignGear - Launchers Statics
// by Diabolical
// - Defines all of the weapon classes to be used by the assignGear script.

private [
"_lat","_latMag","_matLaunch","_matMag","_matScope","_hatLaunch","_hatMag","_hatScope","_aaLaunch","_aaMag",
"_hmgBarrel","_hmgTripod","_hmgMag","_shatBarrel","_shatTripod","_shatMag","_mortBarrel","_mortTripod","_mortMag"
];

switch (_launcher) do {

	case "russian_vdv" : {
		_lat = "rhs_weap_rpg26";
		_latMag = "";
		_matLaunch = "rhs_weap_rpg7";
		_matMag = "rhs_rpg7_PG7VL_mag";
		_matScope = "rhs_acc_pgo7v";
		_hatLaunch = "rhs_weap_rpg7";
		_hatMag = "rhs_rpg7_PG7VR_mag";
		_hatScope = "rhs_acc_pgo7v";
		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";
		_hmgBarrel = "RHS_NSV_Gun_Bag";
		_hmgTripod = "RHS_NSV_Tripod_Bag";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "RHS_Kornet_Gun_Bag";
		_shatTripod = "RHS_Kornet_Tripod_Bag";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};

	case "russian_msv" : {
		_lat = "rhs_weap_rshg2";
		_latMag = "";
		_matLaunch = "rhs_weap_rpg7";
		_matMag = "rhs_rpg7_PG7VL_mag";
		_matScope = "rhs_acc_pgo7v";
		_hatLaunch = "rhs_weap_rpg7";
		_hatMag = "rhs_rpg7_PG7VR_mag";
		_hatScope = "rhs_acc_pgo7v";
		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";
		_hmgBarrel = "RHS_NSV_Gun_Bag";
		_hmgTripod = "RHS_NSV_Tripod_Bag";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "RHS_Metis_Gun_Bag";
		_shatTripod = "RHS_Metis_Tripod_Bag";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};

	case "us_army" : {
		_lat = "rhs_weap_M136";
		_latMag = "";
		_matLaunch = "rhs_weap_smaw";
		_matMag = "rhs_mag_smaw_HEAA";
		_matScope = "rhs_weap_optic_smaw";
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";
		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_MiniTripod_Bag";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};

	case "usmc" : {
		_lat = "rhs_weap_m72a7";
		_latMag = "";
		_matLaunch = "rhs_weap_maaws";
		_matMag = "rhs_mag_maaws_HEAT";
		_matScope = "rhs_optic_maaws";
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";
		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_MiniTripod_Bag";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};

	case "insurgent" : {
		_lat = "rhs_weap_rpg7";
		_latMag = "rhs_rpg7_OG7V_mag";
		_matLaunch = "rhs_weap_rpg7";
		_matMag = "rhs_rpg7_PG7VL_mag";
		_matScope = "";
		_hatLaunch = "rhs_weap_rpg7";
		_hatMag = "rhs_rpg7_PG7VR_mag";
		_hatScope = "";
		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";
		_hmgBarrel = "RHS_DShkM_Gun_Bag";
		_hmgTripod = "RHS_DShkM_TripodLow_Bag";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "RHS_SPG9_Gun_Bag";
		_shatTripod = "RHS_SPG9_Tripod_Bag";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};

	case "nato" : {
		_lat = "rhs_weap_M136";
		_latMag = "";
		_matLaunch = "launch_NLAW_F";
		_matMag = "";
		_matScope = "";
		_hatLaunch = "launch_B_Titan_short_F";
		_hatMag = "Titan_AT";
		_hatScope = "";
		_aaLaunch = "launch_B_Titan_F";
		_aaMag = "Titan_AA";
		_hmgBarrel = "B_HMG_01_weapon_F";
		_hmgTripod = "B_HMG_01_support_F";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "B_AT_01_weapon_F";
		_shatTripod = "B_HMG_01_support_high_F";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "B_Mortar_01_weapon_F";
		_mortTripod = "B_Mortar_01_support_F";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};

	case "baf" : {
		_lat = "rhs_weap_M136";
		_latMag = "";
		_matLaunch = "UK3CB_BAF_NLAW_Launcher";
		_matMag = "UK3CB_BAF_NLAW_Mag";
		_matScope = "";
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";
		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_MiniTripod_Bag";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};

	case "ffaa" : {
		_lat = "ffaa_armas_c90";
		_latMag = "";
		_matLaunch = "rhs_weap_smaw";
		_matMag = "rhs_mag_smaw_HEAA";
		_matScope = "rhs_weap_optic_smaw";
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";
		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_MiniTripod_Bag";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};

	case "serb" : {
		_lat = "rhs_weap_m80";
		_latMag = "";
		_matLaunch = "rhs_weap_smaw";
		_matMag = "rhs_mag_smaw_HEAA";
		_matScope = "rhs_weap_optic_smaw";
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		_aaLaunch = "rhs_weap_igla";
		_aaMag = "rhs_mag_9k38_rocket";
		_hmgBarrel = "RHS_NSV_Gun_Bag";
		_hmgTripod = "RHS_NSV_Tripod_Bag";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "RHS_Metis_Gun_Bag";
		_shatTripod = "RHS_Metis_Tripod_Bag";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "RHS_Podnos_Gun_Bag";
		_mortTripod = "RHS_Podnos_Bipod_Bag";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};
	case "croat" : {
		_lat = "rhs_weap_rpg75";
		_latMag = "";
		_matLaunch = "rhs_weap_smaw";
		_matMag = "rhs_mag_smaw_HEAA";
		_matScope = "rhs_weap_optic_smaw";
		_hatLaunch = "rhs_weap_fgm148";
		_hatMag = "rhs_fgm148_magazine_AT";
		_hatScope = "";
		_aaLaunch = "rhs_weap_fim92";
		_aaMag = "rhs_fim92_mag";
		_hmgBarrel = "RHS_M2_Gun_Bag";
		_hmgTripod = "RHS_M2_MiniTripod_Bag";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "rhs_Tow_Gun_Bag";
		_shatTripod = "rhs_TOW_Tripod_Bag";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "rhs_M252_Gun_Bag";
		_mortTripod = "rhs_M252_Bipod_Bag";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};

	default {
		_lat = "";
		_latMag = "";
		_matLaunch = "";
		_matMag = "";
		_matScope = "";
		_hatLaunch = "";
		_hatMag = "";
		_aaLaunch = "";
		_aaMag = "";
		_hmgBarrel = "";
		_hmgTripod = "";
		_hmgMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_shatBarrel = "";
		_shatTripod = "";
		_shatMag = "";	// no magazines as of yet, maybe one day ace will get its act together
		_mortBarrel = "";
		_mortTripod = "";
		_mortMag = "";	// no magazines as of yet, maybe one day ace will get its act together
	};
};