/* 
Arsenal Gear Assign Script for Arma 3
by Mr. Agnet

- Intended for some special cases where you might want specific units to have specific gear.
- NOT intended as a replacement for the standard gear scripts. 
- Note that our basic medical equipment includes six banadges and two morphine, be sure to include these at the very least. 

===== Using This Script =====
- Place exported Arsenal Data in the area provided
- Replace all instances of 'this' with '_unit' with the arsenal exported data.
- Ensure that the _this on line #26 hasn't been replaced - to do this, check any match whole word search options when replacing.

Call the script as follows:
nul = [this] execVM "scripts\assignGear_Arsenal.sqf";

Some Things:
- The setFace command will not work correctly, best to remove that line.
- Make sure that the short range radio being assigned is "itemRadio", not some TFAR classname, backpacks should be fine. 
=============================
*/ 
private ["_delay","_unit"];

// variable assignment
_delay = 0.1;
_unit = _this select 0;

// waits until mission has started, make sure unit exists, or wait until it does
waitUntil {time > 1};																			
if (_unit != _unit) then { waitUntil { !isNull _unit; }; };
if (!isDedicated && isMultiplayer) then { waitUntil { !isNull _unit && isPlayer _unit; }; };

// script needs to run on the unit/player's computer. 
if (!(local _unit)) exitWith {};	
if ((isMultiplayer && isServer) && isPlayer _unit) exitWith {};
if ((isMultiplayer && !isServer) && !isPlayer _unit) exitWith {};					

// ===============================
// Place Arsenal Export Here





// ===============================
// Set unit as medic
_unit setVariable ["Ace_medical_medicClass", 1, true];
_unit selectWeapon (primaryWeapon _unit);						
_unit switchMove "AmovPercMstpSlowWrflDnon";	
	
if ((_mapLight in items _unit) && ((date select 3 <= 6) || (date select 3 >= 18))) then { [_mapLight] call ace_map_fnc_switchFlashlight; [""] call ace_map_fnc_flashlightGlow; };
ace_maptools_mapTool_Shown = 2;
_unit setStamina 200;

sleep _delay;		
											
if (isPlayer _unit) then {_unit groupChat  format ["%1 completed gear assign", name _unit]; };
