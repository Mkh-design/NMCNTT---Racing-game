/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_mute,0,x,y,5,5,0,c_white,1);

if(global.mute==true)
{
draw_sprite_ext(sprite_mute,1,x,y,5,5,0,c_white,1);
}
if(global.mute==false)
{	
draw_sprite_ext(sprite_mute,0,x,y,5,5,0,c_white,1);
}



