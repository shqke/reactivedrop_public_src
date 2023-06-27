"Resource/UI/BaseModUI/CRD_VGUI_Settings_Controls.res"
{
	"BindMoveForward"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindMoveForward"
		"xpos"				"50"
		"ypos"				"50"
		"wide"				"32"
		"tall"				"32"
		"tabPosition"		"1"
		"navLeft"			"BindMoveForward"
		"navRight"			"BindWalk"
		"navDown"			"BindMoveBack"
	}

	"BindMoveLeft"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindMoveLeft"
		"xpos"				"16"
		"ypos"				"84"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindMoveLeft"
		"navRight"			"BindMoveBack"
		"navUp"				"BindMoveForward"
		"navDown"			"BindTextChat"
	}

	"BindMoveBack"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindMoveBack"
		"xpos"				"50"
		"ypos"				"84"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindMoveLeft"
		"navRight"			"BindMoveRight"
		"navUp"				"BindMoveForward"
		"navDown"			"BindTextChat"
	}

	"BindMoveRight"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindMoveRight"
		"xpos"				"84"
		"ypos"				"84"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindMoveBack"
		"navRight"			"BindJump"
		"navUp"				"BindMoveForward"
		"navDown"			"BindTextChat"
	}

	"BindWalk"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindWalk"
		"xpos"				"126"
		"ypos"				"50"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindMoveForward"
		"navRight"			"SettingMovementStick"
		"navDown"			"BindJump"
	}

	"BindJump"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindJump"
		"xpos"				"126"
		"ypos"				"84"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindMoveRight"
		"navRight"			"SettingControllerGlyphs"
		"navUp"				"BindWalk"
		"navDown"			"BindTextChat"
	}

	"SettingMovementStick"
	{
		"ControlName"		"CRD_VGUI_Option"
		"fieldName"			"SettingMovementStick"
		"xpos"				"182"
		"ypos"				"50"
		"wide"				"220"
		"tall"				"12"
		"navLeft"			"BindWalk"
		"navRight"			"BindPrimaryAttack"
		"navDown"			"SettingAutoWalk"
	}

	"SettingAutoWalk"
	{
		"ControlName"		"CRD_VGUI_Option"
		"fieldName"			"SettingAutoWalk"
		"xpos"				"182"
		"ypos"				"62"
		"wide"				"220"
		"tall"				"12"
		"navLeft"			"BindWalk"
		"navRight"			"BindPrimaryAttack"
		"navUp"				"SettingMovementStick"
		"navDown"			"SettingAutoAttack"
	}

	"SettingAutoAttack"
	{
		"ControlName"		"CRD_VGUI_Option"
		"fieldName"			"SettingAutoAttack"
		"xpos"				"182"
		"ypos"				"74"
		"wide"				"220"
		"tall"				"12"
		"navLeft"			"BindWalk"
		"navRight"			"BindPrimaryAttack"
		"navUp"				"SettingAutoWalk"
		"navDown"			"SettingAimToMovement"
	}

	"SettingAimToMovement"
	{
		"ControlName"		"CRD_VGUI_Option"
		"fieldName"			"SettingAimToMovement"
		"xpos"				"182"
		"ypos"				"86"
		"wide"				"220"
		"tall"				"12"
		"navLeft"			"BindJump"
		"navRight"			"BindSwapWeapons"
		"navUp"				"SettingAutoAttack"
		"navDown"			"SettingInvertY"
	}

	"SettingInvertY"
	{
		"ControlName"		"CRD_VGUI_Option"
		"fieldName"			"SettingInvertY"
		"xpos"				"182"
		"ypos"				"98"
		"wide"				"220"
		"tall"				"12"
		"navLeft"			"BindJump"
		"navRight"			"BindSwapWeapons"
		"navUp"				"SettingAimToMovement"
		"navDown"			"SettingControllerGlyphs"
	}

	"SettingControllerGlyphs"
	{
		"ControlName"		"CRD_VGUI_Option"
		"fieldName"			"SettingControllerGlyphs"
		"xpos"				"182"
		"ypos"				"110"
		"wide"				"220"
		"tall"				"12"
		"navLeft"			"BindJump"
		"navRight"			"BindSwapWeapons"
		"navUp"				"SettingInvertY"
		"navDown"			"BindActivatePrimary"
	}

	"BindPrimaryAttack"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindPrimaryAttack"
		"xpos"				"426"
		"ypos"				"50"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"SettingMovementStick"
		"navRight"			"BindSecondaryAttack"
		"navDown"			"BindSwapWeapons"
	}

	"BindSecondaryAttack"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSecondaryAttack"
		"xpos"				"460"
		"ypos"				"50"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindPrimaryAttack"
		"navRight"			"BindUse"
		"navDown"			"BindMeleeAttack"
	}

	"BindUse"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindUse"
		"xpos"				"494"
		"ypos"				"50"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindSecondaryAttack"
		"navRight"			"BindSelectPrimary"
		"navDown"			"BindReload"
	}

	"BindSelectPrimary"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectPrimary"
		"xpos"				"528"
		"ypos"				"50"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindUse"
		"navRight"			"BindDropWeapon"
		"navDown"			"BindSelectSecondary"
	}

	"BindDropWeapon"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindDropWeapon"
		"xpos"				"562"
		"ypos"				"50"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindSelectPrimary"
		"navRight"			"BindDropWeapon"
		"navDown"			"BindDropEquipment"
	}

	"BindSwapWeapons"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSwapWeapons"
		"xpos"				"426"
		"ypos"				"84"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"SettingControllerGlyphs"
		"navRight"			"BindMeleeAttack"
		"navUp"				"BindPrimaryAttack"
		"navDown"			"BindSelectMarine0"
	}

	"BindMeleeAttack"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindMeleeAttack"
		"xpos"				"460"
		"ypos"				"84"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindSwapWeapons"
		"navRight"			"BindReload"
		"navUp"				"BindSecondaryAttack"
		"navDown"			"BindSelectMarine0"
	}

	"BindReload"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindReload"
		"xpos"				"494"
		"ypos"				"84"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindMeleeAttack"
		"navRight"			"BindSelectSecondary"
		"navUp"				"BindUse"
		"navDown"			"BindSelectMarine0"
	}

	"BindSelectSecondary"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectSecondary"
		"xpos"				"528"
		"ypos"				"84"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindReload"
		"navRight"			"BindDropEquipment"
		"navUp"				"BindSelectPrimary"
		"navDown"			"BindSelectMarine0"
	}

	"BindDropEquipment"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindDropEquipment"
		"xpos"				"562"
		"ypos"				"84"
		"wide"				"32"
		"tall"				"32"
		"navLeft"			"BindSelectSecondary"
		"navRight"			"BindDropEquipment"
		"navUp"				"BindDropWeapon"
		"navDown"			"BindSelectMarine0"
	}

	"BindTextChat"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindTextChat"
		"xpos"				"16"
		"ypos"				"148"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindTextChat"
		"navRight"			"BindActivatePrimary"
		"navUp"				"BindMoveBack"
		"navDown"			"BindVoiceChat"
	}

	"BindVoiceChat"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindVoiceChat"
		"xpos"				"16"
		"ypos"				"160"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindVoiceChat"
		"navRight"			"BindActivateSecondary"
		"navUp"				"BindTextChat"
		"navDown"			"BindWheelDefault"
	}

	"BindWheelDefault"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindWheelDefault"
		"xpos"				"16"
		"ypos"				"172"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindWheelDefault"
		"navRight"			"BindActivateEquipment0"
		"navUp"				"BindVoiceChat"
		"navDown"			"BindEmoteGo"
	}

	"BindEmoteGo"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindEmoteGo"
		"xpos"				"16"
		"ypos"				"184"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteGo"
		"navRight"			"BindActivateEquipment1"
		"navUp"				"BindWheelDefault"
		"navDown"			"BindEmoteStop"
	}

	"BindEmoteStop"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindEmoteStop"
		"xpos"				"16"
		"ypos"				"196"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteStop"
		"navRight"			"BindActivateEquipment2"
		"navUp"				"BindEmoteGo"
		"navDown"			"BindMarinePosition"
	}

	"BindMarinePosition"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindMarinePosition"
		"xpos"				"16"
		"ypos"				"208"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindMarinePosition"
		"navRight"			"BindActivateEquipment3"
		"navUp"				"BindEmoteStop"
		"navDown"			"BindEmoteMedic"
	}

	"BindEmoteMedic"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindEmoteMedic"
		"xpos"				"16"
		"ypos"				"220"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteMedic"
		"navRight"			"BindActivateEquipment4"
		"navUp"				"BindMarinePosition"
		"navDown"			"BindEmoteAmmo"
	}

	"BindEmoteAmmo"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindEmoteAmmo"
		"xpos"				"16"
		"ypos"				"232"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteAmmo"
		"navRight"			"BindActivateEquipment5"
		"navUp"				"BindEmoteMedic"
		"navDown"			"BindEmoteQuestion"
	}

	"BindEmoteQuestion"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindEmoteQuestion"
		"xpos"				"16"
		"ypos"				"244"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteQuestion"
		"navRight"			"BindActivateEquipment6"
		"navUp"				"BindEmoteAmmo"
		"navDown"			"BindEmoteExclaim"
	}

	"BindEmoteExclaim"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindEmoteExclaim"
		"xpos"				"16"
		"ypos"				"256"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteExclaim"
		"navRight"			"BindActivateEquipment7"
		"navUp"				"BindEmoteQuestion"
		"navDown"			"BindVoteYes"
	}

	"BindVoteYes"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindVoteYes"
		"xpos"				"16"
		"ypos"				"268"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindVoteYes"
		"navRight"			"BindWheelEquipment"
		"navUp"				"BindEmoteExclaim"
		"navDown"			"BindVoteNo"
	}

	"BindVoteNo"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindVoteNo"
		"xpos"				"16"
		"ypos"				"280"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindVoteNo"
		"navRight"			"BindWheelEquipment1"
		"navUp"				"BindVoteYes"
		"navDown"			"BindMissionOverview"
	}

	"BindMissionOverview"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindMissionOverview"
		"xpos"				"16"
		"ypos"				"292"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindMissionOverview"
		"navRight"			"BindWheelEquipment2"
		"navUp"				"BindVoteNo"
		"navDown"			"BindPlayerList"
	}

	"BindPlayerList"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindPlayerList"
		"xpos"				"16"
		"ypos"				"304"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindPlayerList"
		"navRight"			"BindWheelEquipment2"
		"navUp"				"BindMissionOverview"
		"navDown"			"BindRotateCameraLeft"
	}

	"BindRotateCameraLeft"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindRotateCameraLeft"
		"xpos"				"16"
		"ypos"				"316"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindRotateCameraLeft"
		"navRight"			"BindWheelEquipment2"
		"navUp"				"BindPlayerList"
		"navDown"			"BindRotateCameraRight"
	}

	"BindRotateCameraRight"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindRotateCameraRight"
		"xpos"				"16"
		"ypos"				"328"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindRotateCameraRight"
		"navRight"			"BindWheelEquipment2"
		"navUp"				"BindRotateCameraLeft"
		"navDown"			"BindSecondaryAttackAlt"
	}

	"BindSecondaryAttackAlt"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSecondaryAttackAlt"
		"xpos"				"16"
		"ypos"				"340"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindSecondaryAttackAlt"
		"navRight"			"BindWheelEquipment2"
		"navUp"				"BindRotateCameraRight"
		"navDown"			"BindChooseMarine"
	}

	"BindChooseMarine"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindChooseMarine"
		"xpos"				"16"
		"ypos"				"352"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindChooseMarine"
		"navRight"			"BindWheelEquipment2"
		"navUp"				"BindSecondaryAttackAlt"
		"navDown"			"BtnResetDefaults"
	}

	"BindActivatePrimary"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivatePrimary"
		"xpos"				"217"
		"ypos"				"148"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindTextChat"
		"navRight"			"BindSelectMarine0"
		"navUp"				"SettingControllerGlyphs"
		"navDown"			"BindActivateSecondary"
	}

	"BindActivateSecondary"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivateSecondary"
		"xpos"				"217"
		"ypos"				"160"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindVoiceChat"
		"navRight"			"BindSelectMarine1"
		"navUp"				"BindActivatePrimary"
		"navDown"			"BindActivateEquipment0"
	}

	"BindActivateEquipment0"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivateEquipment0"
		"xpos"				"217"
		"ypos"				"172"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindWheelDefault"
		"navRight"			"BindSelectMarine2"
		"navUp"				"BindActivateSecondary"
		"navDown"			"BindActivateEquipment1"
	}

	"BindActivateEquipment1"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivateEquipment1"
		"xpos"				"217"
		"ypos"				"184"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteGo"
		"navRight"			"BindSelectMarine3"
		"navUp"				"BindActivateEquipment0"
		"navDown"			"BindActivateEquipment2"
	}

	"BindActivateEquipment2"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivateEquipment2"
		"xpos"				"217"
		"ypos"				"196"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteStop"
		"navRight"			"BindSelectMarine4"
		"navUp"				"BindActivateEquipment1"
		"navDown"			"BindActivateEquipment3"
	}

	"BindActivateEquipment3"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivateEquipment3"
		"xpos"				"217"
		"ypos"				"208"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindMarinePosition"
		"navRight"			"BindSelectMarine5"
		"navUp"				"BindActivateEquipment2"
		"navDown"			"BindActivateEquipment4"
	}

	"BindActivateEquipment4"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivateEquipment4"
		"xpos"				"217"
		"ypos"				"220"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteMedic"
		"navRight"			"BindSelectMarine6"
		"navUp"				"BindActivateEquipment3"
		"navDown"			"BindActivateEquipment5"
	}

	"BindActivateEquipment5"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivateEquipment5"
		"xpos"				"217"
		"ypos"				"232"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteAmmo"
		"navRight"			"BindSelectMarine7"
		"navUp"				"BindActivateEquipment4"
		"navDown"			"BindActivateEquipment6"
	}

	"BindActivateEquipment6"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivateEquipment6"
		"xpos"				"217"
		"ypos"				"244"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteQuestion"
		"navRight"			"BindWheelMarine"
		"navUp"				"BindActivateEquipment5"
		"navDown"			"BindActivateEquipment7"
	}

	"BindActivateEquipment7"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindActivateEquipment7"
		"xpos"				"217"
		"ypos"				"256"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindEmoteExclaim"
		"navRight"			"BindWheelMarine"
		"navUp"				"BindActivateEquipment6"
		"navDown"			"BindWheelEquipment"
	}

	"BindWheelEquipment"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindWheelEquipment"
		"xpos"				"217"
		"ypos"				"268"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindVoteYes"
		"navRight"			"BtnCustomWheels"
		"navUp"				"BindActivateEquipment7"
		"navDown"			"BindWheelEquipment1"
	}

	"BindWheelEquipment1"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindWheelEquipment1"
		"xpos"				"217"
		"ypos"				"280"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindVoteNo"
		"navRight"			"BtnCustomWheels"
		"navUp"				"BindWheelEquipment"
		"navDown"			"BindWheelEquipment2"
	}

	"BindWheelEquipment2"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindWheelEquipment2"
		"xpos"				"217"
		"ypos"				"292"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindMissionOverview"
		"navRight"			"BtnCustomWheels"
		"navUp"				"BindWheelEquipment1"
		"navDown"			"BindWheelEquipment2"
	}

	"BindSelectMarine0"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectMarine0"
		"xpos"				"418"
		"ypos"				"148"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindActivatePrimary"
		"navRight"			"BindSelectMarine0"
		"navUp"				"BindReload"
		"navDown"			"BindSelectMarine1"
	}

	"BindSelectMarine1"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectMarine1"
		"xpos"				"418"
		"ypos"				"160"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindActivateSecondary"
		"navRight"			"BindSelectMarine1"
		"navUp"				"BindSelectMarine0"
		"navDown"			"BindSelectMarine2"
	}

	"BindSelectMarine2"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectMarine2"
		"xpos"				"418"
		"ypos"				"172"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindActivateEquipment0"
		"navRight"			"BindSelectMarine2"
		"navUp"				"BindSelectMarine1"
		"navDown"			"BindSelectMarine3"
	}

	"BindSelectMarine3"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectMarine3"
		"xpos"				"418"
		"ypos"				"184"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindActivateEquipment1"
		"navRight"			"BindSelectMarine3"
		"navUp"				"BindSelectMarine2"
		"navDown"			"BindSelectMarine4"
	}

	"BindSelectMarine4"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectMarine4"
		"xpos"				"418"
		"ypos"				"196"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindActivateEquipment2"
		"navRight"			"BindSelectMarine4"
		"navUp"				"BindSelectMarine3"
		"navDown"			"BindSelectMarine5"
	}

	"BindSelectMarine5"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectMarine5"
		"xpos"				"418"
		"ypos"				"208"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindActivateEquipment3"
		"navRight"			"BindSelectMarine5"
		"navUp"				"BindSelectMarine4"
		"navDown"			"BindSelectMarine6"
	}

	"BindSelectMarine6"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectMarine6"
		"xpos"				"418"
		"ypos"				"220"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindActivateEquipment4"
		"navRight"			"BindSelectMarine6"
		"navUp"				"BindSelectMarine5"
		"navDown"			"BindSelectMarine7"
	}

	"BindSelectMarine7"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindSelectMarine7"
		"xpos"				"418"
		"ypos"				"232"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindActivateEquipment5"
		"navRight"			"BindSelectMarine7"
		"navUp"				"BindSelectMarine6"
		"navDown"			"BindWheelMarine"
	}

	"BindWheelMarine"
	{
		"ControlName"		"CRD_VGUI_Bind"
		"fieldName"			"BindWheelMarine"
		"xpos"				"418"
		"ypos"				"244"
		"wide"				"176"
		"tall"				"12"
		"navLeft"			"BindActivateEquipment6"
		"navRight"			"BindWheelMarine"
		"navUp"				"BindSelectMarine7"
		"navDown"			"BtnCustomWheels"
	}

	"BtnCustomWheels"
	{
		"ControlName"		"BaseModHybridButton"
		"fieldName"			"BtnCustomWheels"
		"xpos"				"442"
		"ypos"				"300"
		"wide"				"128"
		"tall"				"48"
		"label"				"#rd_manage_custom_chat_wheels"
		"command"			"ManageWheels"
		"navLeft"			"BindWheelEquipment2"
		"navRight"			"BtnCustomWheels"
		"navUp"				"BindWheelMarine"
		"navDown"			"SettingDeveloperConsole"
	}

	"BtnResetDefaults"
	{
		"ControlName"		"BaseModHybridButton"
		"fieldName"			"BtnResetDefaults"
		"xpos"				"8"
		"ypos"				"380"
		"wide"				"200"
		"tall"				"18"
		"label"				"#L4D360UI_Controller_Default"
		"command"			"ResetDefaults"
		"navLeft"			"BtnResetDefaults"
		"navRight"			"SettingDeveloperConsole"
		"navUp"				"BindChooseMarine"
		"navDown"			"BtnResetDefaults"
	}

	"SettingDeveloperConsole"
	{
		"ControlName"		"CRD_VGUI_Option"
		"fieldName"			"SettingDeveloperConsole"
		"xpos"				"402"
		"ypos"				"380"
		"wide"				"200"
		"tall"				"18"
		"navLeft"			"BtnResetDefaults"
		"navRight"			"SettingDeveloperConsole"
		"navUp"				"BtnCustomWheels"
		"navDown"			"SettingDeveloperConsole"
	}

	"LblMovement"
	{
		"ControlName"		"Label"
		"fieldName"			"LblMovement"
		"xpos"				"8"
		"ypos"				"32"
		"zpos"				"-1"
		"wide"				"158"
		"tall"				"92"
		"textAlignment"		"north-west"
		"labelText"			"#rd_controls_category_movement"
		"font"				"DefaultMedium"
	}

	"LblController"
	{
		"ControlName"		"Label"
		"fieldName"			"LblController"
		"xpos"				"174"
		"ypos"				"32"
		"zpos"				"-1"
		"wide"				"236"
		"tall"				"92"
		"textAlignment"		"north-west"
		"labelText"			"#rd_controls_category_controller"
		"font"				"DefaultMedium"
	}

	"LblActions"
	{
		"ControlName"		"Label"
		"fieldName"			"LblActions"
		"xpos"				"418"
		"ypos"				"32"
		"zpos"				"-1"
		"wide"				"184"
		"tall"				"92"
		"textAlignment"		"north-west"
		"labelText"			"#rd_controls_category_actions"
		"font"				"DefaultMedium"
	}

	"LblSocialExtras"
	{
		"ControlName"		"Label"
		"fieldName"			"LblSocialExtras"
		"xpos"				"8"
		"ypos"				"132"
		"zpos"				"-1"
		"wide"				"192"
		"tall"				"240"
		"textAlignment"		"north-west"
		"labelText"			"#rd_controls_category_social_and_extras"
		"font"				"DefaultMedium"
	}

	"LblUseEquipment"
	{
		"ControlName"		"Label"
		"fieldName"			"LblUseEquipment"
		"xpos"				"209"
		"ypos"				"132"
		"zpos"				"-1"
		"wide"				"192"
		"tall"				"180"
		"textAlignment"		"north-west"
		"labelText"			"#rd_controls_category_use_equipment"
		"font"				"DefaultMedium"
	}

	"LblSelectMarine"
	{
		"ControlName"		"Label"
		"fieldName"			"LblSelectMarine"
		"xpos"				"410"
		"ypos"				"132"
		"zpos"				"-1"
		"wide"				"192"
		"tall"				"132"
		"textAlignment"		"north-west"
		"labelText"			"#rd_controls_category_select_marine"
		"font"				"DefaultMedium"
	}
}
