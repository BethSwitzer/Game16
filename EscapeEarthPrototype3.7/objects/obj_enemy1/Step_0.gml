var stuck = check_collision(0,64);
if (stuck){
	if (grounded)
	{
	move_snap(x, y - 1);
	}		
}
if collision_line(x,y,obj_player.x,obj_player.y,obj_block_brick, true, false)
{	

event_inherited();
	var wall_found = check_collision(vel_x * 1, 0);
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

}
else
{
	var step = 4
	var wall_found = check_collision(64, -10);
	if(wall_found)
	{
	
		step = -step;
	}
	var wall_found = check_collision(-64, -10);
	if(wall_found)
	{
	
		step = -step;
	}
	mp_potential_step(obj_player.x,y,step,false);
	
	
// obj_enemy1 - Step Event
	var player = instance_nearest(x, y, obj_player);
	
	if (player != noone) {
		if (player.is_hiding) {
			// Move away
			var dx = x - player.x;
			var angle = point_direction(x, y, dx, 0);
			x += lengthdir_x(7, angle);
			y += lengthdir_y(0, angle);
			mask_index = spr_enemy_empty;
			
		} else {
			
			// Chase the player
			var angle = point_direction(x, y, player.x, 0);
			x += lengthdir_x(2, angle); 
			y += lengthdir_y(0, angle);
			mask_index = spr_enemy1_walk;
		
		}
}


	// obj_enemy1 - Collision Event with obj_player
if (other.object_index == obj_player) 
{
	    if (!other.hidden) {
		    if (variable_instance_exists(other, "health")) {
			    other.health -= 10; // Damage player
															}
						}
}}