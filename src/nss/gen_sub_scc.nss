// gen_sub_scc
////////////////////////////////////////////////////////////////////////////////
// Created By: Genisys / Guile
// Created On: 11/24/2016
////////////////////////////////////////////////////////////////////////////////
// Copyright � 2016 All Rights Reserved
////////////////////////////////////////////////////////////////////////////////
/*
   Notes
*/
////////////////////////////////////////////////////////////////////////////////
// Required Includes

int StartingConditional(){
  object oPC = GetPCSpeaker();
  SetCustomToken(3330, GetDescription(OBJECT_SELF));
  if(GetLocalInt(oPC, "GSS_SUB_TAKE")) { return TRUE; }
  return FALSE;
}
