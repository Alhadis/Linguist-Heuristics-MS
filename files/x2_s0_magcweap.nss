//::///////////////////////////////////////////////
//:: Magic Weapon
//:: X2_S0_MagcWeap
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
  Grants a +1 enhancement bonus.
*/
//:://////////////////////////////////////////////
//:: Created By: Andrew Nobbs
//:: Created On: Nov 28, 2002
//:://////////////////////////////////////////////
//:: Updated by Andrew Nobbs May 08, 2003
//:: 2003-07-07: Stacking Spell Pass, Georg Zoeller
//:: 2003-07-17: Complete Rewrite to make use of Item Property System

#include "nw_i0_spells"
#include "x2_i0_spells"

#include "x2_inc_spellhook"


void  AddEnhancementEffectToWeapon(object oMyWaepon, float fDuration)
{
   IPSafeAddItemProperty(oMyWaepon,ItemPropertyEnhancementBonus(1), fDuration, X2_IP_ADDPROP_POLICY_KEEP_EXISTING ,TRUE,TRUE);
   return;
}

void main()
{

    /*
      Spellcast Hook Code
      Added 2003-07-07 by Georg Zoeller
      If you want to make changes to all spells,
      check x2_inc_spellhook.nss to find out more

    */

    if (!X2PreSpellCastCode())
    {
    // If code within the PreSpellCastHook (i.e. UMD) reports FALSE, do not run this spell
        return;
    }

// End of Spell Cast Hook



    //Declare major variables
    effect eVis = EffectVisualEffect(VFX_IMP_SUPER_HEROISM);
    effect eDur = EffectVisualEffect(VFX_DUR_CESSATE_POSITIVE);
    int nDuration = GetCasterLevel(OBJECT_SELF);
    int nMetaMagic = GetMetaMagicFeat();

object oMyWeapon = IPGetTargetedOrEquippedMeleeWeapon();
object oMySpellTarget   =  GetSpellTargetObject();
object oRangeWeapon = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oMySpellTarget);

    if (nMetaMagic == METAMAGIC_EXTEND)
    {
        nDuration = nDuration * 2; //Duration is +100%
    }

    if(GetIsObjectValid(oMyWeapon) )
    {
        SignalEvent(GetItemPossessor(oMyWeapon), EventSpellCastAt(OBJECT_SELF, GetSpellId(), FALSE));

        if (nDuration>0)
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, GetItemPossessor(oMyWeapon));
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDur, GetItemPossessor(oMyWeapon), HoursToSeconds(nDuration));
            AddEnhancementEffectToWeapon(oMyWeapon, HoursToSeconds(nDuration));
    }
        return;
    }
        else
    {
        if(IPGetIsRangedWeapon(oMySpellTarget) )
        {
            SignalEvent(GetItemPossessor(oMySpellTarget), EventSpellCastAt(OBJECT_SELF, GetSpellId(), FALSE));

            if (nDuration>0)
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, GetItemPossessor(oMySpellTarget));
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDur, GetItemPossessor(oMySpellTarget), HoursToSeconds(nDuration));
                AddEnhancementEffectToWeapon(oMySpellTarget, HoursToSeconds(nDuration));
        }
            return;
        }
            else
            {
            if(IPGetIsRangedWeapon(oRangeWeapon) )
            {
                SignalEvent(GetItemPossessor(oRangeWeapon), EventSpellCastAt(OBJECT_SELF, GetSpellId(), FALSE));

                if (nDuration>0)
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, GetItemPossessor(oRangeWeapon));
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDur, GetItemPossessor(oRangeWeapon), HoursToSeconds(nDuration));
                    AddEnhancementEffectToWeapon(oRangeWeapon, HoursToSeconds(nDuration));
            }
                return;
            }
            else
        {
               FloatingTextStrRefOnCreature(83384, OBJECT_SELF);
               return;
    }
    }
    }


}
