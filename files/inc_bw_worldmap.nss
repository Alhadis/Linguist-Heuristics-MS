#include "hf_in_henchman"
#include "hf_in_rest"

//:://////////////////////////////////////////////////
//:: inc_bw_worldmap
/*
  This includes scripts which will deal with the
  World Map, including updating the world map
  area, etc.

*/
//:://////////////////////////////////////////////////
//:: Copyright (c) 2005 Bioware Corp.
//:: Created By: Brian Watson for Ossian Studios
//:: Created On: 5/5/2006
//:://////////////////////////////////////////////////

/**********************************************************************
 * WORLD MAP CONSTANTS
 **********************************************************************/

// this is the name of the .2da containing world map status states
// hard coded this info for now!
// const string sWM_STATUS2DA = "map_areastates";

// this is the name of the .2da containing world map area status data
const string sWM_MAP2DA = "map_dagareas";

// this is the name of the .2da containing world map travel data
const string sWM_TRAVEL2DA = "map_dagtravel";

// in the status states .2da, this is the column containing status strings
// const string sWM_STATUS2DA_STATUS = "Label";

// in the map areas .2da, this is the column containing the area tags
const string sWM_MAP2DA_AREA = "Label";

// in the map areas .2da, this is the column containing the initial state
const string sWM_MAP2DA_START = "StartState";

// in the maptravel .2da, this is the column containing the area tags
const string sWM_TRAVEL2DA_AREA = "Label";

// these variables determine area status
// hard-coded for now, although this should probably reference
// map_areastates.2da
const int nWM_HIDDEN = 0;
const int nWM_REVEALED = 1;
const int nWM_VISIBLE = 2;

// this value defines the usable portion of the area tag which will be
// used for all things world map related, including .2da lookups
// i.e. in daggerford module, area tags might be "c1ar0100_Daggerford"
//   so these scripts are only interested in the first 8 char's.
const int nWM_AREAPREFIX = 8;

// if this variable is set to true, then the tags of objects that
// serve as transitions to the world map are CAPITALIZED!
const int nWM_JUMPCAPS = TRUE;

// this string is the tag of the world map area
// * should be lower case!
const string sWM_AREATAG = "c1ar0000";

// this defines the z-axis offset for placing the map 'pin'
const float fWM_PIN_ZOFFSET = 0.2f;

// this defines the z-axis offset for placing the map revealed icons
// this is a test to attempt to reduce icon flickering
const float fWM_ICON_ZOFFSET = 0.1f;

/**********************************************************************
 * RANDOM ENCOUNTER CONSTANTS
 **********************************************************************/

// this variable determines how many random encounter areas
// there are for each tileset code
const int nWM_RE_VARIATIONS = 2;

// this variable helps determine random encounter chance
// total percentage of RE = this percentage * hours traveled
const int nWM_RE_CHANCE = 3;

// this variable defines random encounter minimum chance
const int nWM_RE_MIN_CHANCE = 20;

// this variable defines random encounter maximum chance
const int nWM_RE_MAX_CHANCE = 60;

// this string prefixes the tags of the waypoints
// that serve as entry points into our random encounter locations
// * note: if variations of RE areas are used, the waypoints
//   serving as entry points should be named with a three character
//   suffix indicating tileset code and increasing
//   consecutive integers beginning with 1 - for example:
//   wp_re_entry_tn1, wp_re_entry_tn2, wp_re_entry_tn3, etc.
const string sWM_RE_ENTRYPREFIX = "wp_re_entry_";

// default waypoint for a single default random encounter area
// when no other matches are found
const string sWM_RE_DEFAULT_ENTRY = "wp_re_entry_default";

/**********************************************************************
 * FUNCTION DECLARATIONS
 **********************************************************************/

// This function will initialize the world map.
// It should only be used when the module first loads.
// Data from map areas .2da will be used to create several
//   variables on module to store map status.
void InitializeWorldMap();

