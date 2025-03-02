 draw_self();

draw_set_font(font_menu)

draw_set_colour(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

load_money();

draw_text(x,y, global.money )
draw_sprite_ext(sprite_coin,img_index,x-80,y,3,3,0,c_white,1)

draw_set_halign(fa_left)
draw_set_valign(fa_top)

