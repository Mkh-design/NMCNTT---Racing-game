 var chieu_dai=150
var chieu_rong =35

draw_rectangle_color(x-chieu_dai,y-chieu_rong,x+chieu_dai,y+chieu_rong,c_white,c_white,c_white,c_white,false)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_blue)
draw_set_font(font_menu)


draw_text_ext_transformed(x-chieu_dai,y-chieu_rong,input + cursor, 100,2000,1,1,0)

if(mouse_check_button_released(mb_left)){
	if(point_in_rectangle(mouse_x,mouse_y,x-chieu_dai,y-chieu_rong,x+chieu_dai,y+chieu_rong))
	{
		writable=true;
		keyboard_string="";
	}
else {
		writable=false;
	 }
}




  