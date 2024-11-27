// Set hidden to true when the player is in the box
is_hiding = true;

// obj_enemy1 - Collision Event with obj_player
if (other.object_index == obj_player) { // Check if the collided object is the player
    if (!other.is_hiding) { // If the player is NOT hidden
        if (variable_instance_exists(other, "health")) { // Check if the 'health' variable exists
            other.health -= 10; // Deal damage
        }
    }
}

