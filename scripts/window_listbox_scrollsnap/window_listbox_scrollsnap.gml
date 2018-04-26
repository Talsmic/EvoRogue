///window_listbox_scrollsnap();
if ( Listbox_Position < 1 ) { Listbox_Position = Listbox_List_Length };
if ( Listbox_Position > Listbox_List_Length ) { Listbox_Position = 1 };		
//Find Visible Range
var range_start = Listbox_Row_Starting * Listbox_Row_Length - Listbox_Row_Length + 1;
var range_end = range_start + Listbox_Row_Length * Listbox_Column_Length - 1;
//Snap view to Visible Range
if ( Listbox_Position < range_start )	{ Listbox_Row_Starting = ceil( Listbox_Position / Listbox_Row_Length ) };
if ( Listbox_Position > range_end )		{ Listbox_Row_Starting += ceil( ( Listbox_Position - range_end ) / Listbox_Row_Length ) };