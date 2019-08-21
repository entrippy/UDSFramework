	default {
		// ==================== Uniforms ==================

		_rflmUniformArray = [""];
		_rflmRandom = (floor(random (count _rflmUniformArray)));
		_rflmUniform = _rflmUniformArray select _rflmRandom;	// leave as "" for default, or enter single string value to remove randommess
		_crewUniform = "";
		_leaderUniform = "";
		_rpilotUniform = "";
		_fpilotUniform = "";
		_sniperUniform = "";

		// ==================== Headgear ==================

		switch (_headgear) do {
			case "none" : {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "";
				_rotaryCrewHelmet = "";
				_fixedPilotHelmet = "";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
			default {
				_rflmHelmetArray = [""];
				_rflmHRandom = (floor(random (count _rflmHelmetArray)));
				_rflmHelmet = _rflmHelmetArray select _rflmHRandom;	// enter single string value to remove randommess
				_crewmanHelmetArray = [""];
				_crewmanHRandom = (floor(random (count _crewmanHelmetArray)));
				_crewmanHelmet = _crewmanHelmetArray select _crewmanHRandom; // enter single string value to remove randommess
				_rotaryPilotHelmet = "";
				_rotaryCrewHelmet = "";
				_fixedPilotHelmet = "";
				_coyHelmet = "";
				_slHelmet = "";
				_tlHelmet = "";
				_sniperHelmet = "";
			};
		};

		// ===================== Vests ====================

		_rflmVest = "";
		_gunnerVest = "";
		_glVest = "";
		_medVest = "";
		_pilotVest = "";
		_crewVest = "";
		_coyVest = "";
		_slVest = "";
		_tlVest = "";
		_sniperVest = "";

		// ===================== Rucks ====================

		_smallRuck = "";
		_medRuck = "";
		_armgRuck = "";
		_largeRuck = "";
		_medicRuck = "";
		_atRuck = "";
		_sniperRuck = "";

		// ===================== NVGs ====================

		_nightVision = "";

		// ================================================
	};

// =======================================================================