// This function is just a wrapper for create object.
// It will create placeables in the world map area at the
//   waypoint specified.
// -string sBP: blueprint string of object to be created
// -oWP: waypoint at location where object will be created
// -nZAdjust: if TRUE, the icon's z location will be adjusted
//  based on the constant set in the world map include
// -nGlow: if TRUE, this icon will glow
// -nUsable: if FALSE, ths icon will be set to unusable
void CreateMapIcon(string sBP, object oWP, int nZAdjust = FALSE, int nGlow = FALSE, int nUsable = TRUE);

// This function will reveal a location on the world map.
// -string sAreaTag: tag of area that is to be revealed
void RevealMapLocation(string sAreaTag);

// This function will update the world map area.
// Data for world map stored on module.
// -oPC: player whose map location will affect icon status
//       only specify a PC on entering the world map area!
// * InitializeWorldMap() must be called prior to using UpdateWorldMap()
void UpdateWorldMap(object oPC = OBJECT_INVALID);

// This function will place a marker 'pin' to indicate player's
// current location on world map.
// -oPlayer: map will update based on oPlayer's location
// * This should only be done when a player enters the world map area.
void PlaceMapPin(object oPlayer);

// This function will inform other PC's in oPlayer's party
// that they are traveling via the world map.
void SignalTravel(object oPlayer, object oTarget, int nRandomEnc = FALSE);

// This function will set up characters for the world map area.
// Use for any creatures that enter the world map area.
// Characaters will become invisible, have footstep silenced, etc.
void MapVanish(object oTarget);

// This function will restore characters after MapVanish() called.
// * The same object must call this function that called MapVanish()
void MapRestore(object oTarget);

// This function will move a player from the world map area
// to the destination transition trigger.
// -oPlayer: PC who is traveling
// -oTarget: object (i.e. trigger) they are jumping to
// -nDays: days of travel time
// -nHours: hours of travel time
// -nAdvanceClock: set to false if time will not advance for this travel
// * if FALSE, player will still receive travel time message but clock
//   will not advance
void MapTravel(object oPlayer, object oTarget, int nDays, int nHours, int nAdvanceClock = TRUE);

// This function will be sent in a loop to send travel time information to
// a player, after that player has moved away from the destination target
void CheckTravelMessage(object oTarget, object oPlayer, string sMessage, int nChecks);

// This function will send the player to a location for
// a random encounter, based off the string location code.
// -oPlayer: PC who is traveling
// -sLocationCode: Stored in travel .2da, this is a specific code
//  that indicates which tileset is to be used for random encounter
//  area. i.e. "TN" for Tir Na Og tileset
// -oTarget: object (i.e. trigger) of final destination for traveler
// -nDays: days of travel time
// -nHours: hours of travel time
// * This function looks for specifically named waypionts:
//   i.e. wp_re_entry_tn1, wp_re_entry_tn2, wp_re_entry_tn3, etc.
void RandomEncounter(object oPlayer, string sLocationCode, object oTarget, int nDays, int nHours);

/**********************************************************************
 * FUNCTIONS
 **********************************************************************/

//::///////////////////////////////////////////////
//:: InitializeWorldMap
//::///////////////////////////////////////////////

void InitializeWorldMap()
{
    // initialize other variables
    int nRow = 0;
    string sAreaStatus;
    int nAreaStatus;
    string sVariableName;
    object oModule = GetModule();

    string sArea = Get2DAString(sWM_MAP2DA, sWM_MAP2DA_AREA, nRow);

    // set a variable on the module for each world map area
    while (sArea != "")
    {
        // example variable: "nWM_c1ar0100_status"
        sVariableName = ("nWM_" + sArea + "_status");
        sAreaStatus = Get2DAString(sWM_MAP2DA, sWM_MAP2DA_START, nRow);
        nAreaStatus = StringToInt(sAreaStatus);
        SetLocalInt(oModule, sVariableName, nAreaStatus);
        nRow += 1;
        sArea = Get2DAString(sWM_MAP2DA, sWM_MAP2DA_AREA, nRow);
    }
}

