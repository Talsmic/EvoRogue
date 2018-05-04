///var_oPlayer_Party_Empty(party_member,player);
/// @arg party_member
/// @arg player
var party_member = party_firstemptyslot(id);
var player = id;
var level = 0;
switch ( argument_count ) {
	case 2:		player = argument[1];
	case 1:		party_member = argument[0];
	};

//IDs
player.Party_Status[party_member] = eCreatureState.nonexistant;
player.Party_StoredID[party_member] = 0;				//Location in Storage

//Core Information
player.Party_Species[party_member] = 0;
player.Party_Name[party_member] = "nil";
player.Party_Form[party_member] = 0;					//Currently unused, leave at 0
player.Party_Quality[party_member] = 0;					//MUST BE 0 FOR PLAYER CREATURES (Used for changing NPC statblocks)
player.Party_Nature[party_member] = 0;					//[0 to 5]

player.Party_Level[party_member] = level;
player.Party_Exp[party_member] = expforlevel(level);

//Skills and Traits
player.Party_SkillString[party_member] = 0;				//[SkillString] (eg "0|1|4|67")
player.Party_TraitString[party_member] = 0;				//[SkillString] (eg "0|1|4|67")
player.Party_Skill[party_member,0] = 0;					//Array of Integers
player.Party_Trait[party_member,0] = 0;					//Array of Integers

if ( inbattle() ) player.Party_Skill_Cooldown[party_member,0] = 0;	
if ( inbattle() ) player.Party_Trait_ValueA[party_member,0] = 0;	
if ( inbattle() ) player.Party_Trait_ValueB[party_member,0] = 0;	
if ( inbattle() ) player.Party_Trait_Cooldown[party_member,0] = 0;	

//Attributes
if ( inbattle() ) player.Party_MaxHealth[party_member] = global.bal_basehealth;
if ( inbattle() ) player.Party_Health[party_member] = player.Party_MaxHealth[party_member];
if ( inbattle() ) player.Party_MaxEnergy[party_member] = global.bal_maxenergy;
if ( inbattle() ) player.Party_Energy[party_member] =global.bal_startingenergy + global.bal_startingenergygrowth * level;
if ( inbattle() ) player.Party_Attribute[party_member,1] = 1;		//Power	
if ( inbattle() ) player.Party_Attribute[party_member,2] = 1;		//Fortitude	
if ( inbattle() ) player.Party_Attribute[party_member,3] = 1;		//Speed	
if ( inbattle() ) player.Party_Attribute[party_member,4] = 1;		//Recovery	
if ( inbattle() ) player.Party_Attribute[party_member,5] = 1;		//Potency	