   
event_inherited();

if(global.background == sprite_bg_space)
{
	draw_rectangle_color(x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2,c_aqua,c_aqua,c_aqua,c_aqua,true)
	image_alpha=0.6
}
else{
draw_rectangle_color(x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2,c_white,c_white,c_white,c_white,true)
	image_alpha=1
}
 
