if(room==room_Race){

if(!reach_goal) draw_sprite_ext(this_sprite,-1,x,y,3,3,0,c_white,1);

if(reach_goal){
	//Hiệu ứng phụ
		switch (this_char_rank){
			case 1:{
				draw_sprite_ext(sprite_1st,1,x-100,y,0.5,0.5,0,c_white,1)
			}
			break;
			case 2:{
				draw_sprite_ext(sprite_2nd,1,x-100,y,0.5,0.5,0,c_white,1)
			}
			break;
			case 3:{
				draw_sprite_ext(sprite_3rd,1,x-100,y,0.5,0.5,0,c_white,1)
			}
			break;
			case 4:{
				draw_sprite_ext(sprite_4th,1,x-100,y,0.5,0.5,0,c_white,1)
			}
			break;
			case 5:{
				draw_sprite_ext(sprite_5th,1,x-100,y,0.5,0.5,0,c_white,1)
			}
			break;
		}
	
	
	
	
		
	//Hiệu ứng từng nhóm
	//GRMEM & street
	if(global.spr_char_1==sprite_grmem_1 || global.spr_char_1==sprite_street_1 ){
		draw_sprite_ext(Sprite53,-1,x,y,3,3,0,c_white,1);
			if(up){
				y-=1;	
				animloop++;
				if(animloop=do_cao_anim_nhay/moi_buoc_nhay){
					flip=-1;
					up=false;
					animloop=0;
				}
			}
			if(!up){
				y+=1;
				animloop++;

				
				if(animloop=do_cao_anim_nhay/moi_buoc_nhay){
					
					up=true;
					animloop=0;
				}
			}
	
	
			draw_sprite_ext(this_sprite,1,x,y,flip*3,3,0,c_white,1);
	}
			
			
			//Space
	if(global.spr_char_1==sprite_space_1  ){
		
		if(animloop==360){
			animloop=0;
		}else{
			animloop+=3;	
		}
		
		
		draw_sprite_ext(this_sprite,1,x,y,3,3,animloop,c_white,1);
				draw_sprite_ext(star_strip4,user_img_index,x,y,2,2,0,c_white,1);
	}
	
	if(global.spr_char_1==sprite_sea_1){
			
			draw_sprite_ext(sprite_victory,user_img_index_victory,x,y,3,3,0,c_white,1);
	}
	
	if(global.spr_char_1==sprite_sky_1){
	fly_away_x--;
	fly_away_y--;
			draw_sprite_ext(this_sprite,user_img_index,x+fly_away_x,y+fly_away_y,3,3,0,c_white,1);
	}
}
	
	
	
	
	
	


 
if(draw_speedup == true){
	
draw_sprite_ext(sprite_powerup_speedup ,user_img_index,x-100,y,3,3,0,c_white,1);
}
if(draw_teleport == true){
draw_sprite_ext(sprite_powerup_teleport ,user_img_index,vitri,y,2,2,0,c_white,0.25);
}
if(draw_slowdown == true){
	draw_sprite_ext(sprite_powerup_slowdown ,user_img_index,x,y,2,2,0,c_white,0.8);
}
if(draw_stun == true){
	draw_sprite_ext(sprite_powerup_stun ,user_img_index,x,y-50,0.5,0.5,0,c_white,0.8);
}
}
