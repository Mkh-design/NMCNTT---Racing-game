 draw_self();

draw_set_font(font_result)


draw_set_halign(fa_center)
draw_set_valign(fa_middle)

font_enable_effects(font_tittle,true,{
	outlineEnable: true,
	outlineColor : c_green,
	
})

if(global.result ==true){
	draw_set_colour(c_aqua)
draw_text(x,y, button_text_victory)}
if(global.result ==false){
	draw_set_colour(c_red)
draw_text(x,y, button_text_lost)}


draw_set_halign(fa_left)
draw_set_valign(fa_top)
