//::///////////////////////////////////////////////
//:: FileName chk_armsdudedone
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 8/5/2007 7:30:38 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "armsdudedone") > 0))
		return FALSE;

	return TRUE;
}
