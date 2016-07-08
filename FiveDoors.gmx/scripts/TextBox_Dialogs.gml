/// TextBox_Dialogs(room, visit, index);
var room_ = argument[0];
var visit = argument[1];
var t = argument[2];
var text = 0;

ds_list_clear(text);
ds_list_clear(cara);

if(idioma == "en"){
    switch(room_){
        case game1:
            switch(visit){
                case 1:
                        switch(t){
                            case 1: 
                                                        
                                // Fill text.
                                can_skip = false;
                                
                                // Dialogo entre Goro e Ikka.
                                //show_debug_message('what');
                                ds_list_add(text, "Unknown: Huh? What was that?"); // 0

                                
                                //FIN
                                
                                // Fill caras.
                                ds_list_add(cara, Face_Number("Player"));
    
    
                            break;
                        }
                       
                    
                break;
            }
        break;
    }
}else if(idioma == "es"){
    switch(room_){
        case game1:
            switch(visit){
                case 1:
                        switch(t){
                            case 1: 
                                                        
                                // Fill text.
                                can_skip = false;
                                //show_debug_message('what');
                                // Dialogo entre Goro e Ikka.
                                ds_list_add(text, "Desconocido: Huh? Que fue eso?"); // 0
                             
                                //FIN
                                
                                // Fill caras.
                                ds_list_add(cara, Face_Number("Player"));
    
                            break;
                        }
                       
                    
                break;
            }
        break;
    }
}

//show_debug_message(ds_list_size(text));
if(ds_list_size(text) <= 0){ 
   instance_destroy();
}
