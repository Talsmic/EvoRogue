///change_language(language);
/// @arg language
var language = argument0;

show_debug_message("Language Pack Opened");
switch ( language ) {
	
	default:
	case "English":
		show_debug_message("English Translation Applied");
		db_table_clear("db_Strings_UI");
		db_table_clear("db_Strings_Skills");
		db_table_clear("db_Strings_Creatures");
		db_table_import_csv("db_Strings_UI","[Databases]\\[Language Packs]\\db_Strings_UI [English].csv",",");
		db_table_import_csv("db_Strings_Skills","[Databases]\\[Language Packs]\\db_Strings_Skills [English].csv",",");
		db_table_import_csv("db_Strings_Creatures","[Databases]\\[Language Packs]\\db_Strings_Creatures [English].csv",",");
		Options_Language = "English";
		return true;
		
	case "Angry English":
		show_debug_message("Angry English Debug Mode Applied");
		db_table_clear("db_Strings_UI");
		db_table_clear("db_Strings_Skills");
		db_table_clear("db_Strings_Creatures");
		db_table_import_csv("db_Strings_UI","[Databases]\\[Language Packs]\\db_Strings_UI [English].csv",",");
		db_table_import_csv("db_Strings_Skills","[Databases]\\[Language Packs]\\db_Strings_Skills [English].csv",",");
		db_table_import_csv("db_Strings_Creatures","[Databases]\\[Language Packs]\\db_Strings_Creatures [English].csv",",");
		//Add !! to every entry
		for ( var i=1 ; i <= db_table_size("db_Strings_UI") ; i++ ) {
			var fixed_string = "!"+db_record_get("db_Strings_UI",i,"value")+"!";
			db_record_update("db_Strings_UI",i,"value",fixed_string)
			};
		for ( var i=1 ; i <= db_table_size("db_Strings_Creatures") ; i++ ) {
			var fixed_string = "!"+db_record_get("db_Strings_Creatures",i,"name")+"!";
			db_record_update("db_Strings_Creatures",i,"name",fixed_string)
			};
		for ( var i=1 ; i <= db_table_size("db_Strings_Skills") ; i++ ) {
			var fixed_string = "!"+db_record_get("db_Strings_Skills",i,"name")+"!";
			var fixed_string2 = "!"+db_record_get("db_Strings_Skills",i,"tooltip")+"!";
			db_record_update("db_Strings_Skills",i,"name,tooltip",fixed_string,fixed_string2)
			};
		Options_Language = "English";
		return true;
		
	case "Pirate":
		show_debug_message("Pirate Translation Applied");
		db_table_clear("db_Strings_UI");
		db_table_clear("db_Strings_Skills");
		db_table_clear("db_Strings_Creatures");
		db_table_import_csv("db_Strings_UI","[Databases]\\[Language Packs]\\db_Strings_UI [Pirate].csv",",");
		db_table_import_csv("db_Strings_Skills","[Databases]\\[Language Packs]\\db_Strings_Skills [Pirate].csv",",");
		db_table_import_csv("db_Strings_Creatures","[Databases]\\[Language Packs]\\db_Strings_Creatures [Pirate].csv",",");
		Options_Language = "Pirate";
		return true;
		
	};
	
return false;