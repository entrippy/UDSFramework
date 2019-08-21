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

	case "m16a4_carryhandle" :  {
		_rifleArray = ["rhs_weap_m16a4_carryhandle"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m16a4_carryhandle_M203"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m16a4_carryhandle";
		_autoRifle = "rhs_weap_m249_pip_L";
		_carbine = "rhs_weap_m4a1_carryhandle";
		_dmr = "rhs_weap_sr25";
		_mmg = "rhs_weap_m240G";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "rhsusf_weap_m1911a1";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_m24sws";
		_amRifle = "rhs_weap_M107";

		//ammunition

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_mmgMag = "rhsusf_100Rnd_762x51";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "rhsusf_mag_7x45acp_MHP";
		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";
		_boltRifleMag = "rhsusf_5Rnd_762x51_m118_special_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";
		_glExplody = "1Rnd_HE_Grenade_shell";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";
		_grenade = "rhs_mag_m67";
		_smoke = "rhs_mag_an_m8hc";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_m18_red","rhs_mag_m18_purple"];

		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhsusf_acc_eotech_552"];
		_autoRifleAttachments = ["rhsusf_acc_eotech_552"];
		_dmrAttachments = ["rhsusf_acc_ACOG2_USMC","rhsusf_acc_harris_bipod"];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_amSniperAttachments = ["rhsusf_acc_premier"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhsusf_acc_ACOG2_USMC"];
		_scoped_autoRifleAttachments = ["rhsusf_acc_ELCAN"];
		_scoped_dmrAttachments = ["rhsusf_acc_M8541"];
		_scoped_mmgAttachments = ["rhsusf_acc_ELCAN"];
		_muzzle_generalAttachments = ["rhsusf_acc_SF3P556"];
		_muzzle_autoRifleAttachments = ["rhsusf_acc_SF3P556"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = ["rhsusf_acc_ARDEC_M240"];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhsusf_acc_nt4_black"];
		_suppressed_autoRifleAttachments = ["rhsusf_acc_nt4_black"];
		_suppressed_dmrAttachments = ["rhsusf_acc_SR25S"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = ["rhsusf_acc_m24_silencer_black"];
		_flashLight_generalAttachments = ["rhsusf_acc_wmx_bk"];
		_flashLight_autoRifleAttachments = ["rhsusf_acc_wmx_bk"];
		_flashLight_dmrRifleAttachments = ["rhsusf_acc_wmx_bk"];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_autoRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_dmrRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = ["rhsusf_acc_grip3"];
	};

	case "m4_carryhandle" :  {
		_rifleArray = ["rhs_weap_m4_carryhandle"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m4_m203"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m4_carryhandle";
		_autoRifle = "rhs_weap_m249_pip_S";
		_carbine = "rhs_weap_m4_carryhandle";
		_dmr = "rhs_weap_sr25";
		_mmg = "rhs_weap_m240B";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "rhsusf_weap_m9";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_m40a5";
		_amRifle = "rhs_weap_M107";

		//ammunition

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_mmgMag = "rhsusf_100Rnd_762x51";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "rhsusf_mag_15Rnd_9x19_JHP";
		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";
		_boltRifleMag = "rhsusf_10Rnd_762x51_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";
		_glExplody = "1Rnd_HE_Grenade_shell";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";
		_grenade = "rhs_mag_m67";
		_smoke = "rhs_mag_an_m8hc";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_m18_red","rhs_mag_m18_purple"];

		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhsusf_acc_compm4"];
		_autoRifleAttachments = ["rhsusf_acc_eotech_552"];
		_dmrAttachments = ["rhsusf_acc_ACOG","rhsusf_acc_harris_bipod"];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhsusf_acc_M8541_low","rhsusf_acc_harris_swivel"];
		_amSniperAttachments = ["rhsusf_acc_premier"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhsusf_acc_ACOG"];
		_scoped_autoRifleAttachments = ["rhsusf_acc_ELCAN_ard"];
		_scoped_dmrAttachments = ["rhsusf_acc_M8541"];
		_scoped_mmgAttachments = ["rhsusf_acc_ELCAN_ard"];
		_muzzle_generalAttachments = ["rhsusf_acc_SFMB556"];
		_muzzle_autoRifleAttachments = ["rhsusf_acc_SF3P556"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = ["rhsusf_acc_ARDEC_M240"];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhsusf_acc_nt4_black"];
		_suppressed_autoRifleAttachments = ["rhsusf_acc_nt4_black"];
		_suppressed_dmrAttachments = ["rhsusf_acc_SR25S"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhsusf_acc_wmx_bk"];
		_flashLight_autoRifleAttachments = ["rhsusf_acc_wmx_bk"];
		_flashLight_dmrRifleAttachments = ["rhsusf_acc_wmx_bk"];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_autoRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_dmrRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_mmgRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = ["rhsusf_acc_tdstubby_blk"];
	};

	case "m4a1_blockII" :  {
		_rifleArray = ["rhs_weap_m4a1_blockII_bk"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m4a1_blockII_M203_bk"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m4a1_blockII_bk";
		_autoRifle = "rhs_weap_m249_pip_S_vfg";
		_carbine = "rhs_weap_m4_carryhandle";
		_dmr = "rhs_weap_sr25_ec";
		_mmg = "rhs_weap_m240B";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_m9";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_m40a5";
		_amRifle = "rhs_weap_M107";

		//ammunition

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_PMAG";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_mmgMag = "rhsusf_100Rnd_762x51";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_smgMag = "rhsusf_mag_40Rnd_46x30_AP";
		_pistolMag = "rhsusf_mag_15Rnd_9x19_JHP";
		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";
		_boltRifleMag = "rhsusf_10Rnd_762x51_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";
		_glExplody = "1Rnd_HE_Grenade_shell";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";
		_grenade = "rhs_mag_m67";
		_smoke = "rhs_mag_an_m8hc";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_m18_red","rhs_mag_m18_purple"];

		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhsusf_acc_T1_high"];
		_autoRifleAttachments = ["rhsusf_acc_T1_high"];
		_dmrAttachments = ["rhsusf_acc_ACOG_RMR","rhsusf_acc_harris_bipod"];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhsusf_acc_M8541_low","rhsusf_acc_harris_swivel"];
		_amSniperAttachments = ["rhsusf_acc_premier"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhsusf_acc_ACOG_RMR"];
		_scoped_autoRifleAttachments = ["rhsusf_acc_ACOG_RMR"];
		_scoped_dmrAttachments = ["rhsusf_acc_M8541"];
		_scoped_mmgAttachments = ["rhsusf_acc_ELCAN_ard"];
		_muzzle_generalAttachments = ["rhsusf_acc_SFMB556"];
		_muzzle_autoRifleAttachments = ["rhsusf_acc_SF3P556"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = ["rhsusf_acc_ARDEC_M240"];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhsusf_acc_rotex5_grey"];
		_suppressed_autoRifleAttachments = ["rhsusf_acc_rotex5_grey"];
		_suppressed_dmrAttachments = ["rhsusf_acc_SR25S"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhsusf_acc_M952V"];
		_flashLight_autoRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_dmrRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_autoRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_dmrRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_mmgRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = ["rhsusf_acc_rvg_blk"];
	};

	case "hk416" :  {
		_rifleArray = ["rhs_weap_hk416d145"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_hk416d145_m320"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_hk416d145";
		_autoRifle = "rhs_weap_m249_pip_S_vfg";
		_carbine = "rhs_weap_hk416d10";
		_dmr = "rhs_weap_sr25_ec";
		_mmg = "rhs_weap_m240B";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_glock17g4";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_XM2010";
		_amRifle = "rhs_weap_M107";

		//ammunition

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_PMAG";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_autoRifleMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_autoTracerMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_soft_pouch";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_mmgMag = "rhsusf_100Rnd_762x51";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_smgMag = "rhsusf_mag_40Rnd_46x30_AP";
		_pistolMag = "rhsusf_mag_17Rnd_9x19_JHP";
		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";
		_boltRifleMag = "rhsusf_10Rnd_762x51_m993_Mag";
		_amRifleMag = "rhsusf_5Rnd_300winmag_xm2010";
		_glExplody = "1Rnd_HE_Grenade_shell";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";
		_grenade = "rhs_mag_m67";
		_smoke = "rhs_mag_an_m8hc";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_m18_red","rhs_mag_m18_purple"];

		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhsusf_acc_T1_high"];
		_autoRifleAttachments = ["rhsusf_acc_eotech_xps3"];
		_dmrAttachments = ["rhsusf_acc_ACOG_RMR","rhsusf_acc_harris_bipod"];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhsusf_acc_M8541_low","rhsusf_acc_harris_bipod"];
		_amSniperAttachments = ["rhsusf_acc_premier_low"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhsusf_acc_g33_T1"];
		_scoped_autoRifleAttachments = ["rhsusf_acc_g33_xps3"];
		_scoped_dmrAttachments = ["rhsusf_acc_M8541"];
		_scoped_mmgAttachments = ["rhsusf_acc_ELCAN_ard"];
		_muzzle_generalAttachments = ["rhsusf_acc_SFMB556"];
		_muzzle_autoRifleAttachments = ["rhsusf_acc_SF3P556"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = ["rhsusf_acc_ARDEC_M240"];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhsusf_acc_rotex5_grey"];
		_suppressed_autoRifleAttachments = ["rhsusf_acc_rotex5_grey"];
		_suppressed_dmrAttachments = ["rhsusf_acc_SR25S"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = ["rhsusf_acc_omega9k"];
		_suppressed_sniperAttachments = ["rhsusf_acc_M2010S_wd"];
		_flashLight_generalAttachments = ["rhsusf_acc_M952V"];
		_flashLight_autoRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_dmrRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = ["acc_flashlight_pistol"];
		_irPointer_generalAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_autoRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_dmrRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_mmgRifleAttachments = ["rhsusf_acc_anpeq15side_bk"];
		_irPointer_pistolAttachments = ["acc_flashlight_pistol"];
		_grip_generalAttachments = ["rhsusf_acc_rvg_blk"];
	};

	case "mk18" :  {
		_rifleArray = ["rhs_weap_mk18_KAC_bk"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_mk18_m320"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_mk18_KAC_bk";
		_autoRifle = "rhs_weap_m27iar";
		_carbine = "rhs_weap_mk18_KAC_bk";
		_dmr = "rhs_weap_sr25_ec";
		_mmg = "rhs_weap_m240B";
		_smg = "rhsusf_weap_MP7A2";
		_pistol = "rhsusf_weap_glock17g4";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_XM2010";
		_amRifle = "rhs_weap_M107";

		//ammunition

		_rifleMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleTracerMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
		_rifleSubsonicMag = "rhs_mag_30Rnd_556x45_Mk318_PMAG";
		_rifleGLMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_rifleScopedMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_autoRifleMag = "rhs_mag_100Rnd_556x45_M855A1_cmag";
		_autoTracerMag = "rhs_mag_100Rnd_556x45_M855A1_cmag_mixed";
		_autoSubsonicMag = "rhs_mag_100Rnd_556x45_Mk318_cmag";
		_carbineMag = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_mmgMag = "rhsusf_100Rnd_762x51";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_smgMag = "rhsusf_mag_40Rnd_46x30_AP";
		_pistolMag = "rhsusf_mag_17Rnd_9x19_JHP";
		_shottyBuck = "rhsusf_8Rnd_00Buck";
		_shottySlug = "rhsusf_8Rnd_Slug";
		_boltRifleMag = "rhsusf_10Rnd_762x51_m993_Mag";
		_amRifleMag = "rhsusf_5Rnd_300winmag_xm2010";
		_glExplody = "1Rnd_HE_Grenade_shell";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";
		_grenade = "rhs_mag_m67";
		_smoke = "rhs_mag_an_m8hc";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_m18_red","rhs_mag_m18_purple"];

		_arMagCount = 2;
		_arboxMagCount = 6;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhsusf_acc_eotech_xps3"];
		_autoRifleAttachments = ["rhsusf_acc_eotech_xps3"];
		_dmrAttachments = ["rhsusf_acc_su230_mrds","rhsusf_acc_harris_bipod"];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhsusf_acc_M8541_low","rhsusf_acc_harris_bipod"];
		_amSniperAttachments = ["rhsusf_acc_premier_low"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhsusf_acc_su230_mrds"];
		_scoped_autoRifleAttachments = ["rhsusf_acc_su230_mrds"];
		_scoped_dmrAttachments = ["rhsusf_acc_M8541"];
		_scoped_mmgAttachments = ["rhsusf_acc_ELCAN_ard"];
		_muzzle_generalAttachments = ["rhsusf_acc_SFMB556"];
		_muzzle_autoRifleAttachments = ["rhsusf_acc_SF3P556"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = ["rhsusf_acc_ARDEC_M240"];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhsusf_acc_rotex5_grey"];
		_suppressed_autoRifleAttachments = ["rhsusf_acc_rotex5_grey"];
		_suppressed_dmrAttachments = ["rhsusf_acc_SR25S"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = ["rhsusf_acc_omega9k"];
		_suppressed_sniperAttachments = ["rhsusf_acc_M2010S_wd"];
		_flashLight_generalAttachments = ["rhsusf_acc_M952V"];
		_flashLight_autoRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_dmrRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_mmgRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_pistolAttachments = ["acc_flashlight_pistol"];
		_irPointer_generalAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_autoRifleAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_dmrRifleAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_mmgRifleAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_pistolAttachments = ["acc_flashlight_pistol"];
		_grip_generalAttachments = ["rhsusf_acc_grip2"];
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