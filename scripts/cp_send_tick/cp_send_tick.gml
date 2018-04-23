
if (global.multiplayer){


buffer_seek(obj_client.tick_buffer,buffer_seek_start,0);
buffer_write(obj_client.tick_buffer,buffer_u8, 3);
buffer_write(obj_client.tick_buffer,buffer_s16,cp_status);

network_send_raw(obj_client.socket,obj_client.tick_buffer,buffer_tell(obj_client.tick_buffer));}