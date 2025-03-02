   

global.tocdoduoi = 1;
global.tocdotren = 2;
global.giatoc= 0.0000005;
 global.offset = 200 ;// độ lệch giữa hộp thưởng và nhân vật

 
 
//biến hiệu ứng
global.lamcham = -3; 
global.tangtoc = 2;   //tăng gấp đôi vận tốc

global.effect_duration = game_get_speed(gamespeed_fps) * 2;

global.teledistance = 150;

if(room==room_bet){bet_on = object_nhan_vat_1;}

global.result =false; 

if(room=room_bet){
global.char_rank_name[1]="A";
global.char_rank_name[2]="A";
global.char_rank_name[3]="A";
global.char_rank_name[4]="A";
global.char_rank_name[5]="A";


global.char_rank_obj[1]=global.spr_char_1;
global.char_rank_obj[2]=global.spr_char_1;
global.char_rank_obj[3]=global.spr_char_1;
global.char_rank_obj[4]=global.spr_char_1;
global.char_rank_obj[5]=global.spr_char_1;
}