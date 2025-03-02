   if(global.game_start==true && !reach_goal){
randomize();
tocdo= tocdo + acceleration * delta_time;
speed=tocdo;

}
user_img_index += 1;
if (user_img_index >= num) {
   user_img_index = 0;
}

user_img_index_victory += 1;
if (user_img_index_victory >= victory_num) {
   user_img_index_victory = 0;
}
