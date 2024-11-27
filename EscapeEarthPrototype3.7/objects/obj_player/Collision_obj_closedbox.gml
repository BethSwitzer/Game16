if (place_meeting(x, y, obj_box)) {
    is_hiding = true; // Player is inside the box
	
} else {
    is_hiding = false; // Player has exited the box
	
}



var _l255a89e6_0;
_l255a89e6_0 = keyboard_check_pressed(ord("E"));
if (_l255a89e6_0)
{
	visible = 1 - keyboard_check(ord("E"));
}
else 
{
	visible = 0

}