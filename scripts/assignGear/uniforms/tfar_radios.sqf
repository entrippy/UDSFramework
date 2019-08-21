// AssignGear - radios
// by Diabolical
// - Defines all of the radio classes used by tfar
// - Variables: _radioSelection - "rhs us","rhs us small","rhs rus","rhs rus small","csat","nato","aaf","ins"

// =======================================================================
// Declares variables

private [
"_squadRadio","_airRadioRuck","_radioRuck","_diverRadioRuck","_uavRuck","_uavTool"
];

switch (_radioSelection) do {

	case "rhs us" : {
		_squadRadio = "tf_anprc152";
		_airRadioRuck = "tf_mr6000l";
		_radioRuck = "tf_rt1523g_big_rhs";
		_diverRadioRuck = "tf_rt1523g_big_rhs";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};
	case "rhs us small" : {
		_squadRadio = "tf_anprc152";
		_airRadioRuck = "tf_mr6000l";
		_radioRuck = "tf_rt1523g_rhs";
		_diverRadioRuck = "tf_rt1523g_rhs";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};
	case "rhs rus" : {
		_squadRadio = "tf_fadak";
		_airRadioRuck = "tf_mr6000l";
		_radioRuck = "tf_mr3000_rhs";
		_diverRadioRuck = "tf_mr3000_rhs";
		_uavRuck = "O_UAV_01_backpack_F";
		_uavTool = "O_UavTerminal";
	};
	case "rhs rus small" : {
		_squadRadio = "tf_fadak";
		_airRadioRuck = "tf_mr6000l";
		_radioRuck = "tf_bussole";
		_diverRadioRuck = "tf_bussole";
		_uavRuck = "O_UAV_01_backpack_F";
		_uavTool = "O_UavTerminal";
	};
	case "csat" : {
		_squadRadio = "tf_fadak";
		_airRadioRuck = "tf_mr6000l";
		_radioRuck = "tf_mr3000";
		_diverRadioRuck = "tf_mr3000";
		_uavRuck = "O_UAV_01_backpack_F";
		_uavTool = "O_UavTerminal";
	};
	case "nato" : {
		_squadRadio = "tf_anprc152";
		_airRadioRuck = "tf_mr6000l";
		_radioRuck = "tf_rt1523g_big";
		_diverRadioRuck = "tf_rt1523g_big";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};
	case "nato small" : {
		_squadRadio = "tf_anprc152";
		_airRadioRuck = "tf_mr6000l";
		_radioRuck = "tf_rt1523g";
		_diverRadioRuck = "tf_rt1523g";
		_uavRuck = "B_UAV_01_backpack_F";
		_uavTool = "B_UavTerminal";
	};
	case "aaf" : {
		_squadRadio = "tf_anprc148jem";
		_airRadioRuck = "tf_mr6000l";
		_radioRuck = "tf_anprc155";
		_diverRadioRuck = "tf_anprc155";
		_uavRuck = "I_UAV_01_backpack_F";
		_uavTool = "I_UavTerminal";
	};
	case "ins" : {
		_squadRadio = "tf_anprc148jem";
		_airRadioRuck = "tf_mr6000l";
		_radioRuck = "tf_anprc155_coyote";
		_diverRadioRuck = "tf_anprc155_coyote";
		_uavRuck = "I_UAV_01_backpack_F";
		_uavTool = "I_UavTerminal";
	};
	default {
		_squadRadio = "";
		_airRadioRuck = "";
		_radioRuck = "";
		_diverRadioRuck = "";
		_uavRuck = "";
		_uavTool = "";
	};
};

// =======================================================================