///window_listbox_create();

//A Listbox is a Window Structure that creates a scrollable box and populates it with 
//a list or grid of icons or words. Most variables for it are stored in the object

//Requires the following variables to be pre-established:
Listbox_Mode = "Words";		//OR "Icons"
Listbox_IconType = "Skill"; //OR ""Creature", "DB_Creature", "DB_Skill"
Listbox_ListIcon = array_create(10,1);
Listbox_ListWords = array_create(10,"default");
Listbox_ListColour = array_create(10,c_white);
Listbox_ShowID = false;

Listbox_X = x;
Listbox_Y = y;

Listbox_Position = 1;	
Listbox_Row_Starting = 1;
Listbox_Row_Count = 1;		//Self Correcting
Listbox_Row_Length = 5;
Listbox_Column_Length = 5;
Listbox_List_Length = 1;	//Self Correcting
Listbox_WordWidth = 150;
	
Listbox_Beat = 0;
Listbox_BeatCount = 5;