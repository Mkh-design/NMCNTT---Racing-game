    
event_inherited();

if(global.mute==false){
	global.mute=true;
}else{global.mute=false}



if(global.mute==true)
{
	audio_master_gain(0);

}
if(global.mute==false)
{
	audio_master_gain(1);

}



