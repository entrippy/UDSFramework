// AssignGear - Weapons
// by Diabolical
// - Defines all of the weapon classes to be used by the assignGear script.

// =======================================================================
// Declares variables

private [
"_rifleArray","_rifleRandom","_rifle","_rifleGLArray","_rifleGLRandom","_rifleGL","_rifleScoped","_autoRifle","_carbine","_dmr","_mmg","_smg","_pistol","_shotty","_boltRifle","_amRifle",
"_rifleMag","_rifleTracerMag","_rifleSubsonicMag","_rifleGLMag","_rifleScopedMag","_autoRifleMag","_autoTracerMag","_autoSubsonicMag","_carbineMag","_dmrMag","_mmgMag","_mmgTracerMag","_smgMag","_pistolMag","_shottyBuck","_shottySlug","_boltRifleMag","_amRifleMag",
"_glExplody","_glSmokeOne","_glSmokeTwo","_glSmokeThree","_glFlareOne","_glFlareTwo","_grenade","_smoke","_flashbang","_throwG","_facSmokes",
"_arMagCount","_arboxMagCount","_mmgMagCount","_mmgboxMagCount",
"_generalAttachments","_autoRifleAttachments","_dmrAttachments","_mmgAttachments","_sniperAttachments","_amSniperAttachments","_pistolAttachments",
"_scoped_generalAttachments","_scoped_autoRifleAttachments","_scoped_dmrAttachments","_scoped_mmgAttachments",
"_muzzle_generalAttachments","_muzzle_autoRifleAttachments","_muzzle_dmrRifleAttachments","_muzzle_mmgRifleAttachments","_muzzle_sniperAttachments","_muzzle_pistolAttachments",
"_suppressed_generalAttachments","_suppressed_autoRifleAttachments","_suppressed_dmrAttachments","_suppressed_mmgAttachments","_suppressed_pistolAttachments","_suppressed_sniperAttachments",
"_flashLight_generalAttachments","_flashLight_autoRifleAttachments","_flashLight_dmrRifleAttachments","_flashLight_mmgRifleAttachments","_flashLight_pistolAttachments",
"_irPointer_generalAttachments","_irPointer_autoRifleAttachments","_irPointer_dmrRifleAttachments","_irPointer_mmgRifleAttachments","_irPointer_pistolAttachments",
"_grip_generalAttachments",
"_rifleDiver","_rifleDiverMagOne","_rifleDiverMagTwo"
];

// =======================================================================
// =========================== General Weapons ===========================
// =======================================================================

