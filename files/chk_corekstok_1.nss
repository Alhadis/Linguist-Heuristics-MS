//::///////////////////////////////////////////////
//:: FileName chk_corekstok_1
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 9/28/2005 10:46:56 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Make sure the PC speaker has these items in their inventory
	if(!HasItem(GetPCSpeaker(), "corekstok_1"))
		return FALSE;

	return TRUE;
}
