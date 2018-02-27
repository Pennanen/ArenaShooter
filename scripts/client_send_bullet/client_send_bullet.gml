

buffer_seek(obj_client.bullet_buffer,buffer_seek_start,0);

buffer_write(obj_client.bullet_buffer,buffer_u8, 2);
buffer_write(obj_client.bullet_buffer,buffer_u16,x);
buffer_write(obj_client.bullet_buffer,buffer_u16,y);
buffer_write(obj_client.bullet_buffer,buffer_u16,dir);
buffer_write(obj_client.bullet_buffer,buffer_u16,spd);

network_send_raw(obj_client.socket,obj_client.bullet_buffer,buffer_tell(obj_client.bullet_buffer));