//by diabolical
//this addAction ["Teleport MHQ1", "teleportMHQ.sqf", MHQ1]; this addAction ["Teleport MHQ2", "teleportMHQ.sqf", MHQ2];
_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_teleporTo = _this select 3;

if (alive _teleporTo) then
{
        _caller moveInCargo _teleporTo;
        player groupChat format ["You have been deployed at the MHQ", _teleporTo];
} else {
        player groupChat format ["Unable to deploy to the MHQ at this time.", _teleporTo];
};