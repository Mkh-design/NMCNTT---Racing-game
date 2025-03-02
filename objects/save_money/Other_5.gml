save_money();

if (global.result == true ) {
    var file = file_text_open_append("./saves/save_his.csv");
    file_text_writeln(file);
    file_text_write_string(file, string(current_hour) + ":" + string(current_minute) + "." + string(current_second) + "," + string(current_day) + "/" + string(current_month) + "/" + string(current_year) + ",Win");
} else {
    var file = file_text_open_append("./saves/save_his.csv");
    file_text_writeln(file);
    file_text_write_string(file, string(current_hour) + ":" + string(current_minute) + "." + string(current_second) + ","+ string(current_day) + "/" + string(current_month) + "/" + string(current_year) + ",Lose");
}

file_text_close(file);
