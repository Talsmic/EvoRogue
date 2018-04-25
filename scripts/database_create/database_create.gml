///database_create()
//Databases last updated on 24/04/2018
db_init();
db_open("db_Evolutionary");

//[db_Creatures]--------------------------------------------------[24/04/2018]
db_table_create(	"db_Creatures",
					"name:string","element:string",
					"bPower:real","gPower:real","bFortitude:real","gFortitude:real","bSpeed:real","gSpeed:real","bRecovery:real","gRecovery:real","bPotency:real","gPotency:real",
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
