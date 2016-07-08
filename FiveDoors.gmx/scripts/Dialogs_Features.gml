/// Dialogs_Features(room, visit, character, index);
var room_ = argument[0];
var visit = argument[1];
var cc = argument[2];
var t = argument[3];


switch(room_){
    case game1:
        switch(visit){
            case 1:
                switch(t){
                    case 10:
                    
                        if(!instance_exists(General)){
                             instance_create(0,0, Control_Explosion);
                             instance_create(-16, 208, General);
                             can_continue = false;
                        }
                    break;
                    case 16:
                        if(process[0] != true) exit;
                        var gn = instance_nearest(x, y, General);
                        with(gn){
                            image_speed = .2;
                            sprite_index = spr_general_lado;
                            hspeed = 3;
                        }
                        with(Goro){
                            sprite_index = spr_goro_lado;
                        }
                        process[0] = false;
                        
                    break;
                    case 18:
                        if(!instance_exists(Libro)){
                             instance_create(400, 192, Libro);
                             can_continue = false;
                        }
                        
                    break;         
                }                              
            break;  
        }
    break;
}