//::///////////////////////////////////////////////
//:: CreateMapIcon
//::///////////////////////////////////////////////

void CreateMapIcon(string sBP, object oWP, int nZAdjust = FALSE, int nGlow = FALSE, int nUsable = TRUE)
{
    location lLoc = GetLocation(oWP);

    if (nZAdjust == TRUE)
    {
        object oArea = GetArea(oWP);
        float fFace = GetFacingFromLocation(lLoc);
        vector vLoc = GetPositionFromLocation(lLoc);
        vLoc.z += fWM_ICON_ZOFFSET;
        lLoc = Location(oArea, vLoc, fFace);
    }

    object oIcon = CreateObject(OBJECT_TYPE_PLACEABLE, sBP, lLoc);

    if (nGlow == TRUE)
    {
        effect eGlow = EffectVisualEffect(586);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eGlow, oIcon);
    }

    /* UNCOMMENT if 1.68 patch is released! - bw
    //
    if (nUsable == FALSE)
    {
        SetUseableFlag(oIcon, FALSE);
    }
    // UNCOMMENT if 1.68 patch is released! - bw */
}

//::///////////////////////////////////////////////
//:: RevealMapLocation
//::///////////////////////////////////////////////

void RevealMapLocation(string sAreaTag)
{
    sAreaTag = GetStringLowerCase(GetStringLeft(sAreaTag, nWM_AREAPREFIX));

    object oModule = GetModule();
    string sVariableName = ("nWM_" + sAreaTag + "_status");
    int nAreaStatus = GetLocalInt(oModule, sVariableName);

    if (nAreaStatus == nWM_HIDDEN)
    {
        SetLocalInt(oModule, sVariableName, nWM_REVEALED);
    }

    DelayCommand(0.3, UpdateWorldMap());
}

//::///////////////////////////////////////////////
//:: UpdateWorldMap
//::///////////////////////////////////////////////

