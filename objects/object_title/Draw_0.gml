draw_self();

draw_set_font(font_tittle)

draw_set_colour(c_lime)

font_enable_effects(font_tittle,true,{
	outlineEnable: true,
	outlineColor : c_red,
	
})

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if(global.Language==1){
draw_text(x,y, button_text_English)
}else {
	draw_text(x,y,button_text_Vietnamese)
}
draw_set_halign(fa_left)
draw_set_valign(fa_top)
