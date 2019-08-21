// AssignGear Functions
// by Mr. Agnet
// - Defines all of the functions as used by the assignGear.sqf script.

// ============================================================
// Declares variables

private ["_addClothes","_addBasics","_clearRuck","_addRuck","_addAttachments","_IFAK","_backpackToFront","_para","_postGearAssign","_setIrons","_removeMuzzles","_removePointers"];

// ============================================================
// AddClothes
// - Adds basic clothes/vest/helmet etc. to a unit
// - Possible Cases: leader, medic, gunner, gren, pleb, rpilot, rcrew, fpilot, crew, diver, sniper
// - Example: ["leader"] call _addClothes;

_addClothes = {
	private ["_type"];
	_type = toLower (_this select 0);
	if (_rflmUniform != "") then { _unit forceAddUniform _rflmUniform; };
	if (_goggles != "") then { _unit addGoggles _goggles; };

	switch (_type) do {
		case "commander" : {
			_unit forceAddUniform _leaderUniform;
			_unit addHeadgear _coyHelmet;
			_unit addVest _coyVest;
		};
		case "secco" : {
			_unit addHeadgear _slHelmet;
			_unit addVest _slVest;
		};
		case "teamleader" : {
			_unit addHeadgear _tlHelmet;
			_unit addVest _tlVest;
		};
		case "medic" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _medVest;
		};
		case "gunner" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _gunnerVest;
		};
		case "gren" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _glVest;
		};
		case "rflm" : {
			_unit addHeadgear _rflmHelmet;
			_unit addVest _rflmVest;
		};
		case "rpilot" : {
			removeUniform _unit;
			_unit forceAddUniform _rpilotUniform;
			_unit addHeadgear _rotaryPilotHelmet;
			_unit addVest _pilotVest;
		};
		case "rcrew" : {
			removeUniform _unit;
			_unit forceAddUniform _rpilotUniform;
			_unit addHeadgear _rotaryCrewHelmet;
			_unit addVest _pilotVest;
		};
		case "fpilot" : {
			removeUniform _unit;
			_unit forceAddUniform _fpilotUniform;
			_unit addHeadgear _fixedPilotHelmet;
		};
		case "crew" : {
			removeUniform _unit;
			_unit forceAddUniform _crewUniform;
			_unit addHeadgear _crewmanHelmet;
			_unit addVest _crewVest;
		};
		case "diver" : {
			removeUniform _unit;
			removeGoggles _unit;
			_unit forceAddUniform _diverUniform;
			_unit addGoggles _divingGoggles;
			_unit addVest _diverVest;
		};
		case "sniper" : {
			removeUniform _unit;
			_unit forceAddUniform _sniperUniform;
			_unit addHeadgear _sniperHelmet;
			_unit addVest _sniperVest;
		};
		default {
			hint format ["Incorrect clothes call for unit: %1",_unit];
			_unit addHeadgear _rflmHelmet;
			_unit addVest _rflmVest;
		};
	};
};

// ============================================================
// AddBasics
// - Adds the basic items and tools of the loadouts to a unit
// - Adds binocular item and cTab device depeding on parameters given
// - Example: ["binocular","android"] call _addBasics;

_addBasics = {
	private ["_bino"];
	_bino = toLower(_this select 0);
	_dev = toLower(_this select 1);
	sleep _delay;
	if ((!isNil "_nightGear") && _nightGear) then {
		_basicTools = _basicTools + [_nightVision];
	};
	if ((!isNil "_nightGear") && _nightGear) then {
		_basicItems = _basicItems + [_strobe];
	};
	{ _unit linkItem _x } foreach _basicTools; 		// add and assign each of the basic tools
	{ _unit addItem _x } foreach _basicItems; 		// add each of the basic items, can't be assigned
	sleep _delay;
	switch (_bino) do {
		case "westrangefinder" : {
			_unit addWeapon _westrangeFinder;
		};
		case "eastrangefinder" : {
			_unit addWeapon _eastrangeFinder;
		};
		case "westdesignator" : {
			_unit addWeapon _westdesignator;
		};
		case "eastdesignator" : {
			_unit addWeapon _eastdesignator;
		};
		case "binocular" : {
			 _unit addWeapon _binos;
		};
		case "none" : {};
		default {};
	};
};


