/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 058C53E0
var l058C53E0_0;
l058C53E0_0 = keyboard_check_released(vk_space);
if (l058C53E0_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71710A52
	/// @DnDParent : 058C53E0
	/// @DnDArgument : "var" "is_hiding"
	/// @DnDArgument : "value" "false"
	if(is_hiding == false)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 1241EDCF
		/// @DnDParent : 71710A52
		/// @DnDArgument : "steps" "1"
		alarm_set(0, 1);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1627E866
	/// @DnDParent : 058C53E0
	/// @DnDArgument : "var" "is_hiding"
	/// @DnDArgument : "value" "true"
	if(is_hiding == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 6FE770F0
		/// @DnDParent : 1627E866
		/// @DnDArgument : "steps" "1"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 1);
	}
}