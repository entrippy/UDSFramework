private [
"_nightGear","_scopes","_muzzles","_pointers","_grips","_headgear","_parachutes","_flashbangs","_incendiarys","_cableTies","_radioSelection","_underwaterWeapons",
"_delay","_delayRadio","_unit","_loadout","_includeValue","_weaponsFile"
];

// ============================================== Variables ===================================================================
	// Enter desired default values here.
_nightGear = false;					// nvg's
_variant = "ak74m";     // weapon
_scopes = 0; 						// 0= none, 1= reflex, 2= optic
_muzzles = 0;         				// 0= none, 1= muzzle, 2= suppressor
_pointers = 0;						// 0= none, 1= lights, 2= ir pointer
_grips = false;						// adds grips to most rhs weapons
_launcher = "russian_vdv";			// launchers statics
_camoPattern = "vdv_emr_wd";    // uniform
_headgear = "6b7_1m_emr";	// helmet type
_parachutes = "none";				// Available cases: "steerable", "nonsteerable", "none".
_flashbangs = 0;					// add number for amount
_incendiarys = 0;					// add number for amount
_cableTies = 0;						// add number for amount
_radioSelection = "rhs rus";			// tfar radio selection
_underwaterWeapons = true;

// ============================================================================================================================
// variable assignment

_delay = 0.1;
_delayRadio = 8;
_unit = _this select 0;
_loadout = toLower (_this select 1);
if ((count _this > 2)) then { if (typeName (_this select 2) == "STRING") then { _team = _this select 2; }; };

// ============================================================================================================================

// waits until mission has started, make sure unit exists, or wait until it does
waitUntil {time > 1};
if (_unit != _unit) then { waitUntil { !isNull _unit; }; };
if (!isDedicated && isMultiplayer) then { waitUntil { !isNull _unit; }; };
if ((!isDedicated && isMultiplayer) && (_unit isKindOf "Man")) then { waitUntil { !isNull _unit && isPlayer _unit; }; };

// disable AI stuffs
if ((_unit isKindOf "Man") && !(isPlayer _unit)) then { {_unit disableAI _x} forEach ["TARGET","AUTOTARGET","MOVE","FSM","ANIM"]; };

// script needs to run on the unit/player's computer - if the unit is a player, then server exits. If not, then player exits.
if (!(local _unit)) exitWith {};
if ((isMultiplayer && isServer) && isPlayer _unit) exitWith {};
if ((isMultiplayer && !isServer) && !isPlayer _unit) exitWith {};

// ============================================================================================================================
// Include files for weapons, uniforms, functions and tools.
// Alter the lines below to include different classes, or edit those files.

// Variable Includes, Alter these for different stuff
#include "weapons\weapons_AK.sqf";   // weapons classes.
#include "uniforms\uniforms_AFRF.sqf"; // uniform classes.

// Fixed Includes, do not alter
#include "weapons\launchers_statics.sqf";  // launcher classes.
#include "uniforms\tfar_radios.sqf"		   // radio classes.

// General Includes
#include "assignGear_Functions.sqf";		// functions used by the gear script.
#include "assignGear_GenericItems.sqf";		// tools and miscellaneous items assigned to players.

// ============================================================================================================================
// ammo types
if ((!isNil "_muzzles") && _muzzles == 2) then {
	_rifleMag = _rifleSubsonicMag;
	_rifleGLMag = _rifleSubsonicMag;
	_autoRifleMag = _autoSubsonicMag;
};

// ============================================================================================================================
// Gear Roles/Cargo Contents
// - Uses a Switch Statement to define roles.
// - Includes roles both for players and things like ammo crates and vehicles.
// - Peforms a check to see if the unit is a man or not.
// - NOTE: roles intended for players ('man' entities) may not work correctly on crates or vehicles, and vice versa.

