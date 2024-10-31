// In the Create Event of the player object
isInBox = false;  // Tracks if the player is in the box
interactionRange = 32;  // Range within which player can interact with the box

// Step Event of the player object
if (keyboard_check_pressed(vk_e)) {
    // Check if the player is close to the box and not currently in it
    if (!isInBox && point_distance(x, y, obj_closedbox.x, obj_closedbox.y) <= interactionRange) {
        enterBox();
        isInBox = true;
    }
    // If the player is in the box, pressing 'E' will exit
    else if (isInBox) {
        exitBox();
        isInBox = false;
    }
}

// Separate functions for entering and exiting the box
function enterBox() {
    show_debug_message("Larry is now hidden.");
    // Example action to enter the box
    x = obj_closedbox.x;
    y = obj_closedbox.y;
}

function exitBox() {
    show_debug_message("Larry is now revealed to the enemy.");
    // Example action to exit the box
    x += 32;  // Moves the player outside
    y += 32;  // Adjust as needed
}
