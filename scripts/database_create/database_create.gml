///database_create()
//Databases last updated on 08/05/2018
db_init();
db_open("db_Evolutionary");

//[db_Creatures]--------------------------------------------------[24/04/2018]
db_table_create(	"db_Creatures",
					"name:string","element:string",
					"base_power:real","power_growth:real",
					"base_fortitude:real","fortitude_growth:real",
					"base_speed:real","speed_growth:real",
					"base_recovery:real","recovery_growth:real",
					"base_potency:real","potency_growth:real",
					"skills_core:string","passives_core:string","skills:string",
					"sprite:string","icon:real","shadow:real");
db_table_import_csv("db_Creatures","[Databases]\\db_Creatures.csv",",");

//[db_Skills]-----------------------------------------------------[24/04/2018]
db_table_create(	"db_Skills",
					"rarity:string","name:string","element:string","cost:real","recharge:real","priority:real",
					"tooltip:string","effects:string","icon:real","timeline:string","value:string");
db_table_import_csv("db_Skills","[Databases]\\db_Skills.csv",",");


//[db_Effects]-----------------------------------------------------[22/12/2017]
db_table_create(	"db_Effects",
					"name:string","element:string","tooltip:string","icon:real","type:string","duration:string");
db_table_import_csv("db_Effects","[Databases]\\db_Effects.csv",",");

//[db_Strings_UI]-----------------------------------------------------[08/05/2018]
db_table_create(	"db_Strings_UI",
					"value:string","extended:string");
db_table_import_csv("db_Strings_UI","[Databases]\\[Language Packs]\\db_Strings_UI [Pirate].csv",",");

//[db_Strings_Skills]-----------------------------------------------------[08/05/2018]
db_table_create(	"db_Strings_Skills",
					"name:string","tooltip:string");
db_table_import_csv("db_Strings_Skills","[Databases]\\[Language Packs]\\db_Strings_Skills [Pirate].csv",",");

//[db_Strings_Creatures]-----------------------------------------------------[08/05/2018]
db_table_create(	"db_Strings_Creatures",
					"name:string");
db_table_import_csv("db_Strings_Creatures","[Databases]\\[Language Packs]\\db_Strings_Creatures [English].csv",",");