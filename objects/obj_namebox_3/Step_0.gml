if(string_length(input)<15 && writable){
input =keyboard_string
}else{
	
}
if(time<0){
	time=def_time;
	cursor =" ";
}else if(time>=0 && writable)
{
	cursor ="|";
}

time -=1/room_speed;


if(!writable)
{
	global.name3 =input;
}





