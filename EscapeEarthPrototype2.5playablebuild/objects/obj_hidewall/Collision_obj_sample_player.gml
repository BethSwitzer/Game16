/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 05B77808
/// @DnDArgument : "key" "ord("E")"
var l05B77808_0;l05B77808_0 = keyboard_check_released(ord("E"));if (l05B77808_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5800E639
	/// @DnDParent : 05B77808
	/// @DnDArgument : "var" "is_hiding"
	/// @DnDArgument : "value" "false"
	if(is_hiding == false){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 15BAD86E
		/// @DnDParent : 5800E639
		/// @DnDArgument : "steps" "1"
		alarm_set(0, 1);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 641D13DA
	/// @DnDParent : 05B77808
	/// @DnDArgument : "var" "is_hiding"
	/// @DnDArgument : "value" "true"
	if(is_hiding == true){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4B0A7418
		/// @DnDParent : 641D13DA
		/// @DnDArgument : "steps" "1"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 1);}}