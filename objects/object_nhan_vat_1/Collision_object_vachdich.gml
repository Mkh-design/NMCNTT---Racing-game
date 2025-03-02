 
if(!reach_goal){
	reach_goal =true;
	global.rank+=1;
	this_char_rank=global.rank;
	global.char_rank_name[global.rank]=self.name;
	global.char_rank_obj[global.rank] =this_sprite;
	
	
	if(string(global.bet_on) == object_get_name(object_index) && global.rank ==1) {
		global.money += global.win
		global.result = true;
	}
	
	if( string(global.bet_on) ==object_get_name(object_index) && global.rank !=1){
		global.money -= global.lost;	
		global.result = false;
	}

	if(global.rank == 5)
	{
		alarm[1]= game_get_speed(gamespeed_fps) * 1;	
	}
	
	
	
	if(global.rank==1){
	audio_play_sound(winning_sound,1,false)
	}
	

}