// Gear Removal
if (_rflmUniform != "") then { removeUniform _unit; };
if (_goggles != "") then { removeGoggles _unit; };
removeAllItems _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;
removeVest _unit;
removeHeadgear _unit;
removeBackpack _unit;

// ================================================================================================================================================================
// If unit is a man then use this switch

if (_unit isKindOf "Man") then {

	// Switch Statement Begins
	switch (_loadout) do {
		// ========================================
		// =========== Platoon HQ Roles ===========
		// ========================================
		// PltCO/PltSGT
		case "pltld" : {
			["commander"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,2];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["plt"] call _addRuck;
			["general",false,false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Plt Medic - doubles for COY Medic
		case "pltmed" : {
			["medic"] call _addClothes;
			["binocular"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			for "_i" from 1 to 4 do {_unit addItemToUniform _smoke};
			for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag};
			for "_i" from 1 to 10 do {_unit addItemToVest _bandageOne};
			for "_i" from 1 to 10 do {_unit addItemToUniform _bandageOne};
			for "_i" from 1 to 4 do {_unit addItemToUniform _injectorOne};
			for "_i" from 1 to 4 do {_unit addItemToUniform _injectorTwo};
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["medic"] call _addRuck;
			["general",false,false,false,false] call _addAttachments;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Plt FAC/FO - doubles for COY FAC/FO
		case "pltfac" : {
			["rflm"] call _addClothes;
			["westdesignator"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x; _unit addItemToUniform _x; } foreach _facSmokes;
			_unit addItemToVest _dagr;
			_unit addItemToVest _eastrangefinder;
			_unit addMagazines [_rifleMag,6];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addWeapon _rifleGL;
			["fac"] call _addRuck;
			["general",false,false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Plt UAV Operator
		case "pltuavop" : {
			["rflm"] call _addClothes;
			["westdesignator"] call _addBasics;
			_unit addItemToUniform _uavBat;
			_unit addItemToUniform _designatorBat;
			_unit addItemToVest _uavTool;
			_unit addItemToVest _dagr;
			_unit addItemToVest _eastrangefinder;
			{ _unit addItemToVest _x; _unit addItemToVest _x; } foreach _facSmokes;
			_unit addMagazines [_rifleMag,6];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["uavop"] call _addRuck;
			["general",false,false,false,false] call _addAttachments;
			["vest"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// ========================================
		// ============ Section Roles =============
		// ========================================
		// Section Commander
		case "secco" : {
			["secco"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,6];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["plt"] call _addRuck;
			["general",false,false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Section Team Leader / 2iC
		case "sectl" : {
			["teamleader"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleGLMag,6];
			_unit addMagazines [_rifleTracerMag,2];
			_unit addMagazines [_glExplody,4];
			_unit addMagazines [_glSmokeOne,2];
			_unit addMagazines [_glSmokeTwo,2];
			_unit addMagazines [_glSmokeThree,2];
			_unit addWeapon _rifleGL;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["tl"] call _addRuck;
			["general",false,false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Automatic Rifleman
		case "ar" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_autoRifleMag,_arMagCount];
			_unit addWeapon _autoRifle;
			_unit addMagazine _autoTracerMag;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["ar"] call _addRuck;
			["ar",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Assistant Automatic Rifleman
		case "aar" : {
			["rflm"] call _addClothes;
			["binocular"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["aar"] call _addRuck;
			["general",false,false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Rifleman
		case "rm" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["rm"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		case "brcr" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_shottyBuck,4];
			_unit addMagazines [_shottySlug,4];
			_unit addWeapon _shotty;
			["brcr"] call _addRuck;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Rifleman
		case "rmammo" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["rmammo"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Rifleman (disposable light AT)
		case "rmat" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["rmat"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			_unit addWeapon _lat;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Scoped Rifleman
		case "rmsc" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifleScoped;
			["rmsc"] call _addRuck;
			["dmr",true,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Designated Marksman
		case "dmr" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_dmrMag,8];
			_unit addWeapon _dmr;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["dmr"] call _addRuck;
			["dmr",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Grenadier
		case "gren" : {
			["gren"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addMagazines [_glExplody,4];
			_unit addMagazines [_glSmokeOne,1];
			_unit addMagazines [_glSmokeTwo,1];
			_unit addWeapon _rifleGL;
			["gren"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Machinegunner
		case "mmg" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_mmgMag,2];
			_unit addWeapon _mmg;
			_unit addMagazine _mmgMag;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["mmg"] call _addRuck;
			["mmg",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Assistant Machinegunner
		case "mmgass" : {
			["rflm"] call _addClothes;
			["binocular"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["mmgass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};

		// ========================================
		// ============ Vehicle Crews =============
		// ========================================
		// Rotary Wing Pilot
		case "rotarypilot" : {
			["rpilot"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x; _unit addItemToUniform _x; } foreach _facSmokes;
			for "_i" from 1 to 6 do {_unit addItemToVest _smgMag};
			_unit addWeapon _smg;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["pilot"] call _addRuck;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		case "rotarycrew" : {
			["rcrew"] call _addClothes;
			["binocular"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x; _unit addItemToUniform _x; } foreach _facSmokes;
			for "_i" from 1 to 6 do {_unit addItemToVest _carbineMag};
			_unit addWeapon _carbine;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["aircrew"] call _addRuck;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Fixed Wing Pilot
		case "fixedpilot" : {
			["fpilot"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x; _unit addItemToUniform _x; } foreach _facSmokes;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["pilot"] call _addRuck;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Crew Commander
		case "crewmander" : {
			["crew"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			for "_i" from 1 to 2 do {_unit addItemToUniform _smoke};
			for "_i" from 1 to 6 do {_unit addItemToVest _carbineMag};
			_unit addWeapon _carbine;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["crew"] call _addRuck;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Crewman
		case "crewman" : {
			["crew"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			for "_i" from 1 to 2 do {_unit addItemToUniform _smoke};
			{ _unit linkItem _x } foreach _ftlItems;
			for "_i" from 1 to 6 do {_unit addItemToVest _carbineMag};
			_unit addWeapon _carbine;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["crewman"] call _addRuck;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};

		// ========================================
		// ========= Static Weapons Teams =========
		// ========================================
		// HMG Gunner
		case "hmggun" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["hmggun"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["vest"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// HMG Assistant
		case "hmgass" : {
			["rflm"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["hmgass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["vest"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// SHAT Gunner
		case "shatgun" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["gmggun"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["vest"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// SHAT Assistant
		case "shatass" : {
			["rflm"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["gmgass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["vest"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// MORT Gunner
		case "mortgun" : {
			["gunner"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["mortgun"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["vest"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// MORT Assistant
		case "mortgun" : {
			["rflm"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["mortass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["vest"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};

		// ========================================
		// ============ Launcher Teams ============
		// ========================================
		// MAT Gunner
		case "matgun" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["matgun"] call _addRuck;
			_unit addWeapon _matLaunch;
			["carlito",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// MAT Assisstant
		case "matammo" : {
			["rflm"] call _addClothes;
			["binocular"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["matass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// HAT Gunner
		case "hatgun" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["hat"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			_unit addWeapon _hatLaunch;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// HAT Assistant
		case "hatammo" : {
			["rflm"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["hatass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// AA Gunner
		case "aagun" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["aa"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			_unit addWeapon _aaLaunch;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// AA Assistant
		case "aaammo" : {
			["rflm"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["aaass"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};

		// ========================================
		// =========== Specialist Roles ===========
		// ========================================
		// Sniper
		case "sniper" : {
			["sniper"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x } foreach _sniperItems;
			{ _unit addItemToUniform _x; } foreach _throwG;
			for "_i" from 1 to 9 do {_unit addItemToVest _boltRifleMag};
			_unit addWeapon _boltRifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["sniper"] call _addRuck;
			["sniper",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Anti-Material Sniper
		case "amsniper" : {
			["sniper"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x } foreach _sniperItems;
			{ _unit addItemToUniform _x; } foreach _throwG;
			for "_i" from 1 to 9 do {_unit addItemToVest _amRifleMag};
			_unit addWeapon _amRifle;
			_unit addWeapon _pistol;
			_unit addMagazines [_pistolMag,2];
			["amsniper"] call _addRuck;
			["amsniper",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Spotter
		case "spotter" : {
			["sniper"] call _addClothes;
			["westdesignator"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x } foreach _sniperItems;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleGLMag,8];
			_unit addMagazines [_glExplody,5];
			_unit addMagazines [_glSmokeOne,2];
			_unit addMagazines [_glSmokeTwo,2];
			_unit addWeapon _rifleGL;
			["spotter"] call _addRuck;
			["general",false,true,false] call _addAttachments;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Diver Team Leader
		case "divertl" : {
			["diver"] call _addClothes;
			["eastrangefinder"] call _addBasics;
			{ _unit addItem _x } foreach _secItems;
			_unit addMagazines [_rifleDiverMagOne,3];
			_unit addMagazines [_rifleDiverMagTwo,3];
			{ _unit addMagazines [_x,2]; } foreach _throwG;
			_unit addWeapon _rifleDiver;
			["divertl"] call _addRuck;
			["diver",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Diver General
		case "diver" : {
			["diver"] call _addClothes;
			["none"] call _addBasics;
			_unit addMagazines [_rifleDiverMagOne,3];
			_unit addMagazines [_rifleDiverMagTwo,3];
			{ _unit addMagazines [_x,2]; } foreach _throwG;
			_unit addWeapon _rifleDiver;
			["diver"] call _addRuck;
			["diver",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Engineer
		case "engi" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["engi"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// Demo Man
		case "demoman" : {
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit linkItem _x } foreach _secItems;
			{ _unit addItemToUniform _x; } foreach _throwG;
			_unit addMagazines [_rifleMag,8];
			_unit addWeapon _rifle;
			["demoman"] call _addRuck; // largeruck
			["general",false,false,false] call _addAttachments;
			["pack"] call _IFAK;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// ========================================
		// if undefined or incorrectly defined, give hint and assign standard rifleman gear
		default {
			_unit groupChat format ["No or incorrectly defined loadout for unit: %1",_unit];
			["rflm"] call _addClothes;
			["none"] call _addBasics;
			{ _unit addItemToUniform _x; } foreach _throwG;
			for "_i" from 1 to 9 do {_unit addItemToVest _rifleMag};
			_unit addWeapon _rifle;
			["rm"] call _addRuck;
			["general",false,false,false] call _addAttachments;
			sleep _delayRadio;
			_unit linkItem _squadRadio;
		};
		// ========================================
	};
	// ========================================
	// Post Gear Assign Function, handles misc stuff.
	call _postGearAssign;

	// ========================================
	// AssignGear Finisher

	_unit setVariable ["Ace_medical_medicClass", 1, true];										// sets unit as medic
	[_unit,_insignia] call bis_fnc_setUnitInsignia;												// sets unit uniform insignia
	_unit selectWeapon (primaryWeapon _unit);													// selects unit's primary weapon
	_unit switchMove "AmovPercMstpSlowWrflDnon";												// sets stance with weapon lowered
	sleep _delay;																				// wait a sec
	_unit groupChat format ["%1 completed gear assign.", name _unit];	// hint that unit has finished gear assign

	// ========================================
};

// ================================================================================================================================================================
// If unit isn't a man, then fill it with this stuff.

if (!(_unit isKindOf "Man")) then {
	switch (_loadout) do {

		// clear crate cargo
		clearMagazineCargoGlobal _unit;
		clearWeaponCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		clearItemCargoGlobal _unit;

		// ========================================
		// ============= Ammo Only Crates =========
		// ========================================
		case "sectionammo" : {
			_unit addMagazineCargoGlobal [_rifleMag,40];
			_unit addMagazineCargoGlobal [_autoRifleMag,_arboxMagCount];
			_unit addMagazineCargoGlobal [_autoTracerMag,2];
			_unit addMagazineCargoGlobal [_dmrMag,8];
			_unit addMagazineCargoGlobal [_grenade,16];
			_unit addMagazineCargoGlobal [_smoke,24];
			_unit addMagazineCargoGlobal [_glExplody,12];
			_unit addMagazineCargoGlobal [_glSmokeOne,8];
			_unit addMagazineCargoGlobal [_glSmokeTwo,3];
			_unit addMagazineCargoGlobal [_glSmokeThree,3];
			_unit addMagazineCargoGlobal [_shottyBuck,4];
			_unit addMagazineCargoGlobal [_shottySlug,4];
			_unit addItemCargoGlobal [_bandageOne,16];
			_unit addItemCargoGlobal [_injectorOne,4];
			_unit addItemCargoGlobal [_designatorBat,1];
		};
		case "rifleammo" : {
			_unit addMagazineCargoGlobal [_rifleMag,30];
			_unit addMagazineCargoGlobal [_grenade,5];
			_unit addMagazineCargoGlobal [_smoke,5];
		};
		case "glammo" : {
			_unit addMagazineCargoGlobal [_rifleGLMag,10];
			_unit addMagazineCargoGlobal [_glExplody,12];
			_unit addMagazineCargoGlobal [_glSmokeOne,6];
			_unit addMagazineCargoGlobal [_glSmokeTwo,6];
			_unit addMagazineCargoGlobal [_glSmokeThree,4];
		};
		case "arammo" : {
			_unit addMagazineCargoGlobal [_autoRifleMag,_arboxMagCount];
			_unit addMagazineCargoGlobal [_autoTracerMag,2];
			_unit addMagazineCargoGlobal [_grenade,4];
			_unit addMagazineCargoGlobal [_smoke,4];
		};
		case "mmgammo" : {
			_unit addMagazineCargoGlobal [_mmgMag,_mmgboxMagCount];
			_unit addMagazineCargoGlobal [_mmgTracerMag,2];
			_unit addMagazineCargoGlobal [_grenade,4];
			_unit addMagazineCargoGlobal [_smoke,4];
		};
		case "dmrammo" : {
			_unit addMagazineCargoGlobal [_dmrMag,8];
			_unit addMagazineCargoGlobal [_grenade,2];
			_unit addMagazineCargoGlobal [_smoke,2];
		};
		case "latammo" : {
			_unit addWeaponCargoGlobal [_lat,2];
			_unit addMagazineCargoGlobal [_latMag,4];
		};
		case "matammo" : {
			_unit addMagazineCargoGlobal [_matMag,4];
		};
		case "hatammo" : {
			_unit addMagazineCargoGlobal [_hatMag,2];
		};
		case "aaammo" : {
			_unit addMagazineCargoGlobal [_aaMag,2];
		};

		// ========================================
		// =========== Medical Supplies ===========
		// ========================================

		case "meds" : {
			_unit addItemCargoGlobal [_injectorOne,25];
			_unit addItemCargoGlobal [_injectorTwo,18];
			_unit addItemCargoGlobal [_bandageOne,60];
			_unit addItemCargoGlobal [_bloodOne,12];
			_unit addItemCargoGlobal [_bloodTwo,12];
			_unit addItemCargoGlobal [_bloodThree,12];
		};

		// ========================================
		// ============== Explosives ==============
		// ========================================
		case "atmines" : {
			_unit addItemCargoGlobal [_atMine,6];
		};
		case "apmines" : {
			_unit addItemCargoGlobal [_apersMine,5];
			_unit addItemCargoGlobal [_apersBound,5];
			_unit addItemCargoGlobal [_apersTrip,5];
			_unit addItemCargoGlobal [_claymore,5];
			_unit addItemCargoGlobal [_clackOne,2];
		};
		case "demosmall" : {
			_unit addItemCargoGlobal [_demoCharge,6];
			_unit addItemCargoGlobal [_clackOne,2];
		};
		case "demobig" : {
			_unit addItemCargoGlobal [_satchelCharge,4];
			_unit addItemCargoGlobal [_clackOne,2];
		};

		// ========================================
		// =========== Heavy Weapons Teams ========
		// ========================================
		case "hmgtripod" : {
			_unit addBackpackCargoGlobal [_hmgBarrel,1];
		};
		case "hmgweapon" : {
			_unit addBackpackCargoGlobal [_hmgTripod,1];
		};
		case "shattripod" : {
			_unit addBackpackCargoGlobal [_shatTripod,1];
		};
		case "shatweapon" : {
			_unit addBackpackCargoGlobal [_shatBarrel,1];
		};
		// ========================================
		// ================= Tools ================
		// ========================================
		case "engitools" : {
			_unit addItemCargoGlobal [_toolbox,2];
			_unit addItemCargoGlobal [_wireCutters,2];
			_unit addBackpackCargoGlobal [_medRuck,2];
		};
		case "nightvisions" : {
			_unit addItemCargoGlobal [_nightVision,8];
		};
		case "nightgear" : {
			_unit addMagazineCargoGlobal [_glFlareOne,30];
			_unit addMagazineCargoGlobal [_glFlareTwo,30];
			_unit addMagazineCargoGlobal [_chemlightOne,30];
			_unit addMagazineCargoGlobal [_chemlightTwo,30];
			_unit addMagazineCargoGlobal [_handFlareOne,30];
			_unit addMagazineCargoGlobal [_handFlareTwo,30];
		};
		case "radiogear" : {
			_unit addItemCargoGlobal [_squadRadio,20];
			_unit addBackpackCargoGlobal [_airRadioRuck,8];
			_unit addBackpackCargoGlobal [_radioRuck,8];
		};
		case "uavgear" : {
			_unit addItemCargoGlobal [_uavTool,1];
			_unit addBackpackCargoGlobal [_uavRuck,1];
		};
		case "attachments" : {
			{ _unit addItemCargoGlobal [_x ,10]; } forEach _generalAttachments;
			{ _unit addItemCargoGlobal [_x ,5]; } forEach _autoRifleAttachments;
			{ _unit addItemCargoGlobal [_x ,5]; } forEach _mmgAttachments;
			{ _unit addItemCargoGlobal [_x ,10]; } forEach _pistolAttachments;
		};
		case "cableties" : {
			_unit addItemCargoGlobal [_cableTieItem,40];
		};
		case "flashabangs" : {
			_unit addItemCargoGlobal [_flashbang,40];
		};
		case "wetsuits" : {
			_unit addItemCargoGlobal [_diverUniform,8];
			_unit addItemCargoGlobal [_diverVest,8];
			_unit addBackpackCargoGlobal [_diverRadioRuck ,2];
			_unit addBackpackCargoGlobal [_diverRuck ,8];
		};

		// ========================================
		// =================== Misc ===============
		// ========================================
		case "steerchutes" : {
			_unit addBackpackCargoGlobal [_steerableChute,30];
		};
		case "nonsteerchutes" : {
			_unit addBackpackCargoGlobal [_nonsteerableChute,30];
		};
		case "bananas" : {
			_unit addItemCargoGlobal [_bananas,10];
		};
		case "blank" : {
			// empties the crate if necessary, doesn't add anything.
		};

		// ========================================
		// If no or incorrect case, present message.
		default {
			 systemChat format ["%1 completed gear assign: %2", name _unit, toUpper (_loadout)];	// hint that unit has finished gear assign
		};
		// ========================================
	};
};

// ================================================================================================================================================================