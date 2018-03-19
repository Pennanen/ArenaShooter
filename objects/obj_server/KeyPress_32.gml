/// @description Insert description here
// You can write your code in this editor
matchState = 1;
		buffer_seek(tick_buffer, buffer_seek_start, 0);
		
		buffer_write(tick_buffer, buffer_u8, 3);
		buffer_write(tick_buffer, buffer_s16, cp_status);
		buffer_write(tick_buffer, buffer_u8, matchState);
		with(obj_serverClient)
			{
			network_send_raw(self.socket_id,other.tick_buffer,buffer_tell(other.tick_buffer))
			}