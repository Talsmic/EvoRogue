///var_oPlayer_Party_Empty(party_member,player);
/// @arg party_member
/// @arg player
if ( argument_count > 0 ) { var party_member = argument[0] } 
					 else { var party_member = party_firstemptyslot(id) };
if ( argument_count > 1 ) { var player = argument[1] } 
					 else { var player = id };

















//IDs
player.Party_Status[party_member] = eCreatureState.nonexistant;
player.Party_StoredID[party_member] = 0;				//Location in Storage

//Core Information
player.Party_Species[party_member] = 0;
player.Party_Name[party_member] = "nil";
player.Party_Form[party_member] = 0;					//Currently unused, leave at 0
player.Party_Quality[party_member] = 0;					//MUST BE 0 FOR PLAYER CREATURES (Used for changing NPC statblocks)
player.Party_Genome[party_member] = 0;					//[0 to 5]

player.Party_Level[party_member] = 0;
player.Party_Exp[party_member] = 0;

//Skills and Traits
player.Party_SkillString[party_member] = 0;				//[SkillString] (eg "0|1|4|67")
player.Party_TraitString[party_member] = 0;				//[SkillString] (eg "0|1|4|67")
player.Party_Skill[party_member,0] = 0;					//Array of Integers
player.Party_Trait[party_member,0] = 0;					//Array of Integers

if ( inbattle() ) player.Party_Skill_Cooldown[party_member,0] = 0;	
if ( inbattle() ) player.Party_Trait_Cooldown[party_member,0] = 0;	
if ( inbattle() ) player.Party_Trait_ValueA[party_member,0] = 0;	
if ( inbattle() ) player.Party_Trait_ValueB[party_member,0] = 0;	

//Attributes
player.Party_MaxHealth[party_member] = 0;
player.Party_Health[party_member] = 0;
player.Party_MaxEnergy[party_member] = 0;
player.Party_Energy[party_member] = 0;
if ( inbattle() ) player.Party_Attribute[party_member,1] = 0;		//Power	
if ( inbattle() ) player.Party_Attribute[party_member,2] = 0;		//Fortitude	
if ( inbattle() ) player.Party_Attribute[party_member,3] = 0;		//Speed	
if ( inbattle() ) player.Party_Attribute[party_member,4] = 0;		//Recovery	
if ( inbattle() ) player.Party_Attribute[party_member,5] = 0;		//Potency	


