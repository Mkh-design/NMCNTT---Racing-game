name =global.name1;
sprite_victory=sprite_sea_1_victory
this_char_rank =0;

randomize();  
endgame =false;

user_img_index = 0;
user_img_index_victory=0;

num = sprite_get_number(this_sprite);
victory_num=sprite_get_number(sprite_victory);


draw_speedup = false;
draw_slowdown = false;
draw_stun = false;
draw_teleport = false;

	
tocdo=random_range(global.tocdoduoi,global.tocdotren); //ngẫu nhiên V0
acceleration = random(global.giatoc);// ngẫu nhiên a


reach_goal = false;

flip=1;
animloop=0; 
up =true; 
do_cao_anim_nhay=50;
moi_buoc_nhay=2;

anim_play = true;

  
xpos = id.x; //vị trí trên trục x
ypos =  id.y;//vị trí trên trục y
xdich = object_vachdich.x;
vitri = random_range(xpos+global.offset,xdich-global.offset);
instance_create_layer(vitri,y,"Instances",object_powerup);




fly_away_x=0;
fly_away_y=0;