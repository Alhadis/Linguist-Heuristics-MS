//::///////////////////////////////////////////////
//:: Name: pgs_set_list_e
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Set the Player Guild System to list all current
    guild enemies.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    SetLocalInt (GetPCSpeaker(), "List_Guild_Faction", -1);
}
