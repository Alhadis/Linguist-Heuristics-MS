
void main()


{

    object oTarget = GetEnteringObject();

    object oTrap = GetObjectByTag("ZEP_TRAPS011");
    AssignCommand(oTrap, PlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
    DelayCommand(3.0,AssignCommand(oTrap, PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE)));


    effect eDam = EffectDamage(d6(23), DAMAGE_TYPE_SLASHING, DAMAGE_POWER_PLUS_TWENTY);
    DelayCommand(0.1, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget));

}