// ============================================================
// CLearRuck
// - Empties a unit's ruck
// - Example: call _clearRuck;

_clearRuck = {
	clearWeaponCargoGlobal (unitBackpack _unit);
	clearMagazineCargoGlobal (unitBackpack _unit);
	clearItemCargoGlobal (unitBackpack _unit);
	sleep _delay;
};

// ============================================================
// AddRuck
// - Adds ruck to the unit.
// - Adds a backpack and cargo to that backpack.
// - Note that these cases are mostly similar to the unit's loadout case.
// - Possible Cases: plt, medic, fac, uavop, secco, tl, ar, aar, rm, rmat, dmr, gren, mmg, mmgass, hat, aa, crew, pilot, hmggun, hmgass, gmggun, gmgass, diver, sniper, spotter
// - Example: ["plt"] call _addRuck;

_addRuck = {
	private ["_pack"];
	_pack = toLower(_this select 0);
	switch (_pack) do {

		case "plt" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,8];
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,1];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
		};
		case "medic" : {
			_unit addBackpack _medicRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,40];	// bandages
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,10];	// morphine
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,10];	// epinephrine
			(unitBackpack _unit) addItemCargoGlobal [_bloodThree,8];	// bloodbag 1000
			(unitBackpack _unit) addItemCargoGlobal [_bloodTwo,2];		// bloodbag 500
			(unitBackpack _unit) addItemCargoGlobal [_bloodOne,2];		// bloodbag 250
		};
		case "fac" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			(unitBackpack _unit) addItemCargoGlobal [_designatorBat,1];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glExplody,3];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeTwo,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeThree,4];
		};
		case "uavop" : {
			_unit addBackpack _uavRuck;
			call _clearRuck;
		};
		case "tl" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,1];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "ar" : {
			_unit addBackpack _armgRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_autoRifleMag,_arMagCount];
			(unitBackpack _unit) addMagazineCargoGlobal [_autoTracerMag,1];
			(unitBackpack _unit) addItemCargoGlobal [_spareBarrel,1];
		};
		case "aar" : {
			_unit addBackpack _armgRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_autoRifleMag,_arMagCount];
			(unitBackpack _unit) addMagazineCargoGlobal [_autoTracerMag,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,1];
			(unitBackpack _unit) addItemCargoGlobal [_etool,1];
		};
		case "rm" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "brcr" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_shottyBuck,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_shottySlug,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_flashbang,5];
		};
		case "rmammo" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,10];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleTracerMag,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "rmat" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_latMag,1];
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "rmsc" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleScopedMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "dmr" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "gren" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleGLMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glExplody,8];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeOne,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_glSmokeTwo,2];
		};
		case "mmg" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_mmgMag,2];
			(unitBackpack _unit) addItemCargoGlobal [_spareBarrel,1];
		};
		case "mmgass" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_mmgMag,4];
			(unitBackpack _unit) addItemCargoGlobal [_etool,1];
		};
		case "matgun" : {
			_unit addBackpack _atRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_matMag,2];
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,4];
		};
		case "matass" : {
			_unit addBackpack _atRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_matMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "hat" : {
			_unit addBackpack _largeRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_hatMag,1];
		};
		case "hatass" : {
			_unit addBackpack _largeRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_hatMag,2];
		};
		case "aa" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_aaMag,1];
		};
		case "aaass" : {
			_unit addBackpack _largeRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_aaMag,2];
		};
		case "crew" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
		};
		case "crewman" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
		};
		case "pilot" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
		};
		case "aircrew" : {
			_unit addBackpack _smallRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_carbineMag,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,4];
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,8];
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,4];
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,4];
			(unitBackpack _unit) addItemCargoGlobal [_bloodTwo,2];
		};
		case "hmggun" : {
			_unit addBackpack _hmgBarrel;
		};
		case "hmgass" : {
			_unit addBackpack _hmgTripod;
		};
		case "shatgun" : {
			_unit addBackpack _shatBarrel;
		};
		case "shatass" : {
			_unit addBackpack _shatTripod;
		};
		case "mortgun" : {
			_unit addBackpack _mortBarrel;
		};
		case "mortass" : {
			_unit addBackpack _mortTripod;
		};
		case "divertl" : {
			_unit addBackpack _diverRadioRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleDiverMagOne,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleDiverMagTwo,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "diver" : {
			_unit addBackpack _diverRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleDiverMagOne,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleDiverMagTwo,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "sniper" : {
			_unit addBackpack _sniperRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "amsniper" : {
			_unit addBackpack _sniperRuck;
			call _clearRuck;
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "spotter" : {
			_unit addBackpack _radioRuck;
			call _clearRuck;
			(unitBackpack _unit) addItemCargoGlobal [_designatorBat,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_rifleGLMag,2];
			(unitBackpack _unit) addItemCargoGlobal [_bandageOne,6];	// bandages
			(unitBackpack _unit) addItemCargoGlobal [_injectorOne,2];	// morphine
			(unitBackpack _unit) addItemCargoGlobal [_injectorTwo,2];	// epinephrine
			(unitBackpack _unit) addItemCargoGlobal [_bloodTwo,1];		// bloodbag
		};
		case "engi" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addItemCargoGlobal [_toolbox,1];
			(unitBackpack _unit) addItemCargoGlobal [_wireCutters,1];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
		};
		case "demoman" : {
			_unit addBackpack _medRuck;
			call _clearRuck;
			sleep _delay;
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smoke,2];
			(unitBackpack _unit) addMagazineCargoGlobal [_demoCharge,4];
			(unitBackpack _unit) addMagazineCargoGlobal [_satchelCharge,1];
			(unitBackpack _unit) addItemCargoGlobal [_clackOne,1];
			(unitBackpack _unit) addItemCargoGlobal [_defuseKit,1];
		};
		default {
			_unit groupChat format ["Incorrect ruck call for unit: %1",_unit];
		};
	};
};

