"GameMenu" [$WIN32]
{
        "4"
	{
		"label" "Leave Party"
		"command" "engine tf_party_leave"
	}

        "1"
	{
		"label" ">Community" 
		"command" "OpenServerBrowser"
	} 

  	"3"
	{
		"label" ""
		"command" ""
	}
	
	"5"
	{
		"label" "PARTY CHAT"
		"command" "toggle_chat"
	}
        "9"
	{
		"label" "Loutouts"
		"command" "engine open_charinfo"
	}	
	
	
	"10"
	{
		"label" "Conf"
		"command" "OpenOptionsDialog"
	}

        "11"
	{
		"label" "Adv Conf"
		"command" "OpenTF2Options"
	}


	"12"
	{
		"label" ""
		"command" ""
	}

        "13"
	{
		"label"	 "> Vote"
		"command" "callvote"
	}
	
	"14"
	{
		"label" "> Mute"
		"command" "OpenPlayerListDialog"
	}

	"16"
	{
		"label" "-Demos"
		"command" "engine demoui2"
	}
	"SoundFix"
	{
	"label" 	"snd_restart"
	"command"	"engine snd_restart"
	"OnlyInGame"	"1"
	}
	"InviliblePlayersFix"
	{
	"label" 	"reload players"
	"command" 	"engine stop; record fix"
	"tooltip" 	"Fix Invisible Players"
	"OnlyInGame"	"1"
	}
	"empty"
	{
	"label" ""
	"command" ""
	}
	"Disconnect"
	{
	"label" "Disconnect"
	"command" "engine disconnect"
	"OnlyInGame"	"1"
	}
}