void UpdateWorldMap(object oPC = OBJECT_INVALID)
{
    int nRow = 0;
    string sAreaStatus;
    int nAreaStatus;
    string sVariableName;
    object oModule = GetModule();
    string sObjectTag;
    object oObject;
    string sWP;
    object oWP;

    // get PC-specific variables
    string sActiveAdj = GetLocalString(oPC, "sWM_AdjacentArea");
    sActiveAdj = GetStringLowerCase(sActiveAdj);
    int nInvMap = GetLocalInt(oPC, "nWM_UsedInventoryMap");

    // retrieve a variable on the module for each world map area
    string sArea = Get2DAString(sWM_MAP2DA, sWM_MAP2DA_AREA, nRow);
    int nUsable;

    while (sArea != "")
    {
        // example variable: "nWM_c1ar0100_status"
        sVariableName = ("nWM_" + sArea + "_status");
        nAreaStatus = GetLocalInt(oModule, sVariableName);

        nUsable = TRUE;

        if (nAreaStatus == nWM_REVEALED)
        {
            sObjectTag = ("wmi_" + sArea + "_r");   // revealed icon tag
            oObject = GetObjectByTag(sObjectTag);
            if (!GetIsObjectValid(oObject))         // if no such icon...
            {
                sWP = ("wmp_" + sArea);             // waypoint for this location
                oWP = GetObjectByTag(sWP);
                if (GetIsObjectValid(oWP))
                {
                    if ((sArea != sActiveAdj) || (nInvMap == 1)) // not adjacent..
                    {
                        nUsable = FALSE;
                    }

                    CreateMapIcon(sObjectTag, oWP, FALSE, TRUE, nUsable);
                }
            }
            /* UNCOMMENT if 1.68 patch is released! - bw
            //
            else                                    // if there is such an icon...
            {
                if ((sArea == sActiveAdj) && (nInvMap == 0))    // this area is adjacent to player
                {
                    if (!GetUseableFlag(oObject))   // enable
                    {
                        SetUseableFlag(oObject, TRUE);
                    }
                }
                else                                // not adjacent or in inventory map
                {
                    if (GetUseableFlag(oObject))    // disable
                    {
                        SetUseableFlag(oObject, FALSE);
                    }
                }
            }
            // UNCOMMENT if 1.68 patch is released! - bw */
        }
        else if (nAreaStatus == nWM_VISIBLE)
        {
            sObjectTag = ("wmi_" + sArea + "_r");   // revealed icon tag
            oObject = GetObjectByTag(sObjectTag);
            if (GetIsObjectValid(oObject))          // if revealed icon exists...
            {
                // remove it, redundant commands hopefully ensure destruction...?
                AssignCommand(oObject, ActionDoCommand(DestroyObject(oObject)));
                DestroyObject(oObject, 0.3f);
            }

            sObjectTag = ("wmi_" + sArea);          // visible icon tag
            oObject = GetObjectByTag(sObjectTag);
            if (!GetIsObjectValid(oObject))         // if no such icon...
            {
                sWP = ("wmp_" + sArea);             // waypoint for this location
                oWP = GetObjectByTag(sWP);
                if (GetIsObjectValid(oWP))
                {
                    if (nInvMap == 1)               // in inventory map..
                    {
                        nUsable = FALSE;
                    }

                    CreateMapIcon(sObjectTag, oWP, TRUE, FALSE, nUsable);
                }
            }
            /* UNCOMMENT if 1.68 patch is released! - bw
            //
            else                                    // if icon exists...
            {
                if (nInvMap == 1)                   // in inventory map
                {
                    if (GetUseableFlag(oObject))
                    {
                        SetUseableFlag(oObject, FALSE);  // disable
                    }
                }
                else                                // not in inventory map
                {
                    if (!GetUseableFlag(oObject))      // enable
                    {
                        SetUseableFlag(oObject, TRUE);
                    }
                }
            }
            // UNCOMMENT if 1.68 patch is released! - bw */
        }

        nRow += 1;
        sArea = Get2DAString(sWM_MAP2DA, sWM_MAP2DA_AREA, nRow);
    }
}

//::///////////////////////////////////////////////
//:: PlaceMapPin
//::///////////////////////////////////////////////

void PlaceMapPin(object oPlayer)
{
    string sCurrentArea = GetLocalString(oPlayer, "sWM_PreviousArea");
    object oPin = GetObjectByTag("wmi_pin");
    string sCurWP = ("wmp_" + sCurrentArea);
    object oCurWP = GetObjectByTag(sCurWP);
    int nNoReset = 0;

    if (GetIsObjectValid(oCurWP))
    {
        if (GetIsObjectValid(oPin))   // if there's currently a pin...
        {
            if (GetDistanceBetween(oPin, oCurWP) > 0.1)  // and it's too far from current location
            {
                object oMapArea = GetArea(oPin);
                DestroyObject(oPin);   // destroy it
                DelayCommand(0.5f, RecomputeStaticLighting(oMapArea));
            }
            else
            {
                nNoReset = 1;  // ...otherwise ignore
            }
        }

        if (nNoReset == 0)  // if we're not ignoring the pin, make one
        {
            // puts a light beam set below ground, so only
            // placeable light highlights current location
            location lWP = GetLocation(oCurWP);
            float fFace = GetFacingFromLocation(lWP);
            vector vPin = GetPositionFromLocation(lWP);
            vPin.z = fWM_PIN_ZOFFSET;
            location lPin = Location(OBJECT_SELF, vPin, fFace);
            CreateObject(OBJECT_TYPE_PLACEABLE, "wmi_pin", lPin);
        }
    }
}

//::///////////////////////////////////////////////
//:: SignalTravel
//::///////////////////////////////////////////////

