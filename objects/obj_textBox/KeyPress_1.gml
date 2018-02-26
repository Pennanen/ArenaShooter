if (!keyboard_check(vk_enter))
	{
	text = keyboard_string;
	}
	else
	{
	obj_serverMenu.text = text;
	obj_serverMenu.alarm[1] = 1;
	instance_destroy();
	}

