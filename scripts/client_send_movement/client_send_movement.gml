
buffer_seek(send_buffer,buffer_seek_start,0);

buffer_write(send_buffer,buffer_u8, 1);
buffer_write(send_buffer,buffer_f32,obj_player.x);
buffer_write(send_buffer,buffer_f32,obj_player.y);
buffer_write(send_buffer,buffer_f32,obj_player.look_angle);
buffer_write(send_buffer,buffer_f32,obj_player.torso_angle);
buffer_write(send_buffer,buffer_f32,obj_player.leg_angle);
buffer_write(send_buffer,buffer_u8,obj_player.image_index);
buffer_write(send_buffer,buffer_u8,4000);
buffer_write(send_buffer,buffer_u16,obj_player.gun.sprite_index);
buffer_write(send_buffer,buffer_u8,obj_player.gun.image_index);
network_send_raw(socket,send_buffer,buffer_tell(send_buffer));


