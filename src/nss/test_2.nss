/*
 *  Script generated by LS Script Generator, v.TK.0
 *
 *  For download info, please visit:
 *  http://nwvault.ign.com/View.php?view=Other.Detail&id=1502
 */
// Put this script OnClick (trigger) or OnAreaTransitionClick (door).


void main()
{
    object oParty;
    object oTarget;

    // Get the creature who triggered this event.
    object oPC = GetClickingObject();

    // Have the PC perform a sequence of actions.
    AssignCommand(oPC, ClearAllActions());

    // If it is dawn or day.
    if ( GetIsDawn()  ||  GetIsDay() )
    {
        // If success on a 50% chance.
        if ( Random(100) < 50 )
        {
            // Find the location to which to teleport.
            oTarget = GetWaypointByTag("Encounter6");

            // Save the PC's current location for the return trip.
            SetLocalLocation(oPC, "ls_stored_loc", GetLocation(oPC));

            // Teleport the PC's party.
            // Loop through the PC's party.
            oParty = GetFirstFactionMember(oPC, FALSE);
            while ( oParty != OBJECT_INVALID )
            {
                AssignCommand(oParty, ClearAllActions());
                AssignCommand(oParty, JumpToObject(oTarget));

                // Update the loop.
                oParty = GetNextFactionMember(oPC, FALSE);
            }
        }
        // Else, if it is dusk or night.
        else if ( GetIsDusk()  ||  GetIsNight() )
        {
            // If success on a 50% chance.
            if ( Random(100) < 50 )
            {
                // Find the location to which to teleport.
                oTarget = GetWaypointByTag("Encounter6");

                // Save the PC's current location for the return trip.
                SetLocalLocation(oPC, "ls_stored_loc", GetLocation(oPC));

                // Teleport the PC's party.
                // Loop through the PC's party.
                oParty = GetFirstFactionMember(oPC, FALSE);
                while ( oParty != OBJECT_INVALID )
                {
                    AssignCommand(oParty, ClearAllActions());
                    AssignCommand(oParty, JumpToObject(oTarget));

                    // Update the loop.
                    oParty = GetNextFactionMember(oPC, FALSE);
                }
            }
        }
    }
}

