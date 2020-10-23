//::///////////////////////////////////////////////
//:: Witchwork: Trigger Message (Exhibit Waters)
//:: WW_Msg_ExhibAqua.nss
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
     A template script. Create a copy where
     sString = a custom message that will be sent
     from the server to any player entering the
     trigger or area.
*/
//:://////////////////////////////////////////////
//:: Created By: Rob Bartel
//:: Created On: September 11, 2002
//:://////////////////////////////////////////////

void main()
{
    object oEnterer = GetEnteringObject();
    string sPlayerID = GetPCPlayerName(oEnterer) + GetName(oEnterer);
    int bSeenOnce = GetLocalInt(OBJECT_SELF, sPlayerID+"SeenOnce");
    string sString = "The water bears an unplaceable, lingering odor. It's "+
                     "warm and strangely soothing against your skin as you "+
                     "wade through it.";
    object oArea = GetArea(OBJECT_SELF);
    int bSound = GetLocalInt(oArea, "bSound");

    if (GetIsPC(oEnterer) == TRUE &&
        bSeenOnce == FALSE)
    {
        //Only fire if no other sounds are playing.
        if (bSound == FALSE)
        {
            //Flag the Sound variable.
            SetLocalInt(oArea, "bSound", TRUE);

            //Play GUI sound
            object oVoice = GetNearestObjectByTag("ww1_narrator163", oEnterer);
            SoundObjectPlay(oVoice);
            DelayCommand(25.0, SoundObjectStop(oVoice));

            //Remove the Sound variable once the sound is done
            DelayCommand(8.0, SetLocalInt(oArea, "bSound", FALSE));

            //Have the Player whisper the message to themselves.
            AssignCommand(oEnterer, SpeakString(sString, TALKVOLUME_WHISPER));

            //Flag the player as having seen the message.
            SetLocalInt(OBJECT_SELF, sPlayerID+"SeenOnce", TRUE);
        }
    }
}
