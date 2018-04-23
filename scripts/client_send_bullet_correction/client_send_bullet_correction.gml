

if (global.multiplayer)
{
buffer_seek(obj_client.bullet_buffer,buffer_seek_start,0);

buffer_write(obj_client.bullet_buffer,buffer_u8, 8);
buffer_write(obj_client.bullet_buffer,buffer_u16,argument0); //x
buffer_write(obj_client.bullet_buffer,buffer_u16,argument1); //y
buffer_write(obj_client.bullet_buffer,buffer_u16,argument2); //id
network_send_raw(obj_client.socket,obj_client.bullet_buffer,buffer_tell(obj_client.bullet_buffer));
}