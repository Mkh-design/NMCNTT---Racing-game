file_grid = load_csv("./saves/save_his.csv");
var ww = ds_grid_width(file_grid);
var hh = ds_grid_height(file_grid);
var xx = 128;
var yy = 128;
for (var i = 0; i < ww; i++;)
{
    for (var j = 0; j < hh; j++;)
    {
        draw_text(xx, yy, string(file_grid[# i, j]));
        yy += 128;
    }
    yy = 128;
    xx += 128;
}