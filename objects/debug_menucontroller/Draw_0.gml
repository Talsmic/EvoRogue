draw_sprite_stretched_ext(spr_dot,0,x,y,480,270,c_water,0.2);

draw_set_font(ft_EvoSmallcaps_6);
var row; row[1] = y+250; row[2] = y+235; row[3] = y+220; row[4] = y+205; row[5] = y+190;
var col; col[1] = x+20; col[2] = x+180; col[3] = x+340;

draw_textbutton(col[1],row[2],"[-] Battle Generator",c_gray);
draw_textbutton(col[1],row[1],"[-] Roguelike Generator",c_gray);

draw_textbutton(col[2],row[3],"[-] Player Containers",c_gray);
draw_textbutton(col[2],row[2],"[-] Creature Database",c_gray);
draw_textbutton(col[2],row[1],"[-] Skills Database",c_gray);

draw_textbutton(col[3],row[3],"[-] Settings",c_gray);
draw_textbutton(col[3],row[2],"[-] Save Data",c_gray);
draw_textbutton(col[3],row[1],"[-] Load Data",c_gray);