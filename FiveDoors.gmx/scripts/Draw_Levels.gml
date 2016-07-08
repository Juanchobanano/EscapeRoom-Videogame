/// Draw_Levels (num)

// Set local variables.
var levels = argument[0];
var count = 0;
num_y = ceil(levels / 4);
var xx = 151;

// Vertical for loop levels.
for(var i = 0; i < num_y; i += 1)
{
    // Horizontal for loop levels.
    for(var num = 0; num < 4; num++)
    {
    
        // We don't want to draw more levels.
        if(count >= levels){    
            break;
        
        }else{
        
            // Check if the level is available.
             disponible = true;
            
            /*if(count <= nivel - 1){
                disponible = true;    
            }*/
            
            // Global settings of the level number text.
            draw_set_color(c_white);
         //   draw_set_font(font_game_26);
            draw_set_font(font_rayman_26);
            
            var xs = xx + sprite_get_width(spr_level) / 2 - string_width(string(count+1))/2 + 1;         
            var ys = yy_marco + string_height(string(count + 1))/2 + 10;// * 2 - 5;
            
            var color = make_color_rgb(51,51,51);
    
            
            // If disponible is true.
            if(disponible){
            
                // Draw the level icon.
                //var completed = ds_grid_get(level_object, count, 1);
               // show_debug_message('completed: ' + string(ds_grid_get(level_object, i, 1)));
                
               // if(completed){
                    draw_sprite(spr_level, 0, xx, yy_marco);
                //}else{
                 //   draw_sprite_ext(spr_level, 0, xx, yy_marco, 1, 1, 0, make_color_rgb(153, 204, 153), 1);
                //}
            
                // Draw the number of the level.
                draw_set_font(font_rayman_26);
                draw_text(xs, ys, string(count + 1));
                draw_set_font(font_game_26);
                
                // Check if the mouse_x and mouse_y is on a level object.
                if(in_Rectangle(xx, yy_marco, xx + sprite_get_width(spr_level), yy_marco + sprite_get_height(spr_level))){
                    
                    // Mouse pressed.
                    if(mouse_check_button_pressed(mb_left)){
                        pressed = mouse_y;
                    }
                    
                    // Mouse released.
                    if(mouse_check_button_released(mb_left)){
                        released = mouse_y;   
                    }
                }
                            
                // Goto to the selected level if it is available.
                if((point_distance(pressed, 0, released, 0) < 10) and disponible){ 
                  //  room_goto_transition(Room_Loading, 0);
                   // audio_play_sound(sn_boton_start, 1, 0);
                    if(!played){ played = true;  SaveSettings(); }
                    //room_goto_transition((asset_get_index('game' + string(count + 1))), 0);
                  //  nivel_selected = count + 1;
                    room_goto_transition(game1, 0, 45);
                    nivel = count + 1;
                    Play_Button();
                    released = -99999;
                }
                
            }else{
                // Draw the level icon.
                draw_sprite_ext(spr_level, 0, xx, yy_marco, 1, 1, 0, c_white, .5);
                
                // Draw the number of the level.
                draw_text_colour(xs, ys, string(count + 1), c_white, c_white, c_white, c_white, .5);
            }
            
            // Increase xx coordinate and count.
            xx += 96 + 24 + 3;
            count += 1;
        }
    }
    
    // Increase offset and height and restore xx coordinate.
    xx = 151;
    yy_marco += 150;
    height += 150;
}
