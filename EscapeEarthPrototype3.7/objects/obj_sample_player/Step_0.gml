/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C72F36D
/// @DnDInput : 6
/// @DnDArgument : "var" "up"
/// @DnDArgument : "value" "keyboard_check(ord("W"))"
/// @DnDArgument : "var_1" "left"
/// @DnDArgument : "value_1" "keyboard_check(ord("A"))"
/// @DnDArgument : "var_2" "down"
/// @DnDArgument : "value_2" "keyboard_check(ord("S"))"
/// @DnDArgument : "var_3" "right"
/// @DnDArgument : "value_3" "keyboard_check(ord("D"))"
/// @DnDArgument : "var_4" "xinput"
/// @DnDArgument : "value_4" "right-left"
/// @DnDArgument : "var_5" "yinput"
/// @DnDArgument : "value_5" "down-up"
var up = keyboard_check(ord("W"));
var left = keyboard_check(ord("A"));
var down = keyboard_check(ord("S"));
var right = keyboard_check(ord("D"));
var xinput = right-left;
var yinput = down-up;

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 568E5D6D
/// @DnDArgument : "xvel" "xinput*player_speed"
/// @DnDArgument : "yvel" "yinput*player_speed"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
move_and_collide(xinput*player_speed, yinput*player_speed, obj_wall,4,0,0,-1,-1);