/*
Da Startup for Da Tellyporta Flags 
by Mr. Agnet

Use the following format to set up your teleport flag with relevant scroll menu options: 
_flag addAction ["Destination Decsription","scripts\teleports\teleport.sqf",["markerName"]];
- _flag being the flag or other object to attach the scroll menu options to.
- "Destination Description" being the name of the scroll menu option, obviously players will want to know where they're going.
- markerName is the name of the marker in the editor, this position will be used to teleport players to. Whether you have these as empty (invisisble) or visible markers is up to you. 

For Example, an option on the Training Base looks like:
_flag addAction ["Base","scripts\teleports\teleport.sqf",["marker_baseTele"]];
*/

private ["_flag"];

_flag = _this select 0;
_flag setflagtexture "loadscreen.jpg";

// add addActions to the flags