void SignalTravel(object oPlayer, object oTarget, int nRandomEnc = FALSE)
{
    // this value defines a radius, in meters in which no feedback to
    // fellow players is given, the distance determined based off
    // proximity to travel target
    float fNoFeedbackRange = 12.0f;

    object oFellow = GetFirstFactionMember(oPlayer);
    string sAreaName = GetName(GetArea(oTarget));

    string sName;
    string sMessage;
    float fDist;

    while (GetIsObjectValid(oFellow))
    {
        if (oFellow != oPlayer)
        {
            fDist = GetDistanceBetween(oFellow, oTarget);
            if ((fDist > fNoFeedbackRange) || (fDist <= 0.0))
            {
                sName = GetName(oFellow);

                if (nRandomEnc == FALSE)
                {
                    sMessage = (sName + " traveled to " + sAreaName + ".");
                }
                else
                {
                    sMessage = (sName + " was attacked on way to " + sAreaName + "!");
                }

                FloatingTextStringOnCreature(sMessage, oFellow, FALSE);
            }
        }
        oFellow = GetNextFactionMember(oPlayer);
    }
}

//::///////////////////////////////////////////////
//:: MapVanish
//::///////////////////////////////////////////////

void MapVanish(object oTarget)
{
    // turn this character invisible
    effect eInvis = EffectVisualEffect(VFX_DUR_CUTSCENE_INVISIBILITY);
    eInvis = SupernaturalEffect(eInvis);

    ApplyEffectToObject(DURATION_TYPE_PERMANENT, eInvis, oTarget);

    // turn off footsteps
    SetFootstepType(FOOTSTEP_TYPE_NONE, oTarget);
}

//::///////////////////////////////////////////////
//:: MapRestore
//::///////////////////////////////////////////////

void MapRestore(object oTarget)
{
    // remove all effects on this creature, if the effects were applied
    // by the calling object
    effect eFX = GetFirstEffect(oTarget);

    while (GetIsEffectValid(eFX))
    {
        if (GetEffectCreator(eFX) == OBJECT_SELF)
        {
            RemoveEffect(oTarget, eFX);
        }
        eFX = GetNextEffect(oTarget);
    }

    SetFootstepType(FOOTSTEP_TYPE_DEFAULT, oTarget);
}

//::///////////////////////////////////////////////
//:: MapTravel
//::///////////////////////////////////////////////

