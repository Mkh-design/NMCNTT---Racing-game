
function save_money(){
     var file= file_text_open_write("./saves/save.txt");
	file_text_write_real(file ,global.money);
	file_text_close(file);
}

function load_money(){
     if(file_exists("./saves/save.txt")){
	 var file= file_text_open_read("./saves/save.txt")
		global.money= file_text_read_real(file);
		file_text_close(file);
	 }
}


