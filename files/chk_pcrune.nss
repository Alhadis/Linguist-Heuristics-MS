//::///////////////////////////////////////////////
//:: FileName chk_pcrune
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 6/16/2007 10:48:03 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Make sure the PC speaker has these items in their inventory
	if(!HasItem(GetPCSpeaker(), "pc_rune"))
		return FALSE;

	return TRUE;
}
