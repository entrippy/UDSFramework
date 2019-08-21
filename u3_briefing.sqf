/*
Briefing Picker Script
By Mr. Agnet
If variable 'r_var_brief_separateBriefings' is true, runs separate briefing files for different sides
Variable 'r_var_brief_separateBriefings' is default false
*/

private ["_side"];

// Server and Numpty don't need to deal with this shit
if (!hasInterface) exitWith {};

// ALL SIDES Briefing
player createDiaryRecord ["diary", ["Radio / Freqs","
<font size='18'>Radio:</font><br/>
Plt LR        : freq 50<br/>
FAC LR        : freq 60<br/>
Plt SR        : freq 100<br/>
Alpha SR      : freq 101<br/>
Bravo SR      : freq 102<br/>
Charlie SR    : freq 103<br/>
Alpha SR      : freq 104<br/>
<br/>
Alpha MG SR   : freq 110<br/>
Bravo MG SR   : freq 111<br/>
Alpha HAT SR  : freq 112<br/>
Bravo HAT SR  : freq 113<br/>
Alpha ST SR   : freq 114<br/>
Alpha HMG SR  : freq 115<br/>
Bravo HMG SR  : freq 116<br/>
Alpha SHAT SR : freq 117<br/>
Bravo SHAT SR : freq 118<br/>
Alpha MORT SR : freq 119<br/>
<br/>
MECH A22 SR   : freq 121<br/>
MECH B22 SR   : freq 122<br/>
MECH C22 SR   : freq 123<br/>
MECH D22 SR   : freq 124<br/>
<br/>
MECH A23 SR   : freq 125<br/>
MECH B23 SR   : freq 126<br/>
MECH C23 SR   : freq 127<br/>
MECH D23 SR   : freq 128<br/>
<br/>
HELI 11 SR    : freq 130<br/>
HELI 12 SR    : freq 131<br/>
HELI 13 SR    : freq 132<br/>
<br/>
FIXW 11 SR    : freq 140<br/>
FIXW 12 SR    : freq 141<br/>
<br/><br/>
"]];
player createDiaryRecord ["diary", ["Admin / Logistics","
<font size='18'>Logistics:</font><br/>
Vehicles: <br/>
1x vehicle <br/>
1x vehicle <br/>
<br/>
Resupply: <br/>
1x ammo <br/>
1x ammo<br/>
1x ammo<br/>
1x ammo<br/>
<br/>
Fire Support: <br/>
None<br/>
<br/>
"]];

// ====================================================================================

player createDiaryRecord ["diary", ["Mission / Situation / Objectives","
<font size='18'>Mission / Situation :</font><br/>
tell us a story? if any of this briefing isn't filled in I want everyone to point and laugh at the mission maker.
<br/><br/>
Hints / Tips :<br/>
tips? rules?<br/><br/>
tips? rules?<br/><br/>
tips? rules?<br/><br/>
tips? rules?<br/><br/>
"]];


// ====================================================================================
// ORBAT/Roster Script
/*
Mission ORBAT/Roster Script
by Mr. Agnet
- Displays all unit names and groups at mission start in briefing notes
*/

// Define variables
private ["_text","_groups"];

_text = "<br />NOTE: The ORBAT below is only accurate at mission start.<br />
<br />";

_groups = [];
{
	// Add to ORBAT if side matches, group isn't already listed, and group has players
	if ((side _x == side group player) && !(_x in _groups) && (({_x in playableUnits} count units _x) > 0)) then {
		_groups pushBack _x;
	};
} forEach allGroups;

// Loop through the group, print out group ID and leader name
{
	_text = _text + format ["<font color='#ffffff'>%1 - %2</font>", _x, name leader _x] + "<br />";
	{
		if (_x != leader group _x) then {
			_text = _text + format["<font color='#d6d6d6'>|- %1</font>",name _x] + "<br />";
		};
	} forEach units _x;
	_text = _text + format ["<font color='#ffffff'>-------------- </font>"] + "<br />";
} forEach _groups;

// Insert final result into subsection ORBAT of section Notes
player createDiaryRecord ["diary", ["Mission Roster", _text]];