void MapTravel(object oPlayer, object oTarget, int nDays, int nHours, int nAdvanceClock = TRUE)
{
    // delay time for travel time message
    float fMsgDelay = 3.8f;

    location lLoc;
    object oModule = GetModule();
    object oLastTraveler = GetLocalObject(oModule, "oWM_LastTraveler");
    object oLastTarget = GetLocalObject(oModule, "oWM_LastDestination");
    string sRestMsg = "";
    string sTimeMsg = "";
    string sTravelMsg = "";

    // search for a waypoint associated with this trigger
    string sWP = ("WP_" + GetTag(oTarget));
    if (nWM_JUMPCAPS == TRUE) sWP = GetStringUpperCase(sWP);

    object oWP = GetObjectByTag(sWP);
    if (GetIsObjectValid(oWP))
    {
        lLoc = GetLocation(oWP);
    }
    else  // if no waypoint found, jump to trigger or door
    {
        lLoc = GetLocation(oTarget);
    }

    AssignCommand(oPlayer, ClearAllActions(TRUE)); // handle RE's

    if ((nDays > 0 ) || (nHours > 0))
    {
        // we don't want to advance the clock multiple times for multiple
        // players that travel to the same destination
        //
        // if the traveling player is the same player who traveled last
        // OR if the destination is different than the last destination...
        if ((oPlayer == oLastTraveler) || (oTarget != oLastTarget))
        {
            int nStartHour = GetTimeHour();
            int nStartMinute = GetTimeMinute();
            int nRested = 0;

            int nNewHour = (nStartHour + nHours + (24 * nDays));

            string sDays = IntToString(nDays);
            string sHours = IntToString(nHours);

            // advance the clock due to travel
            if (nAdvanceClock == TRUE)
            {
                SetTime(nNewHour, nStartMinute, 0, 0);
                //Allow players to make camp during long journey
                if(nHours > 4 || nDays > 0)
                {
                    RestSetTired(oPlayer, FALSE);
                    nRested = 1;

                    int i = 1;
                    object oHench = GetHenchman(oPlayer, i);
                    while (GetIsObjectValid(oHench))
                    {
                        HenchmanRest(oHench);
                        ForceRest(oHench);
                        oHench = GetHenchman(oPlayer, ++i);
                    }
                    ForceRest(oPlayer);
                }
            }

            // send a message about travel time
            if (nDays > 1)
            {
                //AssignCommand(oModule, DelayCommand(fMsgDelay, FloatingTextStringOnCreature("The trip took " + sDays + " days and " + sHours + " hours.", oPlayer, FALSE)));
                sTimeMsg = ("The trip took " + sDays + " days and " + sHours + " hours.");
            }
            else if (nDays > 0)
            {
                //AssignCommand(oModule, DelayCommand(fMsgDelay, FloatingTextStringOnCreature("The trip took " + sDays + " day and " + sHours + " hours.", oPlayer, FALSE)));
                sTimeMsg = ("The trip took " + sDays + " day and " + sHours + " hours.");
            }
            else
            {
                //AssignCommand(oModule, DelayCommand(fMsgDelay, FloatingTextStringOnCreature("The trip took " + sHours + " hours.", oPlayer, FALSE)));
                sTimeMsg = ("The trip took " + sHours + " hours.");
            }

            if(nRested)
                sRestMsg = "You made camp during your journey. ";


            sTravelMsg = sRestMsg + sTimeMsg;
            // if we're actually traveling to a new location
            // ...we must be if there's travel time...?
            // destroy map pin now to avoid this possibly not occurring later
            object oPin = GetObjectByTag("wmi_pin");
            if (GetIsObjectValid(oPin))
            {
                DestroyObject(oPin);
            }

            SignalTravel(oPlayer, oTarget);
        }
    }

    // give these commands in different order, if player is in world map
    if (GetCutsceneMode(oPlayer))
    {
        AssignCommand(oPlayer, ActionDoCommand(SetCutsceneMode(oPlayer, FALSE)));
        AssignCommand(oPlayer, ActionJumpToLocation(lLoc));
    }
    else
    {
        AssignCommand(oPlayer, JumpToLocation(lLoc));
    }

    // signal first check for travel time message
    AssignCommand(oTarget, DelayCommand(fMsgDelay, CheckTravelMessage(oTarget, oPlayer, sTravelMsg, 0)));

    // MULTIPLAYER HANDLER //
    //set these variables on module to keep track of the last player to travel
    SetLocalObject(oModule, "oWM_LastTraveler", oPlayer);
    SetLocalObject(oModule, "oWM_LastDestination", oTarget);
}

//::///////////////////////////////////////////////
//:: CheckTravelMessage
//::///////////////////////////////////////////////

void CheckTravelMessage(object oTarget, object oPlayer, string sMessage, int nChecks)
{
    // this determines how many times the trigger will check to see if
    // player has moved
    int nMaxChecks = 20;

    nChecks += 1;
    if (nChecks >= nMaxChecks)      // timeout reached, send message now
    {
        FloatingTextStringOnCreature(sMessage, oPlayer);
        return;
    }

    /*
    if (nChecks == 5)
    {
        FloatingTextStringOnCreature("5 calls", oPlayer);
    }
    else if (nChecks == 10)
    {
        FloatingTextStringOnCreature("10 calls", oPlayer);
    }
    else if (nChecks == 15)
    {
        FloatingTextStringOnCreature("15 calls", oPlayer);
    }
    */

    // this will determine how often the trigger will check to see
    // if player moved, until they do
    float fDelayTime = 1.2f;

    int nAction = GetCurrentAction(oPlayer);
    if ((nAction != ACTION_INVALID) || (IsInConversation(oPlayer)))
    {
        FloatingTextStringOnCreature(sMessage, oPlayer);
        return;
    }
    else
    {
        DelayCommand(fDelayTime, CheckTravelMessage(oTarget, oPlayer, sMessage, nChecks));
    }
}

