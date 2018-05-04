///var_oPlayer_Storage_Exists(stored_creature,player,level,species,name,nature);
/// @arg stored_creature
/// @arg player
/// @arg level
/// @arg species
/// @arg name
/// @arg nature
var stored_creature = storage_firstemptyslot(id);
var player = id;
var level = irandom(10);
var species = irandom_range(1,CREATURECOUNT);
var name = randomcreaturename(species);
var nature = irandom(5);
switch ( argument_count ) {
	case 6:		nature = argument[5];
	case 5:		name = argument[4];
	case 4:		species = argument[3];
	case 3:		level = argument[2];
	case 2:		player = argument[1];
	case 1:		stored_creature = argument[0];
	};

//IDs
player.Stored_Status[stored_creature] = eCreatureState.existant;
//No need to store a party reference, use inparty(player,stored_creature);

//Core Information
player.Stored_Species[stored_creature] = species;
player.Stored_Name[stored_creature] = name;
player.Stored_Form[stored_creature] = 0;			
player.Stored_Quality[stored_creature] = 0;			
player.Stored_Nature[stored_creature] = nature;	//[0 to 5]

player.Stored_Level[stored_creature] = level;
player.Stored_Exp[stored_creature] = irandom_range(expforlevel(level),expforlevel(level+1));

//Skills and Traits
player.Stored_SkillString[stored_creature] = skillstring_randomforspecies(player.Stored_Species[stored_creature],player.Stored_Level[stored_creature]);
player.Stored_TraitString[stored_creature] = traitstring_randomforspecies(player.Stored_Species[stored_creature],player.Stored_Level[stored_creature]);
//Skills and traits don't need to be stored indivually for stored creatures, 
//the strings are all thats needed to save space