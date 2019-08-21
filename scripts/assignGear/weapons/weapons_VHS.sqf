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

	case "vhsd2" :  {
		_rifleArray = ["rhs_weap_vhsd2"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_vhsd2_bg"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_vhsd2";
		_autoRifle = "rhs_weap_m249_pip_S_para";
		_carbine = "rhs_weap_vhsk2";
		_dmr = "rhs_weap_sr25_ec";
		_mmg = "rhs_weap_m240B";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "UK3CB_BAF_L117A2";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_m40a5_wd";
		_amRifle = "rhs_weap_M107_w";

		//ammunition

		_rifleMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleTracerMag = "rhsgref_30rnd_556x45_vhs2_t";
		_rifleSubsonicMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleGLMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleScopedMag = "rhsgref_30rnd_556x45_vhs2";
		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_carbineMag = "rhsgref_30rnd_556x45_vhs2";
		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "UK3CB_BAF_9_15Rnd";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";
		_glExplody = "rhs_mag_M441_HE";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";
		_grenade = "rhssaf_mag_br_m75";
		_smoke = "rhs_mag_an_m8hc";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_m18_red","rhs_mag_m18_purple"];

		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhsusf_acc_eotech_xps3"];
		_autoRifleAttachments = ["rhsusf_acc_eotech_xps3"];
		_dmrAttachments = ["rhsusf_acc_ACOG3_USMC","rhsusf_acc_harris_bipod"];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_amSniperAttachments = ["rhsusf_acc_premier"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhsusf_acc_g33_xps3"];
		_scoped_autoRifleAttachments = ["rhsusf_acc_g33_xps3"];
		_scoped_dmrAttachments = ["rhsusf_acc_M8541","rhsusf_acc_harris_bipod"];
		_scoped_mmgAttachments = ["rhsusf_acc_eotech_xps3"];
		_muzzle_generalAttachments = ["rhsusf_acc_SFMB556"];
		_muzzle_autoRifleAttachments = ["rhsusf_acc_SFMB556"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = ["rhsusf_acc_ARDEC_M240"];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhsusf_acc_rotex5_grey"];
		_suppressed_autoRifleAttachments = ["rhsusf_acc_rotex5_grey"];
		_suppressed_dmrAttachments = ["rhsusf_acc_SR25S"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = ["UK3CB_BAF_Silencer_L105A1"];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhsusf_acc_M952V"];
		_flashLight_autoRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_dmrRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = ["UK3CB_BAF_Flashlight_L105A1"];
		_irPointer_generalAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_autoRifleAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_dmrRifleAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_mmgRifleAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_pistolAttachments = ["UK3CB_BAF_L105A1_LLM_IR_G"];
		_grip_generalAttachments = ["rhsusf_acc_tdstubby_blk"];
	};

	case "vhsd2_ct15x" :  {
		_rifleArray = ["rhs_weap_vhsd2_ct15x"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_vhsd2_bg_ct15x"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_vhsd2_ct15x";
		_autoRifle = "rhs_weap_m249_pip_S_para";
		_carbine = "rhs_weap_vhsk2";
		_dmr = "rhs_weap_sr25_ec";
		_mmg = "rhs_weap_m240B";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "UK3CB_BAF_L117A2";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_m40a5_wd";
		_amRifle = "rhs_weap_M107_w";

		//ammunition

		_rifleMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleTracerMag = "rhsgref_30rnd_556x45_vhs2_t";
		_rifleSubsonicMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleGLMag = "rhsgref_30rnd_556x45_vhs2";
		_rifleScopedMag = "rhsgref_30rnd_556x45_vhs2";
		_autoRifleMag = "rhsusf_200Rnd_556x45_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_mixed_box";
		_autoSubsonicMag = "rhsusf_200Rnd_556x45_box";
		_carbineMag = "rhsgref_30rnd_556x45_vhs2";
		_dmrMag = "rhsusf_20Rnd_762x51_SR25_m993_Mag";
		_mmgMag = "rhsusf_100Rnd_762x51_m61_ap";
		_mmgTracerMag = "rhsusf_100Rnd_762x51_m62_tracer";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "UK3CB_BAF_9_15Rnd";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";
		_glExplody = "rhs_mag_M441_HE";
		_glSmokeOne = "1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UGL_FlareWhite_F";
		_glFlareTwo = "UGL_FlareRed_F";
		_grenade = "rhssaf_mag_br_m75";
		_smoke = "rhs_mag_an_m8hc";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhs_mag_m18_red","rhs_mag_m18_purple"];

		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhsusf_acc_eotech_xps3"];
		_autoRifleAttachments = ["rhsusf_acc_eotech_xps3"];
		_dmrAttachments = ["rhsusf_acc_ACOG3_USMC","rhsusf_acc_harris_bipod"];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_amSniperAttachments = ["rhsusf_acc_premier"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhsusf_acc_g33_xps3"];
		_scoped_autoRifleAttachments = ["rhsusf_acc_g33_xps3"];
		_scoped_dmrAttachments = ["rhsusf_acc_M8541","rhsusf_acc_harris_bipod"];
		_scoped_mmgAttachments = ["rhsusf_acc_eotech_xps3"];
		_muzzle_generalAttachments = ["rhsusf_acc_SFMB556"];
		_muzzle_autoRifleAttachments = ["rhsusf_acc_SFMB556"];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = ["rhsusf_acc_ARDEC_M240"];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhs_acc_dtk4short"];
		_suppressed_autoRifleAttachments = ["rhs_acc_dtk4short"];
		_suppressed_dmrAttachments = ["rhsusf_acc_SR25S"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = ["UK3CB_BAF_Silencer_L105A1"];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhsusf_acc_M952V"];
		_flashLight_autoRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_dmrRifleAttachments = ["rhsusf_acc_M952V"];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = ["UK3CB_BAF_Flashlight_L105A1"];
		_irPointer_generalAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_autoRifleAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_dmrRifleAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_mmgRifleAttachments = ["rhsusf_acc_anpeq15A"];
		_irPointer_pistolAttachments = ["UK3CB_BAF_L105A1_LLM_IR_G"];
		_grip_generalAttachments = ["rhsusf_acc_tdstubby_blk"];
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