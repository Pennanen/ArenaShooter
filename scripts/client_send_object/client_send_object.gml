
/*
arg0 = x;
arg1 = y;
arg2 = object;

*/
if (global.multiplayer){
buffer_seek(obj_client.object_buffer,buffer_seek_start,0);

buffer_write(obj_client.object_buffer,buffer_u8, 6);
buffer_write(obj_client.object_buffer,buffer_s16,argument2);
buffer_write(obj_client.object_buffer,buffer_s16,argument0);
buffer_write(obj_client.object_buffer,buffer_s16,argument1);
network_send_raw(obj_client.socket,obj_client.object_buffer,buffer_tell(obj_client.object_buffer));}