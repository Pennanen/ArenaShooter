
var buffer = argument0;

while(true)
{
var message_id = buffer_read(buffer,buffer_u8);

switch(message_id)
	{
	case 1:
	
		client = buffer_read(buffer,buffer_u16);
		xx = buffer_read(buffer,buffer_u16);
		yy = buffer_read(buffer,buffer_u16);
		aa = buffer_read(buffer,buffer_u16);
		
		if (ds_map_exists(clientmap,string(client)))
			{ 
				clientObject = clientmap[? string(client)]
				clientObject.x = xx;
				clientObject.y = yy;
				clientObject.image_angle = aa;
			}
			else	
			{
				l = instance_create_depth(xx,yy,0,obj_playerDummy);
				clientmap[? string(client)] = l;
			};
			
			with(obj_serverClient)
			{
				if (client_id != client_id_current) {network_send_raw(self.socket_id,other.send_buffer,buffer_tell(other.send_buffer))};
			}
	break;
	}
	if (buffer_tell(buffer) == buffer_get_size(buffer)) {break;}
}