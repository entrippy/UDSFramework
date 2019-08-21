while {true} do
{

{

_x setSkill 0.9;

_x setSkill ["aimingAccuracy", 0.7];

_x setSkill ["aimingShake", 0.4];

_x setSkill ["aimingSpeed", 0.5];

_x setSkill ["Endurance",0.8];

_x setSkill ["spotDistance",0.7];

_x setSkill ["spotTime",0.7];

_x setSkill ["courage", 0.9];

_x setSkill ["reloadSpeed", 1];

_x setSkill ["commanding", 0.9];

} forEach (allUnits select {side _x == east});

sleep 10;

};