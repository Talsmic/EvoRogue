///term(phrase);
/// @arg phrase
var phrase = argument0;
var output = argument0
//This function translates common strings using the language databases
//This provides a simple, single argument way to gain access to these terms

switch ( phrase ) {
	//Elements
	case "Physical":	output = pullstring("db_Strings_UI","value",1);		break;
	case "Fire":		output = pullstring("db_Strings_UI","value",2);		break;
	case "Water":		output = pullstring("db_Strings_UI","value",3);		break;
	case "Air":			output = pullstring("db_Strings_UI","value",4);		break;
	case "Nature":		output = pullstring("db_Strings_UI","value",5);		break;
	case "Shadow":		output = pullstring("db_Strings_UI","value",6);		break;
	//Attributes
	case "Power":		output = pullstring("db_Strings_UI","value",7);		break;
	case "Fortitude":	output = pullstring("db_Strings_UI","value",8);		break;
	case "Speed":		output = pullstring("db_Strings_UI","value",9);		break;
	case "Recovery":	output = pullstring("db_Strings_UI","value",10);	break;
	case "Potency":		output = pullstring("db_Strings_UI","value",11);	break;
	case "Health":		output = pullstring("db_Strings_UI","value",12);	break;
	case "Energy":		output = pullstring("db_Strings_UI","value",13);	break;
	//Common Words
	case "Element":		output = pullstring("db_Strings_UI","value",14);	break;
	case "Genome":		output = pullstring("db_Strings_UI","value",15);	break;
	case "Status":		output = pullstring("db_Strings_UI","value",16);	break;
	case "Skill":		output = pullstring("db_Strings_UI","value",17);	break;
	case "Skills":		output = pullstring("db_Strings_UI","value",18);	break;
	case "Passive":		output = pullstring("db_Strings_UI","value",19);	break;
	case "Passives":	output = pullstring("db_Strings_UI","value",20);	break;
	case "EnergyCost":	output = "Energy";									break;
	case "Recharge":	output = "Round Recharge";							break;
	//Genomes:
	case "Power+":		case "Genome1":
						output = pullstring("db_Strings_UI","value",21);	break;
	case "Fortitude+":	case "Genome2":
						output = pullstring("db_Strings_UI","value",22);	break;
	case "Speed+":		case "Genome3":
						output = pullstring("db_Strings_UI","value",23);	break;
	case "Recovery+":	case "Genome4":
						output = pullstring("db_Strings_UI","value",24);	break;
	case "Potency+":	case "Genome5":
						output = pullstring("db_Strings_UI","value",25);	break;
	case "All+":		case "Genome6":
						output = pullstring("db_Strings_UI","value",26);	break;
	};

return output;