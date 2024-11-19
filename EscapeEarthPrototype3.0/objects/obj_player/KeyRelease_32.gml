/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 502F337A
/// @DnDComment : This checks if the 'grounded' variable is true,$(13_10)meaning the player is standing on the ground, and$(13_10)can jump.$(13_10)
/// @DnDArgument : "expr" "jumped"
/// @DnDArgument : "not" "1"
if(!(jumped)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02D65FB2
	/// @DnDComment : This sets the Y velocity to negative jump_speed,$(13_10)making the player immediately jump upwards. It$(13_10)will automatically be brought down by the gravity$(13_10)code in the parent's Begin Step event.
	/// @DnDParent : 502F337A
	/// @DnDArgument : "var" "vel_y"
	vel_y = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DDFDB6E
	/// @DnDParent : 502F337A
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "jumped"
	jumped = true;}