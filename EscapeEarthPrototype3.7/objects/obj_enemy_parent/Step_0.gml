event_inherited();
	var wall_found = check_collision(vel_x * 2, 0);
	if(wall_found)
	{
	
		vel_x = -vel_x;
	}
	var ground_ahead = check_collision(vel_x * 32, 64);
	if(!(ground_ahead))
	{
		if(grounded)
		{
			vel_x = -vel_x;
		}
	}
	var l4215A62D_0 = instance_place(x + vel_x * 16, y + 0, [obj_enemy_parent]);
	if ((l4215A62D_0 > 0))
	{
		vel_x = -vel_x;
	}