event_inherited();

// Set the position of the default audio listener
// to the player's position, for positional audio
// with audio emitters (such as in obj_end_gate)
audio_listener_set_position(0, x, y, 0);

// Player Step Event
if (place_meeting(x, y, obj_closedbox)) {
    // Player is inside the box
    is_hidden = true;
} else {
    // Player is outside the box
    is_hidden = false;
}