audio_play_sound(power_up_grab,1,false)          
randomize();

//hiệu ứng ngẫu nhiên
//tỉ lệ  


	effect[0] = 50;//chậm
	effect[1] = 50;//nhanh
	effect[2] = 10;//dừng
	effect[3] = 8//tele
	effect[4] = 3 //win
	effect[5] = 5 //restart

	var effect_total = 0;
	
	for (var i = 0; i < array_length(effect); ++i) {
    effect_total += effect[i];
	} //cộng tất cả tỉ lệ của hiệu ứng

	var _num = irandom_range(1, effect_total); // lấy ngẫu nhiên từ 1 đến tổng tỉ lệ hiệu ứng
	var _sum = 0;
	var _size = array_length(effect); // số lượng hiệu ứng
	
	
for (var i = 0; i < _size; ++i) {   //kiểm tra hết các hiệu ứng
	
	_sum += effect[i];    // biến này lấy dần các tỉ lệ hiệu ứng
	
	if _num <= _sum {      // khi tổng sum lớn hơn một tổng hiệu ứng ngẫu nhiên thì hiệu ứng thứ i đc chọn

		switch(i) {
			case 0:		//làm chậm
			{
				
				acceleration *= global.lamcham;
				draw_slowdown = true;
				alarm[0] = global.effect_duration;
			
			}
			break;
			case 1:		//nhanh
			{
				acceleration *= global.tangtoc;
				draw_speedup =  true;  
				alarm[0] = global.effect_duration;
			
				
			}
			
			break;
			case 2:		//dừng
			{
			
			tocdo=0;
			acceleration=0;
			draw_stun =true;
			alarm[0] = global.effect_duration;
			
			break;
			}
			case 3:		//tele
			{
				id.x = id.x + global.teledistance;
				draw_teleport = true;
				alarm[0] = global.effect_duration
			}
			break;
			
			case 4:
			{
				id.x =object_vachdich.x -100;
	 
			}
			break;
			case 5:
			{
				id.x = xpos;	
			}
			break;
		}
		break;
}

}
instance_destroy(other.id)
 
 
