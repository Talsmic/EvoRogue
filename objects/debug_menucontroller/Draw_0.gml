draw_set_font(ft_EvoSmallcaps_6);
var row; row[1] = 250; row[2] = 235; row[3] = 220; row[4] = 205; row[5] = 190;
var col; col[1] = 20; col[2] = 180; col[3] = 340;

draw_textbutton(col[1],row[2],"[-] Battle Generator",c_gray);
draw_textbutton(col[1],row[1],"[-] Roguelike Generator",c_gray);

draw_textbutton(col[2],row[3],"[-] Player Containers",c_gray);
draw_textbutton(col[2],row[2],"[-] Creature Database",c_gray);
draw_textbutton(col[2],row[1],"[-] Skills Database",c_gray);

draw_textbutton(col[3],row[3],"[-] Settings",c_gray);
draw_textbutton(col[3],row[2],"[-] Save Data",c_gray);
draw_textbutton(col[3],row[1],"[-] Load Data",c_gray);