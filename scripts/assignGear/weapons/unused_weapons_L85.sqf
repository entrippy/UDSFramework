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

	case "L85A2" :  {
		_rifleArray = ["UK3CB_BAF_L85A2"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_BAF_L85A2_UGL"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_BAF_L85A2";
		_autoRifle = "UK3CB_BAF_L110A2";
		_carbine = "UK3CB_BAF_L22";
		_dmr = "UK3CB_BAF_L86A2";
		_mmg = "UK3CB_BAF_L7A2";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "UK3CB_BAF_L105A2";
		_shotty = "UK3CB_BAF_L128A1";
		_boltRifle = "UK3CB_BAF_L115A3_DE";
		_amRifle = "rhs_weap_M107";

		//ammunition

		_rifleMag = "UK3CB_BAF_556_30Rnd";
		_rifleTracerMag = "UK3CB_BAF_556_30Rnd_T";
		_rifleSubsonicMag = "UK3CB_BAF_556_30Rnd";
		_rifleGLMag = "UK3CB_BAF_556_30Rnd";
		_rifleScopedMag = "UK3CB_BAF_556_30Rnd";
		_autoRifleMag = "UK3CB_BAF_556_200Rnd";
		_autoTracerMag = "UK3CB_BAF_556_200Rnd_T";
		_autoSubsonicMag = "UK3CB_BAF_556_200Rnd";
		_carbineMag = "UK3CB_BAF_556_30Rnd";
		_dmrMag = "UK3CB_BAF_556_30Rnd";
		_mmgMag = "UK3CB_BAF_762_100Rnd";
		_mmgTracerMag = "UK3CB_BAF_762_100Rnd_T";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "UK3CB_BAF_9_15Rnd";
		_shottyBuck = "UK3CB_BAF_12G_Pellets";
		_shottySlug = "UK3CB_BAF_12G_Slugs";
		_boltRifleMag = "UK3CB_BAF_338_5Rnd";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";
		_glExplody = "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
		_glSmokeOne = "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UK3CB_BAF_UGL_FlareWhite_F";
		_glFlareTwo = "UK3CB_BAF_UGL_FlareRed_F";
		_grenade = "rhs_mag_m67";
		_smoke = "UK3CB_BAF_SmokeShell";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["UK3CB_BAF_SmokeShellRed","UK3CB_BAF_SmokeShellPurple"];

		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["RKSL_optic_EOT552"];
		_autoRifleAttachments = ["RKSL_optic_EOT552"];
		_dmrAttachments = ["UK3CB_BAF_SUSAT"];
		_mmgAttachments = [""];
		_sniperAttachments = ["RKSL_optic_PMII_525_wdl"];
		_amSniperAttachments = ["RKSL_optic_PMII_525"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["UK3CB_BAF_SUSAT"];
		_scoped_autoRifleAttachments = ["UK3CB_BAF_SUSAT"];
		_scoped_dmrAttachments = ["UK3CB_BAF_TA648_308"];
		_scoped_mmgAttachments = [""];
		_muzzle_generalAttachments = ["UK3CB_BAF_SFFH"];
		_muzzle_autoRifleAttachments = ["UK3CB_BAF_SFFH"];
		_muzzle_dmrRifleAttachments = ["UK3CB_BAF_SFFH"];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["UK3CB_BAF_Silencer_L85"];
		_suppressed_autoRifleAttachments = ["UK3CB_BAF_Silencer_L85"];
		_suppressed_dmrAttachments = ["UK3CB_BAF_Silencer_L85"];
		_suppressed_mmgAttachments = ["UK3CB_BAF_Silencer_L115A3"];
		_suppressed_pistolAttachments = ["UK3CB_BAF_Silencer_L105A1"];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = [""];
		_flashLight_autoRifleAttachments = [""];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = ["UK3CB_BAF_Flashlight_L105A1"];
		_irPointer_generalAttachments = [""];
		_irPointer_autoRifleAttachments = [""];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = ["UK3CB_BAF_L105A1_LLM_IR_G"];
		_grip_generalAttachments = [""];
	};

	case "L85A2_RIS" :  {
		_rifleArray = ["UK3CB_BAF_L85A2_RIS"];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = ["UK3CB_BAF_L85A2_UGL_HWS"];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "UK3CB_BAF_L85A2_RIS";
		_autoRifle = "UK3CB_BAF_L110A2RIS";
		_carbine = "UK3CB_BAF_L22A2";
		_dmr = "UK3CB_BAF_L129A1_FGrip_Bipod";
		_mmg = "UK3CB_BAF_L7A2";
		_smg = "UK3CB_BAF_L91A1";
		_pistol = "UK3CB_BAF_L105A2";
		_shotty = "UK3CB_BAF_L128A1";
		_boltRifle = "UK3CB_BAF_L115A3_DE";
		_amRifle = "rhs_weap_M107";

		//ammunition

		_rifleMag = "UK3CB_BAF_556_30Rnd";
		_rifleTracerMag = "UK3CB_BAF_556_30Rnd_T";
		_rifleSubsonicMag = "UK3CB_BAF_556_30Rnd";
		_rifleGLMag = "UK3CB_BAF_556_30Rnd";
		_rifleScopedMag = "UK3CB_BAF_556_30Rnd";
		_autoRifleMag = "UK3CB_BAF_556_200Rnd";
		_autoTracerMag = "UK3CB_BAF_556_200Rnd_T";
		_autoSubsonicMag = "UK3CB_BAF_556_200Rnd";
		_carbineMag = "UK3CB_BAF_556_30Rnd";
		_dmrMag = "UK3CB_BAF_762_L42A1_20Rnd";
		_mmgMag = "UK3CB_BAF_762_100Rnd";
		_mmgTracerMag = "UK3CB_BAF_762_100Rnd_T";
		_smgMag = "UK3CB_BAF_9_30Rnd";
		_pistolMag = "UK3CB_BAF_9_15Rnd";
		_shottyBuck = "UK3CB_BAF_12G_Pellets";
		_shottySlug = "UK3CB_BAF_12G_Slugs";
		_boltRifleMag = "UK3CB_BAF_338_5Rnd";
		_amRifleMag = "rhsusf_mag_10Rnd_STD_50BMG_mk211";
		_glExplody = "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
		_glSmokeOne = "UK3CB_BAF_1Rnd_Smoke_Grenade_shell";
		_glSmokeTwo = "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";
		_glSmokeThree = "UK3CB_BAF_1Rnd_SmokePurple_Grenade_shell";
		_glFlareOne = "UK3CB_BAF_UGL_FlareWhite_F";
		_glFlareTwo = "UK3CB_BAF_UGL_FlareRed_F";
		_grenade = "rhs_mag_m67";
		_smoke = "UK3CB_BAF_SmokeShell";
		_flashbang = "rhs_mag_mk84";
		_throwG = [_smoke,_grenade,_grenade];
		_facSmokes = ["UK3CB_BAF_SmokeShellRed","UK3CB_BAF_SmokeShellPurple"];

		_arMagCount = 1;
		_arboxMagCount = 4;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = ["RKSL_optic_EOT552"];
		_autoRifleAttachments = ["RKSL_optic_EOT552"];
		_dmrAttachments = ["UK3CB_BAF_TA648_308","UK3CB_underbarrel_acc_fgrip_bipod"];
		_mmgAttachments = [""];
		_sniperAttachments = ["RKSL_optic_PMII_525_wdl"];
		_amSniperAttachments = ["RKSL_optic_PMII_525"];
		_pistolAttachments = [""];
		_scoped_generalAttachments = ["UK3CB_BAF_TA31F"];
		_scoped_autoRifleAttachments = ["UK3CB_BAF_SUSAT"];
		_scoped_dmrAttachments = ["RKSL_optic_PMII_312","UK3CB_underbarrel_acc_fgrip_bipod"];
		_scoped_mmgAttachments = [""];
		_muzzle_generalAttachments = ["UK3CB_BAF_SFFH"];
		_muzzle_autoRifleAttachments = ["UK3CB_BAF_SFFH"];
		_muzzle_dmrRifleAttachments = ["UK3CB_BAF_SFFH"];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = ["UK3CB_BAF_Silencer_L85"];
		_suppressed_autoRifleAttachments = ["UK3CB_BAF_Silencer_L85"];
		_suppressed_dmrAttachments = ["UK3CB_BAF_Silencer_L115A3"];
		_suppressed_mmgAttachments = ["UK3CB_BAF_Silencer_L115A3"];
		_suppressed_pistolAttachments = ["UK3CB_BAF_Silencer_L105A1"];
		_suppressed_sniperAttachments = ["UK3CB_BAF_Silencer_L115A3"];
		_flashLight_generalAttachments = ["UK3CB_BAF_LLM_Flashlight_Black"];
		_flashLight_autoRifleAttachments = ["UK3CB_BAF_LLM_Flashlight_Black"];
		_flashLight_dmrRifleAttachments = [""];
		_flashLight_mmgRifleAttachments = [""];
		_flashLight_pistolAttachments = ["UK3CB_BAF_Flashlight_L105A1"];
		_irPointer_generalAttachments = ["UK3CB_BAF_LLM_IR_Black"];
		_irPointer_autoRifleAttachments = ["UK3CB_BAF_LLM_IR_Black"];
		_irPointer_dmrRifleAttachments = [""];
		_irPointer_mmgRifleAttachments = [""];
		_irPointer_pistolAttachments = ["UK3CB_BAF_L105A1_LLM_IR_G"];
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