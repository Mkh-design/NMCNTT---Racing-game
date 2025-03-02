 
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
;


    layer_background_sprite(back_id,global.background);
	layer_background_stretch(back_id,true);



 
if(global.background==sprite_bg_sea){
var _fx_tint = fx_create("_filter_underwater");

layer_set_fx("Background", _fx_tint);	
	
}
if(global.background==sprite_bg_sky){
var _fx_tint = fx_create("_filter_clouds");

layer_set_fx("Background", _fx_tint);	
	
}

 if(global.background==sprite_bg_space){
var _fx_tint = fx_create("_filter_ripples");
fx_set_parameter(_fx_tint,"g_RipplesAmplitude  ",[0.0015])
fx_set_parameter(_fx_tint,"g_RipplesWidth  ",[0.005])
//fx_set_parameter(_fx_tint,"g_RipplesAmplitude   ",0.005)
layer_set_fx("Background", _fx_tint);	
	
}


 

