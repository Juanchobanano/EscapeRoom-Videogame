/// SaveSettings();
if(file_exists(working_directory + "datos_general.sav")){
    file_delete(working_directory + "datos_general.sav");
}

ini_open(working_directory + "datos_general.sav");
ini_write_real("musica_pause", "pass", musica_pause);
ini_write_real("sef_pause", "pass", sef_pause);
ini_write_string("idioma", "pass", idioma);
ini_write_real("played", "pass", played);
ini_close();
