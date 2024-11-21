if (other.object_index == obj_player) { 
    if (variable_instance_exists(other, "health")) {
        other.health -= 10; // Reduce health by 10
    } else {
        show_debug_message("Error: 'health' variable not found on obj_player.");
    }
}
// obj_player - Create Event
is_hiding = false;
