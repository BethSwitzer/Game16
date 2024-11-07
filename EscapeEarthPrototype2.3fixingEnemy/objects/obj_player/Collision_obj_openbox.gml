/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 667A002E
/// @DnDArgument : "key" "ord("E")"
var l667A002E_0;l667A002E_0 = keyboard_check_released(ord("E"));if (l667A002E_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4666513E
	/// @DnDParent : 667A002E
	/// @DnDArgument : "var" "is_hiding"
	/// @DnDArgument : "value" "false"
	if(is_hiding == false){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7258BE8E
		/// @DnDParent : 4666513E
		/// @DnDArgument : "steps" "2"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 2);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BBD9092
	/// @DnDParent : 667A002E
	/// @DnDArgument : "var" "is_hiding"
	/// @DnDArgument : "value" "true"
	if(is_hiding == true){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0E7998B0
		/// @DnDParent : 5BBD9092
		/// @DnDArgument : "steps" "1"
		/// @DnDArgument : "alarm" "2"
		alarm_set(2, 1);}}