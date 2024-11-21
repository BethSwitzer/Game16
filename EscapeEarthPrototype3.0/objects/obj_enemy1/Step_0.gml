

if collision_line(x,y,obj_player.x,y,obj_block_brick,1,0)
{
	
}
else
{
	
	//movement script for enemies 
	mp_potential_step(obj_player.x,y,5,0);
}
// obj_enemy1 - Step Event
var player = instance_nearest(x, y, obj_player);

if (player != noone) {
    if (player.is_hiding) {
        // Move away
        var dx = x - player.x;
        var dy = y - player.y;
        var angle = point_direction(0, 0, dx, dy);
        x += lengthdir_x(2, angle); 
        y += lengthdir_y(2, angle);
    } else {
        // Chase the player
        var angle = point_direction(x, y, player.x, player.y);
        x += lengthdir_x(2, angle); 
        y += lengthdir_y(2, angle);
    }
}

// obj_enemy1 - Collision Event with obj_player
if (other.object_index == obj_player) {
    if (!other.hidden) {
        if (variable_instance_exists(other, "health")) {
            other.health -= 10; // Damage player
        }
    }
}