//::///////////////////////////////////////////////
//:: RandomEncounter
//::///////////////////////////////////////////////

void RandomEncounter(object oPlayer, string sLocationCode, object oDestination, int nDays, int nHours)
{
    object oModule = GetModule();

    // these variables will be used to complete travel from
    // random encounter area
    SetLocalObject(oPlayer, "oWM_RE_Destination", oDestination);
    SetLocalInt(oPlayer, "nWM_RE_TDays", nDays);
    SetLocalInt(oPlayer, "nWM_RE_nTHours", nHours);

    string sTarget = "";

    if (sLocationCode == "ACTIVE")
    {
        // MULTIPLAYER HANDLER //
        // if a random encounter is already active,
        // we want that transition target
        sTarget = GetLocalString(oModule, "sWM_RE_ActivePoint");
    }
    else
    {
        // this chooses the appropriate transition target
        // that serves as an entry point into the appropriate
        // random encounter area
        int nVariations = nWM_RE_VARIATIONS;

        string sLastUsed = ("nWM_LastEnc_" + sLocationCode);
        int nRandomLoc = GetLocalInt(GetModule(), sLastUsed);

        if (nRandomLoc == 0) // no return, must be first time to this area group
        {
            // so, let's pick a first location at random
            if (nVariations > 1)
            {
                nRandomLoc = Random(nVariations);
            }
            nRandomLoc += 1; // we now have a # between 1 and max # of variations
        }
        else  // pc has been to this area group before
        {
            nRandomLoc += 1;
            if (nRandomLoc > nVariations) nRandomLoc = 1;
        }

        // store this location on a variable on the module
        // so we can cycle to next location next time
        SetLocalInt(GetModule(), sLastUsed, nRandomLoc);

        sLocationCode = GetStringLowerCase(sLocationCode);
        string sRandomLoc = IntToString(nRandomLoc);

        sTarget = (sWM_RE_ENTRYPREFIX + sLocationCode + sRandomLoc);  // we now have a waypoint string
    }

    object oTarget = GetObjectByTag(sTarget);

    if (!GetIsObjectValid(oTarget))
    {
        oTarget = GetObjectByTag(sWM_RE_DEFAULT_ENTRY);  // use default instead

        /*
        // DEBUG
        SendMessageToPC(oPlayer, "DEBUG: Default random encounter jump point used!");
        // DEBUG
        */
    }

    if (GetIsObjectValid(oTarget))
    {
        location lLoc = GetLocation(oTarget);

        // set some variables for encounter checking
        SetLocalInt(oPlayer, "nREComplete", 0);

        AssignCommand(oPlayer, ClearAllActions());
        AssignCommand(oPlayer, ActionDoCommand(SetCutsceneMode(oPlayer, FALSE)));
        AssignCommand(oPlayer, ActionJumpToLocation(lLoc));

        // MULTIPLAYER HANDLER //
        // set this variable to store the 'active' random encounter
        SetLocalString(oModule, "sWM_RE_ActivePoint", sTarget);

        // MULTIPLAYER HANDLER //
        //set these variables on module to keep track of the last player to travel
        SetLocalObject(oModule, "oWM_LastTraveler", oPlayer);
        SetLocalObject(oModule, "oWM_LastDestination", oDestination);

        SignalTravel(oPlayer, oTarget, TRUE);
    }
    else
    {
        // DEBUG
        SendMessageToPC(oPlayer, "DEBUG: No random encounter jump point found!");
        // DEBUG
    }
}

// comment to compile

/*
void main()
{

}
*/
