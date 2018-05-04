///var_oPlayer_Party_Exists(party_member,player,level,species,name,nature);
/// @arg party_member
/// @arg player
/// @arg level
/// @arg species
/// @arg name
/// @arg nature
var party_member = storage_firstemptyslot(id);
var player = id;
var level = irandom(10);
var species = irandom_range(1,CREATURECOUNT);
var name = randomcreaturename(species);
var nature = irandom(5);
switch ( argument_count ) {
	case 6:		nature = argument[5];
	case 5:		name = argument[4];
	case 4:		species = argument[3];
				if ( argument_count == 4 ) { name = randomcreaturename(species) };
	case 3:		level = argument[2];
	case 2:		player = argument[1];
	case 1:		party_member = argument[0];
	};


//IDs
player.Party_Status[party_member] = eCreatureState.existant;
player.Party_StoredID[party_member] = storage_firstemptyslot(id);	

//Core Information
player.Party_Species[party_member] = species;
player.Party_Name[party_member] = name;
player.Party_Form[party_member] = 0;				//Currently unused, leave at 0
player.Party_Quality[party_member] = 0;				//MUST BE 0 FOR PLAYER CREATURES (Used for changing NPC statblocks)
player.Party_Nature[party_member] = nature			//[0 to 5]

player.Party_Level[party_member] = level;
player.Party_Exp[party_member] = irandom_range(expforlevel(level),expforlevel(level+1));

//Skills and Traits
player.Party_SkillString[party_member] = skillstring_randomforspecies(player.Party_Species[party_member],player.Party_Level[party_member]);
player.Party_TraitString[party_member] = traitstring_randomforspecies(player.Party_Species[party_member],player.Party_Level[party_member]);
player.Party_Skill[party_member,0] = 0; party_expandskillstring(id,party_member);
player.Party_Trait[party_member,0] = 0; party_expandskillstring(id,party_member);

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

//Store
party_update_tostorage(id,party_member);