void main()
{
object wz_oPC= GetEnteringObject();
object wz_oWP_bruecke_fern = GetObjectByTag ("wz_WP_bruecke_fern");

{AssignCommand(wz_oPC, ActionJumpToObject (wz_oWP_bruecke_fern));}
}
