"Resource/UI/MatchMakingDashboardCasualCriteria.res"
{
	"CasualCriteria"
	{
		"fieldName"				"CasualCriteria"
		"xpos"					"r0"
		"ypos"					"30"
		"zpos"					"1002"
		"wide"					"270"
		"tall"					"f70"
		"visible"				"1"
		"proportionaltoparent"	"1"
	}

	"criteria"
	{
		"ControlName"	"CCasualCriteriaPanel"
		"fieldName"		"criteria"
		"xpos"			"-3"
		"ypos"			"0"
		"zpos"			"100"
		"wide"			"f0"
		"tall"			"f23"
		"visible"		"1"
		"proportionaltoparent"	"1"
	}

	"QueueButton"
	{
		"ControlName"	"CExButton"
		"fieldName"		"QueueButton"
		"xpos"			"8"
		"ypos"			"0"
		"zpos"			"133"
		"wide"			"f80"
		"tall"			"20"
		"autoResize"	"0"
		"roundedcorners"	"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"textAlignment"	"center"
		"dulltext"		"0"
		"brighttext"	"0"
		"Command"		"find_game"
		"proportionaltoparent"	"1"
		"labeltext"		"#TF_Matchmaking_StartSearch"
		"mouseinputenabled"	"1"
		"keyboardinputenabled"	"0"
		"actionsignallevel"	"1"

		"sound_depressed"	"UI/buttonclick.wav"
		"sound_released"	"UI/buttonclickrelease.wav"

	}
}