// in the case of using a random array make sure that the weapons can use the same ammo and attachments
switch (_variant) do {

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// to remove weapon randomization only use 1 array instead of many eg. _rifleArray = ["class"];, _rifleGLArray = ["class"];
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	case "ak74m" :  {
		_rifleArray = ["rhs_weap_ak74m"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_ak74m_gp25"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_ak74m";
		_autoRifle = "dd_weap_rpk74m_75";
		_carbine = "rhs_weap_aks74u";
		_dmr = "rhs_weap_svdp";
		_mmg = "rhs_weap_pkp";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_makarov_pm";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		//ammunition

		_rifleMag = "rhs_30Rnd_545x39_7N22_AK";
		_rifleTracerMag = "rhs_30Rnd_545x39_AK_plum_green";
		_rifleSubsonicMag = "rhs_30Rnd_545x39_7U1_AK";
		_rifleGLMag = "rhs_30Rnd_545x39_7N22_AK";
		_rifleScopedMag = "rhs_30Rnd_545x39_7N22_AK";
		_autoRifleMag = "rhs_75Rnd_545X39_7N22_AK";
		_autoTracerMag = "rhs_75Rnd_545X39_AK_Green";
		_autoSubsonicMag = "rhs_75Rnd_545X39_7U1_AK";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_dmrMag = "rhs_10Rnd_762x54mmR_7N1";
		_mmgMag = "rhs_100Rnd_762x54mmR_7N13";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x18_8_57N181S";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";
		_glExplody = "rhs_VOG25";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";
		_grenade = "rhs_mag_rgd5";
		_smoke = "rhs_mag_rdg2_white";
		_flashbang = "rhs_mag_fakels";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_rdg2_black","rhs_mag_nspn_red"];

		_arMagCount = 4;
		_arboxMagCount = 14;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhs_acc_1p63"];
		_autoRifleAttachments = ["rhs_acc_1p63"];
		_dmrAttachments = ["rhs_acc_pso1m2"];
		_mmgAttachments = ["rhs_acc_1p63"];
		_sniperAttachments = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
		_amSniperAttachments = ["rhs_acc_dh520x56"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhs_acc_1p29"];
		_scoped_autoRifleAttachments = ["rhs_acc_1p29"];
		_scoped_dmrAttachments = ["rhs_acc_pso1m2"];
		_scoped_mmgAttachments = ["rhs_acc_1p78"];
		_muzzle_generalAttachments = ["rhs_acc_dtk"];
		_muzzle_autoRifleAttachments = ["rhs_acc_dtk2"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhs_acc_dtk4short"];
		_suppressed_autoRifleAttachments = ["rhs_acc_dtk4short"];
		_suppressed_dmrAttachments = ["rhs_acc_tgpv"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhs_acc_2dpZenit"];
		_flashLight_autoRifleAttachments = ["rhs_acc_2dpZenit"];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhs_acc_perst1ik"];
		_irPointer_autoRifleAttachments = ["rhs_acc_perst1ik"];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = [""];
	};

	case "ak103" :  {
		_rifleArray = ["rhs_weap_ak103"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_ak103_gp25"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_ak74m";
		_autoRifle = "dd_weap_rpk74m_75";
		_carbine = "rhs_weap_aks74u";
		_dmr = "rhs_weap_svdp";
		_mmg = "rhs_weap_pkp";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_makarov_pm";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		//ammunition

		_rifleMag = "rhs_30Rnd_762x39mm_polymer";
		_rifleTracerMag = "rhs_30Rnd_762x39mm_polymer_tracer";
		_rifleSubsonicMag = "rhs_30Rnd_762x39mm_polymer_U";
		_rifleGLMag = "rhs_30Rnd_762x39mm_polymer";
		_rifleScopedMag = "rhs_30Rnd_762x39mm_polymer";
		_autoRifleMag = "rhs_75Rnd_545X39_7N22_AK";
		_autoTracerMag = "rhs_75Rnd_545X39_AK_Green";
		_autoSubsonicMag = "rhs_75Rnd_545X39_7U1_AK";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_dmrMag = "rhs_10Rnd_762x54mmR_7N1";
		_mmgMag = "rhs_100Rnd_762x54mmR_7N13";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x18_8_57N181S";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";
		_glExplody = "rhs_VOG25";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";
		_grenade = "rhs_mag_rgd5";
		_smoke = "rhs_mag_rdg2_white";
		_flashbang = "rhs_mag_fakels";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_rdg2_black","rhs_mag_nspn_red"];

		_arMagCount = 4;
		_arboxMagCount = 14;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhs_acc_ekp8_02"];
		_autoRifleAttachments = ["rhs_acc_ekp8_02"];
		_dmrAttachments = ["rhs_acc_pso1m2"];
		_mmgAttachments = ["rhs_acc_1p63"];
		_sniperAttachments = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
		_amSniperAttachments = ["rhs_acc_dh520x56"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhs_acc_1p29"];
		_scoped_autoRifleAttachments = ["rhs_acc_1p29"];
		_scoped_dmrAttachments = ["rhs_acc_pso1m2"];
		_scoped_mmgAttachments = ["rhs_acc_1p78"];
		_muzzle_generalAttachments = ["rhs_acc_dtk"];
		_muzzle_autoRifleAttachments = ["rhs_acc_dtk2"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhs_acc_dtk4screws"];
		_suppressed_autoRifleAttachments = ["rhs_acc_dtk4short"];
		_suppressed_dmrAttachments = ["rhs_acc_tgpv"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhs_acc_2dpZenit"];
		_flashLight_autoRifleAttachments = ["rhs_acc_2dpZenit"];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhs_acc_perst1ik"];
		_irPointer_autoRifleAttachments = ["rhs_acc_perst1ik"];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = [""];
	};

	case "ak74mr" :  {
		_rifleArray = ["rhs_weap_ak74mr"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_ak74mr_gp25"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_ak74mr";
		_autoRifle = "dd_weap_rpk74m_75";
		_carbine = "rhs_weap_aks74u";
		_dmr = "rhs_weap_svdp";
		_mmg = "rhs_weap_pkp";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_pya";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		//ammunition

		_rifleMag = "rhs_30Rnd_545x39_7N22_AK";
		_rifleTracerMag = "rhs_30Rnd_545x39_AK_plum_green";
		_rifleSubsonicMag = "rhs_30Rnd_545x39_7U1_AK";
		_rifleGLMag = "rhs_30Rnd_545x39_7N22_AK";
		_rifleScopedMag = "rhs_30Rnd_545x39_7N22_AK";
		_autoRifleMag = "rhs_75Rnd_545X39_7N22_AK";
		_autoTracerMag = "rhs_75Rnd_545X39_AK_Green";
		_autoSubsonicMag = "rhs_75Rnd_545X39_7U1_AK";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_dmrMag = "rhs_10Rnd_762x54mmR_7N1";
		_mmgMag = "rhs_100Rnd_762x54mmR_7N13";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x19_17";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";
		_glExplody = "rhs_VOG25";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";
		_grenade = "rhs_mag_rgd5";
		_smoke = "rhs_mag_rdg2_white";
		_flashbang = "rhs_mag_fakels";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_rdg2_black","rhs_mag_nspn_red"];

		_arMagCount = 4;
		_arboxMagCount = 14;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhs_acc_1p87"];
		_autoRifleAttachments = ["rhs_acc_1p63"];
		_dmrAttachments = ["rhs_acc_pso1m2"];
		_mmgAttachments = ["rhs_acc_1p63"];
		_sniperAttachments = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
		_amSniperAttachments = ["rhs_acc_dh520x56"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhsusf_acc_g33_xps3"];
		_scoped_autoRifleAttachments = ["rhs_acc_1p29"];
		_scoped_dmrAttachments = ["rhs_acc_pso1m2"];
		_scoped_mmgAttachments = ["rhs_acc_1p78"];
		_muzzle_generalAttachments = ["rhs_acc_uuk"];
		_muzzle_autoRifleAttachments = ["rhs_acc_dtk2"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhs_acc_tgpa"];
		_suppressed_autoRifleAttachments = ["rhs_acc_dtk4short"];
		_suppressed_dmrAttachments = ["rhs_acc_tgpv"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhs_acc_2dpZenit_ris"];
		_flashLight_autoRifleAttachments = ["rhs_acc_2dpZenit"];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhs_acc_perst3"];
		_irPointer_autoRifleAttachments = ["rhs_acc_perst1ik"];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = ["rhs_acc_grip_ffg2"];
	};

	case "ak103_zenico" :  {
		_rifleArray = ["rhs_weap_ak103_zenitco01_b33"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_ak103_gp25_npz"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_ak103_zenitco01_b33";
		_autoRifle = "rhs_weap_ak103_zenitco01_b33";
		_carbine = "rhs_weap_aks74u";
		_dmr = "rhs_weap_svdp";
		_mmg = "rhs_weap_pkp";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_pya";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		//ammunition

		_rifleMag = "rhs_30Rnd_762x39mm_polymer";
		_rifleTracerMag = "rhs_30Rnd_762x39mm_polymer_tracer";
		_rifleSubsonicMag = "rhs_30Rnd_762x39mm_polymer_U";
		_rifleGLMag = "rhs_30Rnd_762x39mm_polymer";
		_rifleScopedMag = "rhs_30Rnd_762x39mm_polymer";
		_autoRifleMag = "rhs_75Rnd_762x39mm";
		_autoTracerMag = "rhs_75Rnd_545X39_AK_Green";
		_autoSubsonicMag = "rhs_75Rnd_762x39mm";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_dmrMag = "rhs_10Rnd_762x54mmR_7N1";
		_mmgMag = "rhs_100Rnd_762x54mmR_7N13";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x19_17";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";
		_glExplody = "rhs_VOG25";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";
		_grenade = "rhs_mag_rgd5";
		_smoke = "rhs_mag_rdg2_white";
		_flashbang = "rhs_mag_fakels";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_rdg2_black","rhs_mag_nspn_red"];

		_arMagCount = 4;
		_arboxMagCount = 14;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhsusf_acc_eotech_552"];
		_autoRifleAttachments = ["rhsusf_acc_eotech_552"];
		_dmrAttachments = ["rhs_acc_pso1m2"];
		_mmgAttachments = ["rhs_acc_1p63"];
		_sniperAttachments = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
		_amSniperAttachments = ["rhs_acc_dh520x56"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhs_acc_1p29"];
		_scoped_autoRifleAttachments = ["rhs_acc_1p29"];
		_scoped_dmrAttachments = ["rhs_acc_pso1m2"];
		_scoped_mmgAttachments = ["rhs_acc_1p78"];
		_muzzle_generalAttachments = ["rhs_acc_dtk3"];
		_muzzle_autoRifleAttachments = ["rhs_acc_dtk3"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhs_acc_dtk4screws"];
		_suppressed_autoRifleAttachments = ["rhs_acc_dtk4short"];
		_suppressed_dmrAttachments = ["rhs_acc_tgpv"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhs_acc_2dpZenit_ris"];
		_flashLight_autoRifleAttachments = ["rhs_acc_2dpZenit_ris"];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhs_acc_perst1ik"];
		_irPointer_autoRifleAttachments = ["rhs_acc_perst1ik"];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = ["rhs_acc_grip_rk2"];
	};

	case "ak_insurgent" :  {
		_rifleArray = ["rhs_weap_akms","rhs_weap_akmn","rhs_weap_pm63"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_akms_gp25","rhs_weap_akmn_gp25"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_akmn";
		_autoRifle = "UK3CB_RPK";
		_carbine = "rhs_weap_aks74u";
		_dmr = "rhs_weap_m38";
		_mmg = "rhs_weap_pkm";
		_smg = "rhs_weap_savz61";
		_pistol = "rhs_weap_makarov_pm";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_m38_rail";
		_amRifle = "srifle_GM6_F";

		//ammunition

		_rifleMag = "rhs_30Rnd_762x39mm_polymer";
		_rifleTracerMag = "rhs_30Rnd_762x39mm_polymer_tracer";
		_rifleSubsonicMag = "rhs_30Rnd_762x39mm_polymer_U";
		_rifleGLMag = "rhs_30Rnd_762x39mm_polymer";
		_rifleScopedMag = "rhs_30Rnd_762x39mm_polymer";
		_autoRifleMag = "UK3CB_RPK_75Rnd_Drum";
		_autoTracerMag = "UK3CB_RPK_75Rnd_Drum_T";
		_autoSubsonicMag = "UK3CB_RPK_75Rnd_Drum";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_dmrMag = "rhsgref_5Rnd_762x54_m38";
		_mmgMag = "rhs_100Rnd_762x54mmR_7N13";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_smgMag = "rhsgref_20rnd_765x17_vz61";
		_pistolMag = "rhs_mag_9x18_8_57N181S";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		_boltRifleMag = "rhsgref_5Rnd_762x54_m38";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";
		_glExplody = "rhs_VOG25";
		_glSmokeOne = "rhs_GRD40_White";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";
		_grenade = "rhs_mag_rgd5";
		_smoke = "rhs_mag_rdg2_white";
		_flashbang = "rhs_mag_fakels";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_rdg2_black","rhs_mag_nspn_red"];

		_arMagCount = 4;
		_arboxMagCount = 14;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = [""];
		_autoRifleAttachments = [""];
		_dmrAttachments = [""];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhs_acc_dh520x56"];
		_amSniperAttachments = ["rhs_acc_dh520x56"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhs_acc_pso1m2"];
		_scoped_autoRifleAttachments = [""];
		_scoped_dmrAttachments = [""];
		_scoped_mmgAttachments = [""];
		_muzzle_generalAttachments = ["rhs_acc_dtkakm"];
		_muzzle_autoRifleAttachments = ["rhs_acc_dtkakm"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhs_acc_pbs1"];
		_suppressed_autoRifleAttachments = ["rhs_acc_pbs1"];
		_suppressed_dmrAttachments = [""];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhs_acc_2dpZenit"];
		_flashLight_autoRifleAttachments = ["rhs_acc_2dpZenit"];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = [""];
		_irPointer_autoRifleAttachments = [""];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = [""];
	};

	case "asval" :  {
		_rifleArray = ["rhs_weap_asval_grip"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_asval_grip"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_asval_grip";
		_autoRifle = "rhs_weap_ak103_zenitco01";
		_carbine = "rhs_weap_aks74u";
		_dmr = "rhs_weap_vss_grip";
		_mmg = "rhs_weap_pkp";
		_smg = "rhs_weap_pp2000";
		_pistol = "rhs_weap_pb_6p9";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_t5000";
		_amRifle = "srifle_GM6_F";

		//ammunition

		_rifleMag = "rhs_20rnd_9x39mm_SP6";
		_rifleTracerMag = "rhs_20rnd_9x39mm_SP6";
		_rifleSubsonicMag = "rhs_20rnd_9x39mm_SP6";
		_rifleGLMag = "rhs_20rnd_9x39mm_SP6";
		_rifleScopedMag = "rhs_20rnd_9x39mm_SP6";
		_autoRifleMag = "rhs_75Rnd_762x39mm";
		_autoTracerMag = "rhs_75Rnd_762x39mm_tracer";
		_autoSubsonicMag = "rhs_75Rnd_762x39mm";
		_carbineMag = "rhs_30Rnd_545x39_7N22_AK";
		_dmrMag = "rhs_20rnd_9x39mm_SP6";
		_mmgMag = "rhs_100Rnd_762x54mmR_7N13";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_smgMag = "rhs_mag_9x19mm_7n31_20";
		_pistolMag = "rhs_mag_9x18_8_57N181S";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		_boltRifleMag = "rhs_5Rnd_338lapua_t5000";
		_amRifleMag = "5Rnd_127x108_APDS_Mag";
		_glExplody = "rhs_mag_rgo";
		_glSmokeOne = "rhs_mag_fakels";
		_glSmokeTwo = "rhsgref_mag_rkg3em";
		_glSmokeThree = "rhs_mag_rgd5";
		_glFlareOne = "rhs_VG40OP_white";
		_glFlareTwo = "rhs_VG40OP_red";
		_grenade = "rhs_mag_rgd5";
		_smoke = "rhs_mag_rdg2_white";
		_flashbang = "rhs_mag_fakels";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_rdg2_black","rhs_mag_nspn_red"];

		_arMagCount = 4;
		_arboxMagCount = 14;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhs_acc_pkas"];
		_autoRifleAttachments = ["rhs_acc_ekp8_02"];
		_dmrAttachments = ["rhs_acc_pso1m21"];
		_mmgAttachments = ["rhs_acc_1p63"];
		_sniperAttachments = ["rhs_acc_dh520x56","rhsusf_acc_harris_bipod"];
		_amSniperAttachments = ["rhs_acc_dh520x56"];
		_pistolAttachments = ["rhs_acc_6p9_suppressor"];
		_scoped_generalAttachments = ["rhs_acc_1p78"];
		_scoped_autoRifleAttachments = ["rhs_acc_1p78"];
		_scoped_dmrAttachments = ["rhs_acc_pso1m21"];
		_scoped_mmgAttachments = ["rhs_acc_1p78"];
		_muzzle_generalAttachments = [""];
		_muzzle_autoRifleAttachments = ["rhs_acc_pbs1"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = [""];
		_suppressed_autoRifleAttachments = ["rhs_acc_pbs1"];
		_suppressed_dmrAttachments = [""];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhs_acc_2dpZenit_ris"];
		_flashLight_autoRifleAttachments = ["rhs_acc_2dpZenit_ris"];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhs_acc_perst1ik"];
		_irPointer_autoRifleAttachments = ["rhs_acc_perst1ik"];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = ["rhs_acc_grip_rk2"];
	};

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#include "default.sqf"
};

// ==================== Diver =====================

if (_underwaterWeapons) then {
	_rifleDiver = "arifle_SDAR_F";
} else {
	_rifleDiver = _rifle;
};
if (_underwaterWeapons) then {
	_rifleDiverMagOne = "30Rnd_556x45_Stanag";	// standard mag
	_rifleDiverMagTwo = "20Rnd_556x45_UW_mag";	// underwater mag
} else {
	_rifleDiverMagOne = _rifleMag;
	_rifleDiverMagTwo = _rifleMag;
};