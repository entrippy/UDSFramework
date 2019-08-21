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

	case "m21a" :  {
		_rifleArray = ["rhs_weap_m21a"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m21a_pbg40"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m21a";
		_autoRifle = "rhs_weap_m249_pip_L_para";
		_carbine = "rhs_weap_m21s";
		_dmr = "rhs_weap_m76";
		_mmg = "rhs_weap_m84";
		_smg = "rhs_weap_scorpion";
		_pistol = "rhs_weap_6p53";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_m40a5_wd";
		_amRifle = "rhs_weap_m82a1";

		//ammunition

		_rifleMag = "rhsgref_30rnd_556x45_m21";
		_rifleTracerMag = "rhsgref_30rnd_556x45_m21_t";
		_rifleSubsonicMag = "rhsgref_30rnd_556x45_m21";
		_rifleGLMag = "rhsgref_30rnd_556x45_m21";
		_rifleScopedMag = "rhsgref_30rnd_556x45_m21";
		_autoRifleMag = "rhsusf_200rnd_556x45_M855_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_M855_mixed_box";
		_autoSubsonicMag = "rhsusf_200rnd_556x45_M855_box";
		_carbineMag = "rhsgref_30rnd_556x45_m21";
		_dmrMag = "rhsgref_10Rnd_792x57_m76";
		_mmgMag = "rhs_100Rnd_762x54mmR_7N26";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_smgMag = "rhsgref_20rnd_765x17_vz61";
		_pistolMag = "rhs_18rnd_9x21mm_7N28";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";;
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";
		_glExplody = "rhs_VOG25";
		_glSmokeOne = "rhs_GDM40";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glFlareOne = "rhs_VG40MD_White";
		_glFlareTwo = "rhs_VG40MD_Red";
		_grenade = "rhssaf_mag_br_m75";
		_smoke = "rhssaf_mag_brd_m83_white";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhssaf_mag_brd_m83_orange","rhssaf_mag_brd_m83_blue"];

		_arMagCount = 4;
		_arboxMagCount = 14;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhs_acc_ekp1"];
		_autoRifleAttachments = ["rhs_acc_ekp8_18"];
		_dmrAttachments = ["rhs_acc_pso1m2"];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_amSniperAttachments = ["rhsusf_acc_premier"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhs_acc_nita"];
		_scoped_autoRifleAttachments = ["rhsusf_acc_ELCAN"];
		_scoped_dmrAttachments = ["rhs_acc_pso1m2"];
		_scoped_mmgAttachments = [""];
		_muzzle_generalAttachments = ["rhsusf_acc_SF3P556"];
		_muzzle_autoRifleAttachments = ["rhsusf_acc_SF3P556"];
		_muzzle_dmrRifleAttachments = ["rhs_acc_dtk1l"];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhsusf_acc_nt4_black"];
		_suppressed_autoRifleAttachments = ["rhsusf_acc_nt4_black"];
		_suppressed_dmrAttachments = ["rhs_acc_pbs1"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhs_acc_2dpZenit"];
		_flashLight_autoRifleAttachments = ["rhs_acc_2dpZenit_ris"];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhs_acc_perst1ik"];
		_irPointer_autoRifleAttachments = ["rhs_acc_perst1ik_ris"];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = [""];
	};

	case "m70b3n" :  {
		_rifleArray = ["rhs_weap_m70b3n"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["rhs_weap_m70b3n_pbg40"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "rhs_weap_m70b3n";
		_autoRifle = "rhs_weap_m249_pip_L_para";
		_carbine = "rhs_weap_m92";
		_dmr = "rhs_weap_m76";
		_mmg = "rhs_weap_m84";
		_smg = "rhs_weap_scorpion";
		_pistol = "rhs_weap_6p53";
		_shotty = "rhs_weap_M590_8RD";
		_boltRifle = "rhs_weap_m40a5_wd";
		_amRifle = "rhs_weap_m82a1";

		//ammunition

		_rifleMag = "rhssaf_30Rnd_762x39mm_M67";
		_rifleTracerMag = "rhssaf_30Rnd_762x39mm_M78_tracer";
		_rifleSubsonicMag = "rhssaf_30Rnd_762x39mm_M67";
		_rifleGLMag = "rhssaf_30Rnd_762x39mm_M67";
		_rifleScopedMag = "rhssaf_30Rnd_762x39mm_M67";
		_autoRifleMag = "rhsusf_200rnd_556x45_M855_box";
		_autoTracerMag = "rhsusf_200rnd_556x45_M855_mixed_box";
		_autoSubsonicMag = "rhsusf_200rnd_556x45_M855_box";
		_carbineMag = "rhssaf_30Rnd_762x39mm_M67";
		_dmrMag = "rhsgref_10Rnd_792x57_m76";
		_mmgMag = "rhs_100Rnd_762x54mmR_7N26";
		_mmgTracerMag = "rhs_100Rnd_762x54mmR_green";
		_smgMag = "rhsgref_20rnd_765x17_vz61";
		_pistolMag = "rhs_18rnd_9x21mm_7N28";
		_shottyBuck = "rhsusf_5Rnd_00Buck";
		_shottySlug = "rhsusf_5Rnd_Slug";;
		_boltRifleMag = "rhsusf_5Rnd_762x51_AICS_m993_Mag";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";
		_glExplody = "rhs_VOG25";
		_glSmokeOne = "rhs_GDM40";
		_glSmokeTwo = "rhs_GRD40_Red";
		_glSmokeThree = "rhs_GRD40_Green";
		_glFlareOne = "rhs_VG40MD_White";
		_glFlareTwo = "rhs_VG40MD_Red";
		_grenade = "rhssaf_mag_br_m75";
		_smoke = "rhssaf_mag_brd_m83_white";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["rhssaf_mag_brd_m83_orange","rhssaf_mag_brd_m83_blue"];

		_arMagCount = 4;
		_arboxMagCount = 14;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["rhs_acc_ekp1"];
		_autoRifleAttachments = ["rhs_acc_ekp8_18"];
		_dmrAttachments = ["rhs_acc_pso1m2"];
		_mmgAttachments = [""];
		_sniperAttachments = ["rhsusf_acc_M8541","rhsusf_acc_harris_swivel"];
		_amSniperAttachments = ["rhsusf_acc_premier"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["rhs_acc_1p78"];
		_scoped_autoRifleAttachments = ["rhsusf_acc_ELCAN"];
		_scoped_dmrAttachments = ["rhs_acc_pso1m2"];
		_scoped_mmgAttachments = [""];
		_muzzle_generalAttachments = ["rhs_acc_dtk1l"];
		_muzzle_autoRifleAttachments = ["rhsusf_acc_SF3P556"];
		_muzzle_dmrRifleAttachments = ["rhs_acc_dtk1l"];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["rhs_acc_pbs1"];
		_suppressed_autoRifleAttachments = ["rhsusf_acc_nt4_black"];
		_suppressed_dmrAttachments = ["rhs_acc_pbs1"];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = ["rhs_acc_2dpZenit"];
		_flashLight_autoRifleAttachments = ["rhs_acc_2dpZenit_ris"];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = [""];
		_irPointer_generalAttachments = ["rhs_acc_perst1ik"];
		_irPointer_autoRifleAttachments = ["rhs_acc_perst1ik_ris"];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = [""];
		_grip_generalAttachments = [""];
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