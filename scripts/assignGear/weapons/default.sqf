	default {
		_rifleArray = [""];
		_rifleRandom = (floor(random (count _rifleArray)));
		_rifle = _rifleArray select _rifleRandom;
		_rifleGLArray = [""];
		_rifleGLRandom = (floor(random (count _rifleGLArray)));
		_rifleGL = _rifleGLArray select _rifleGLRandom;
		_rifleScoped = "";
		_autoRifle = "";
		_carbine = "";
		_dmr = "";
		_mmg = "";
		_smg = "";
		_pistol = "";
		_shotty = "";
		_boltRifle = "";
		_amRifle = "";

		//ammunition

		_rifleMag = "";
		_rifleTracerMag = "";
		_rifleSubsonicMag = "";
		_rifleGLMag = "";
		_rifleScopedMag = "";
		_autoRifleMag = "";
		_autoTracerMag = "";
		_autoSubsonicMag = "";
		_carbineMag = "";
		_dmrMag = "";
		_mmgMag = "";
		_mmgTracerMag = "";
		_smgMag = "";
		_pistolMag = "";
		_shottyBuck = "";
		_shottySlug = "";
		_boltRifleMag = "";
		_amRifleMag = "";
		_glExplody = "";
		_glSmokeOne = "";
		_glSmokeTwo = "";
		_glSmokeThree = "";
		_glFlareOne = "";
		_glFlareTwo = "";
		_grenade = "";
		_smoke = "";
		_flashbang = "";
		_throwG = [];
		_facSmokes = ["",""];

		_arMagCount = 4;
		_arboxMagCount = 14;

		_mmgMagCount = 1;
		_mmgboxMagCount = 4;

		//attacments

		_generalAttachments = [""];
		_autoRifleAttachments = [""];
		_dmrAttachments = ["",""];
		_mmgAttachments = [""];
		_sniperAttachments = ["",""];
		_amSniperAttachments = [""];
		_pistolAttachments = [""];
		_scoped_generalAttachments = [""];
		_scoped_autoRifleAttachments = [""];
		_scoped_dmrAttachments = ["",""];
		_scoped_mmgAttachments = [""];
		_muzzle_generalAttachments = [""];
		_muzzle_autoRifleAttachments = [""];
		_muzzle_dmrRifleAttachments = [""];
		_muzzle_mmgRifleAttachments = [""];
		_muzzle_sniperAttachments = [""];
		_muzzle_pistolAttachments = [""];
		_suppressed_generalAttachments = [""];
		_suppressed_autoRifleAttachments = [""];
		_suppressed_dmrAttachments = [""];
		_suppressed_mmgAttachments = [""];
		_suppressed_pistolAttachments = [""];
		_suppressed_sniperAttachments = [""];
		_flashLight_generalAttachments = [""];
		_flashLight_autoRifleAttachments = [""];
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