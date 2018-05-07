DarkValue = 0.2

x = 64;
y = 4;

width = 60;
height = 20;

pix_colour = draw_getpixel(x,y);
red = dec_to_hex(colour_get_red(pix_colour));
blue = dec_to_hex(colour_get_blue(pix_colour));
green = dec_to_hex(colour_get_green(pix_colour));


ColourArray = [1,2,3,4,5,6,10,11,12,13,14,15,16];
HexArray = ["0","c_physical\n$666600","c_fire\n$0000cc","c_water\n$cc6600","c_air\n$00ccff",
			"c_nature\n$009900","c_shadow\n$990099","","c_power\n$1c24ed","c_fortitude\n$a65400",
			"c_speed\n$1da3f7","c_recovery\n$00a651","c_potency\n$8a2eb0","nil","nil"];