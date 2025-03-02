   
event_inherited();
if(global.money >= global.money_min){
room_goto(room_map_selection);}
 else {show_message("Ban khong du tien de choi");}