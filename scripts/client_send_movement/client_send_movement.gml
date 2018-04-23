
buffer_seek(send_buffer,buffer_seek_start,0);

buffer_write(send_buffer,buffer_u8, 1);
buffer_write(send_buffer,buffer_s16,obj_player.x+obj_player.Vx);
buffer_write(send_buffer,buffer_s16,obj_player.y+obj_player.Vy);
buffer_write(send_buffer,buffer_s16,obj_player.look_angle);
buffer_write(send_buffer,buffer_s16,obj_player.torso_angle);
buffer_write(send_buffer,buffer_s16,obj_player.leg_angle);
buffer_write(send_buffer,buffer_u8,obj_player.image_index);
buffer_write(send_buffer,buffer_u8,obj_player.hp);
buffer_write(send_buffer,buffer_u16,obj_player.gun.sprite_index);
buffer_write(send_buffer,buffer_u8,obj_player.gun.image_index);
buffer_write(send_buffer,buffer_u16,1);
network_send_raw(socket,send_buffer,buffer_tell(send_buffer));


