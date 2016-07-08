/// Load_Game()
var grid1 = ds_grid_create(1,2);

// No Ads.
ds_grid_add(grid1, 0, 0, "noads_boolean");
ds_grid_add(grid1, 0, 1, noads);
Load_Data("NoAds", grid1, "single");

// Load normal data.
if(file_exists(working_directory + "datos_general.sav")){
    ini_open(working_directory + "datos_general.sav");
    musica_pause = ini_read_real("musica_pause", "pass", 0);
    sef_pause = ini_read_real("sef_pause", "pass", 0);
    idioma = ini_read_string("idioma", "pass", 0);
    played = ini_read_real("played", "pass", 0);
    ini_close();
}
