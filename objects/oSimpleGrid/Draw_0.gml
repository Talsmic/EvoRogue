draw_set_font(ft_EvoTooltip_6);
draw_set_colour(c_shadow);

for ( var i=1 ; i<=GridWidth ; i++ ) {
	for ( var j=1 ; j<=GridHeight ; j++ ) {
		draw_sprite_ext(GridTile,0,x+GridTileSize*(i-1),y-+GridTileSize*(j-1),1,1,0,c_shadow,1);
		draw_text(x+GridTileSize*(i-1),y-+GridTileSize*(j-1),string(i)+","+string(j))
		};
	};