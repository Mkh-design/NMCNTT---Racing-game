  draw_self();

draw_set_font(font_menu)

draw_set_colour(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)


draw_text(x,y, global.char_rank_name[2])
draw_sprite_ext(global.char_rank_obj[2],img_index,x-400,y,2.5,2.5,0,c_white,1)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
