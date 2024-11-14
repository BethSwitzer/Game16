// This runs the parent's End Step event.
// The rest of the event is concerned with making
// the enemy turn, either when it hits a wall, or
// finds a ledge.
event_inherited();

// This action calls the check_collision function,
// and looks for a wall collision where the enemy
// is walking.
// We multiply the vel_x by 4 to look for a wall,
// so we're looking ahead 4 times by the amount
// the enemy will move this frame.
// The result (true or false) is stored in a temporary
// variable.
var wall_found = check_collision(vel_x * 2, 0);

// This checks if a wall was found.
if(wall_found)
{
	// This flips the sign of the X velocity, so if
	// it's positive it becomes negative, and vice versa.
	// This means the enemy turns to the other direction
	// (from left to right, and vice versa).
	vel_x = 0;
}

// Here we are looking for a ledge, by checking for
// a collision 32 times ahead where the enemy is 
// moving.
// However this time the Y offset is set to 64, so
// it's looking for a collision 64 pixels below where
// the enemy would be.
// If a collision is not found there, it means that
// position has no ground for the enemy to walk on,
// so we've hit a ledge.
// The result of this function is stored in 'ground_ahead'.
var ground_ahead = check_collision(vel_x * 32, 64);

// This checks if a collision was NOT found there,
// meaning we've hit a ledge.
if(!(ground_ahead))
{
	// This ensures the enemy is grounded, so
	// enemies in mid-air do not turn.
	if(grounded)
{
	// This makes the enemy turn.
		vel_x = 0;
}
}

// This checks if there is another enemy where
// this enemy is moving. This is used to make
// the enemy turn if it runs into another enemy,
// so they don't pass through each other.
var l4215A62D_0 = instance_place(x + vel_x * 16, y + 0, [obj_enemy_parent]);
if ((l4215A62D_0 > 0))
{
	// In that case the enemy turns.
	vel_x = 0;
}