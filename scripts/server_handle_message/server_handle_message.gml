var socket_id = argument0;
var buffer = argument1;
var client_id_current = clientmap[? string(socket_id)].client_id;

while(true)
{
var message_id = buffer_read(buffer,buffer_u8);

switch(message_id)
	{
	case 1:
	
		var xx = buffer_read(buffer, buffer_u16);
		var yy = buffer_read(buffer, buffer_u16);
		var aa = buffer_read(buffer, buffer_u16);
		buffer_seek(send_buffer, buffer_seek_start, 0);
		
		buffer_write(send_buffer, buffer_u8, 1);
		buffer_write(send_buffer, buffer_u16, client_id_current);
		buffer_write(send_buffer, buffer_u16, xx);
		buffer_write(send_buffer, buffer_u16, yy);
		buffer_write(send_buffer, buffer_u16, aa);
	
		with(obj_serverClient) 
			{
			if (client_id != client_id_current) {network_send_raw(self.socket_id,other.send_buffer,buffer_tell(other.send_buffer))}
			}
	
	break;
	}
	if (buffer_tell(buffer) == buffer_get_size(buffer)) {break;}
}