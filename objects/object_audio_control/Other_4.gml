
 if(room==room_Menu && !audio_is_playing(sound_menu))
 {
audio_stop_all();
audio_play_sound(sound_menu,5,true);
 }
 if(room=room_Race)
 { if(global.rank<5){
audio_stop_all();
audio_play_sound(sound_play,1,false) ;
}
else {
	audio_stop_all()
}
 }

if(room==room_result)
{
audio_stop_all();
audio_play_sound(sound_victory,1,true);
}