// ============================================================
// AddAttachments
// - Addition of Attachments to a Unit's weapon
// - Follows ["case",scopes,suppressors] call _addAttachments;
// - Example: ["general",false,true] call _addAttachments; = general attachments with no scopes or suppressors.
// - Example: ["dmr",true,true] call _addAttachments; = dmr attachments with scopes and suppressors.
// - Example: ["general",false,true] call _addAttachments; = general attachments, no scopes, with suppressors.
// - Possible Cases: general, dmr, ar, mmg, sniper, amsniper, diver, carlito
// - Note that pistol attachments are done regardless of what is called.
// - Parameters dictate attachments for all instances of that role.

_addAttachments = {
	private ["_type","_sco","_muz","_ptr","_primaryAttachments","_secondaryAttachments","_handgunAttachments"];

	_type =  toLower (_this select 0);
	_sco = _this select 1;
	_muz = _this select 2;
	_ptr = _this select 3;

	_primaryAttachments = primaryWeaponItems _unit;
	_secondaryAttachments = secondaryWeaponItems _unit;
	_handgunAttachments = handgunItems _unit;

	if ((!isNil "_scopes") && _scopes == 2) then {
		_generalAttachments = _scoped_generalAttachments;
		_autoRifleAttachments = _scoped_autoRifleAttachments;
		_dmrAttachments = _scoped_dmrAttachments;
		_mmgAttachments = _scoped_mmgAttachments;
	};

	if ((!isNil "_muzzles") && _muzzles == 2) then {
		_muzzle_generalAttachments = _suppressed_generalAttachments;
		_muzzle_autoRifleAttachments = _suppressed_autoRifleAttachments;
		_muzzle_dmrRifleAttachments = _suppressed_dmrAttachments;
		_muzzle_mmgRifleAttachments = _suppressed_mmgAttachments;
		_muzzle_sniperAttachments = _suppressed_sniperAttachments;
		_muzzle_pistolAttachments = _suppressed_pistolAttachments;
	};

	if ((!isNil "_pointers") && _pointers == 2) then {
		_flashLight_generalAttachments = _irPointer_generalAttachments;
		_flashLight_autoRifleAttachments = _irPointer_autoRifleAttachments;
		_flashLight_dmrRifleAttachments = _irPointer_dmrRifleAttachments;
		_flashLight_mmgRifleAttachments = _irPointer_mmgRifleAttachments;
		_flashLight_pistolAttachments = _irPointer_pistolAttachments;
	};

	if ((!isNil "_grips") && _grips) then {
		_generalAttachments = _generalAttachments + _grip_generalAttachments;
		_scoped_generalAttachments = _scoped_generalAttachments + _grip_generalAttachments;
	};

	if (!isNil "_primaryAttachments") then { { _unit removePrimaryWeaponItem _x } forEach _primaryAttachments; };
	if (!isNil "_secondaryAttachments") then { { _unit removeSecondaryWeaponItem _x } forEach _secondaryAttachments; };
	if (!isNil "_handgunAttachments") then { { _unit removeHandgunItem _x } forEach _handgunAttachments; };

	switch (_type) do {
		case "general" : {
			if !(_sco) then { if (!isNil "_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _generalAttachments; }; };
			if (_sco) then { if (!isNil "_scoped_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _scoped_generalAttachments; }; };
			if !(_muz) then { if (!isNil "_muzzle_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _muzzle_generalAttachments; }; };
			if (_muz) then { if (!isNil "_suppressed_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_generalAttachments; }; };
			if !(_ptr) then { if (!isNil "_flashLight_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _flashLight_generalAttachments; }; };
			if (_ptr) then { if (!isNil "_irPointer_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _irPointer_generalAttachments; }; };
			if (!isNil "_pistolAttachments") then { { _unit addHandgunItem _x } forEach _pistolAttachments; };
			if (_muz) then { if (!isNil "_suppressed_pistolAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_pistolAttachments; }; };
		};
		case "ar" : {
			if !(_sco) then { if (!isNil "_autoRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _autoRifleAttachments; }; };
			if (_sco) then { if (!isNil "_scoped_autoRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _scoped_autoRifleAttachments; }; };
			if !(_muz) then { if (!isNil "_muzzle_autoRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _muzzle_autoRifleAttachments; }; };
			if (_muz) then { if (!isNil "_suppressed_autoRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_autoRifleAttachments; }; };
			if !(_ptr) then { if (!isNil "_flashLight_autoRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _flashLight_autoRifleAttachments; }; };
			if (_ptr) then { if (!isNil "_irPointer_autoRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _irPointer_autoRifleAttachments; }; };
			if (!isNil "_pistolAttachments") then { { _unit addHandgunItem _x } forEach _pistolAttachments; };
			if (_muz) then { if (!isNil "_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_pistolAttachments; }; };
		};
		case "dmr" : {
			if !(_sco) then { if (!isNil "_dmrAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _dmrAttachments; }; };
			if (_sco) then { if (!isNil "_scoped_dmrAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _scoped_dmrAttachments; }; };
			if !(_muz) then { if (!isNil "_muzzle_dmrRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _muzzle_dmrRifleAttachments; }; };
			if (_muz) then { if (!isNil "_suppressed_dmrAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_dmrAttachments; }; };
			if !(_ptr) then { if (!isNil "_flashLight_dmrRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _flashLight_dmrRifleAttachments; }; };
			if (_ptr) then { if (!isNil "_irPointer_dmrRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _irPointer_dmrRifleAttachments; }; };
			if (!isNil "_pistolAttachments") then { { _unit addHandgunItem _x } forEach _pistolAttachments; };
			if (_muz) then { if (!isNil "_suppressed_pistolAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_pistolAttachments; }; };
		};
		case "mmg" : {
			if !(_sco) then { if (!isNil "_mmgAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _mmgAttachments; }; };
			if (_sco) then { if (!isNil "_scoped_mmgAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _scoped_mmgAttachments; }; };
			if !(_muz) then { if (!isNil "_muzzle_mmgRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _muzzle_mmgRifleAttachments; }; };
			if (_muz) then { if (!isNil "_suppressed_mmgAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_mmgAttachments; }; };
			if !(_ptr) then { if (!isNil "_flashLight_mmgRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _flashLight_mmgRifleAttachments; }; };
			if (_ptr) then { if (!isNil "_irPointer_mmgRifleAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _irPointer_mmgRifleAttachments; }; };
			if (!isNil "_pistolAttachments") then { { _unit addHandgunItem _x } forEach _pistolAttachments; };
			if (_muz) then { if (!isNil "_suppressed_pistolAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_pistolAttachments; }; };
		};
		case "sniper" : {
			if (!isNil "_sniperAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _sniperAttachments; };
			if !(_muz) then { if (!isNil "_muzzle_sniperAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _muzzle_sniperAttachments; }; };
			if (_muz) then { if (!isNil "_suppressed_sniperAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_sniperAttachments; }; };
			if (!isNil "_pistolAttachments") then { { _unit addHandgunItem _x } forEach _pistolAttachments; };
			if (_muz) then { if (!isNil "_suppressed_pistolAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_pistolAttachments; }; };
		};
		case "amsniper" : {
			if (!isNil "_amsniperAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _amsniperAttachments; };
			if (!isNil "_pistolAttachments") then { { _unit addHandgunItem _x } forEach _pistolAttachments; };
			if (_muz) then { if (!isNil "_suppressed_pistolAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_pistolAttachments; }; };
		};
		case "diver" : {
			if (!_underwaterWeapons && !_sco) then { if (!isNil "_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _generalAttachments; }; };
			if (!isNil "_pistolAttachments") then { { _unit addHandgunItem _x } forEach _pistolAttachments; };
			if (_muz) then { if (!isNil "_suppressed_pistolAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_pistolAttachments; }; };
		};

		// ===================================================================================================
		// M3 Scope
		case "carlito" : {
			if !(_sco) then { if (!isNil "_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _generalAttachments; }; };
			if (_sco) then { if (!isNil "_scoped_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _scoped_generalAttachments; }; };
			if !(_muz) then { if (!isNil "_muzzle_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _muzzle_generalAttachments; }; };
			if (_muz) then { if (!isNil "_suppressed_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_generalAttachments; }; };
			if !(_ptr) then { if (!isNil "_flashLight_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _flashLight_generalAttachments; }; };
			if (_ptr) then { if (!isNil "_irPointer_generalAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _irPointer_generalAttachments; }; };
			if (!isNil "_pistolAttachments") then {{ _unit addHandgunItem _x } forEach _pistolAttachments;};
			if (_sup) then { if (!isNil "_suppressed_pistolAttachments") then { { _unit addPrimaryWeaponItem _x } forEach _suppressed_pistolAttachments; }; };
			if (!isNil "_matScope") then {  _unit addSecondaryWeaponItem _matScope; };
			if (!isNil "_hatScope") then {  _unit addSecondaryWeaponItem _hatScope; };
		};
		// ===================================================================================================
		default {
			_unit groupChat format ["Incorrect attachment call for unit: %1",_unit];
		};
	};
};

// ============================================================
// IFAK
// - Basic Meds for the unit
// - Example: ["vest"] call _IFAK;
// - Example: ["pack"] call _IFAK;
// - Array parameter dictates whether meds go into backpack or vest for all instances of that role.
// - Use "pack"/"vest"/"uniform"
// - default is pack

_IFAK = {
	private ["_location"];
	_location = toLower(_this select 0);
	switch (_location) do {
		case "pack" : {
			if (!isNull (unitBackpack _unit)) then {
				(unitBackpack _unit) addItemCargoGlobal [_injectorOne,1];
				(unitBackpack _unit) addItemCargoGlobal [_bandageOne,8];
			};
		};
		case "vest" : {
			for "_i" from 1 to 4 do {_unit addItemToVest _bandageOne};
		};
		case "uniform" : {
			for "_i" from 1 to 8 do {_unit addItemToUniform _bandageOne};
			for "_i" from 1 to 2 do {_unit addItemToUniform _injectorOne};
		};
		default {
			if (!isNull (unitBackpack _unit)) then {
				(unitBackpack _unit) addItemCargoGlobal [_bandageOne,6];
				(unitBackpack _unit) addItemCargoGlobal [_injectorOne,2];
			};
		};
	};
};

// ============================================================
// BackpackToFront
// - Backpack becomes Frontpack, thanks to @backpackonchest
// - Example: call _backpackToFront;
// - Automatically calls this function before adding parachutes, if parachutes are enabled.

_backpackToFront = {
	waitUntil {!isNil "Zade_BOC_fnc_BackpackOnChest"};
	[_unit] call Zade_BOC_fnc_BackpackOnChest;
};


// ============================================================
// Para
// - If parachutes enabled, place backpack on front, then add the parachute.
// - "steerable" - adds steerable chutes.
// - "nonsteerable" - adds nonsteerable chutes.
// - "none" - adds no chutes.
// - wow

_para = {
	switch (_parachutes) do {
		case "steerable" : {
			// roles in this array will not receive parachutes.
			if !(_loadout in ["rotarypilot","fixedpilot","crewmander","crewman"]) then {
				 call _backpackToFront;
				 sleep _delay;
				 _unit addBackpack _steerableChute;
			};
		};
		case "nonsteerable" : {
			// roles in this array will not receive parachutes.
			if !(_loadout in ["rotarypilot","fixedpilot","crewmander","crewman"]) then {
				 call _backpackToFront;
				 sleep _delay;
				 _unit addBackpack _nonsteerableChute;
			};
		};
		case "none" : {};
		default {};
	};
};

// ============================================================
// PostGearAssign
// - Handles extra stuff, like backup sights, cable ties, flashbangs and parachutes.

_postGearAssign = {
	// Parachute Function
	// See variable @ top for more details. If false, does nothing.
	call _para;

	// Iron Sight - muzzle - pointer
	// Removes weapon attacments if applicable.
	if !(_loadout in ["sniper","amsniper","spotter","dmr"]) then { call _setIrons; };
	if !(_loadout in ["amsniper","spotter"]) then { call _removeMuzzles; };
	if !(_loadout in ["spotter"]) then { call _removePointers; };

	// Flashbang Stuff
	// add/remove roles to/from this array for them to be/not be equipped with cableties, when enabled.
	if (_loadout in ["pltld","secco","sectl","ar","aar","rm","rmat","rmsc","dmr","gren","mmg","mmgass","divertl","diver"]) then {
		if (!isNil "_flashbangs" && _flashbangs > 0) then {
			for "_i" from 1 to (round _flashbangs) do { (unitBackpack _unit) addMagazineCargoGlobal [_flashbang,1]; };
		};
	};

	// Incendiary Stuff
	// add/remove roles to/from this array for them to be/not be equipped with cableties, when enabled.
	if (_loadout in ["pltld","secco","sectl","ar","aar","rm","rmat","rmsc","dmr","gren","mmg","mmgass","divertl","diver"]) then {
		if (!isNil "_incendiarys" && _incendiarys > 0) then {
			for "_i" from 1 to (round _incendiarys) do { (unitBackpack _unit) addMagazineCargoGlobal [_incendiary,1]; };
		};
	};

	// Cable Tie Stuff
	// Add/remove roles to/from this array for them to be/not be equipped with cableties, when enabled.
	if (_loadout in ["pltld","secco","sectl","ar","aar","rm","rmat","rmsc","dmr","gren","mmg","mmgass","divertl","diver"]) then {
		if (!isNil "_cableTies" && _cableTies > 0) then {
			for "_i" from 1 to (round _cableTies) do { _unit addItemToUniform _cableTieItem };
		};
	};

	// ACE Map Tools
	ace_maptools_mapTool_Shown = 2;

	// Reset Stamina

	_unit setStamina 200;

};

// ============================================================
// - Removes attachments

_setIrons = {
	private ["_items","_attachment"];
	if (_scopes == 0) then {
		_items = _unit weaponAccessories (primaryWeapon _unit);
		_attachment = _items select 2;
		if (!isNil "_attachment" && {_attachment != ""}) then { _unit removePrimaryWeaponItem _attachment; };
	};
};

_removeMuzzles = {
	private ["_items","_attachment"];
	if (_muzzles == 0) then {
		_items = _unit weaponAccessories (primaryWeapon _unit);
		_attachment = _items select 0;
		if (!isNil "_attachment" && {_attachment != ""}) then { _unit removePrimaryWeaponItem _attachment; };
	};
};

_removePointers = {
	private ["_items","_attachment"];
	if (_pointers == 0) then {
		_items = _unit weaponAccessories (primaryWeapon _unit);
		_attachment = _items select 1;
		if (!isNil "_attachment" && {_attachment != ""}) then { _unit removePrimaryWeaponItem _attachment; };
	};
};

// ============================================================