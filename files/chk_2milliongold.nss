/////:://///////////////////////////////////////////////////////////////////////
/////:: Check for 5 million gold
/////:: Written by Winterknight on 10/7/05
/////:://///////////////////////////////////////////////////////////////////////

int StartingConditional()
{
     object oPC = GetPCSpeaker();
     int NetWorth = GetGold(oPC);
     if(NetWorth>2000001) return TRUE;

     return FALSE;
}
