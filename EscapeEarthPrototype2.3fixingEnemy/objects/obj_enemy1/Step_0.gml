/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1BD91D64
/// @DnDArgument : "code" "if collision_line(x,y,obj_player.x,obj_player.y,obj_block_brick,1,0)$(13_10){$(13_10)$(13_10)}$(13_10)else$(13_10){$(13_10)$(13_10)	//movement script for enemies $(13_10)	mp_potential_step(obj_player.x,y,5,0);$(13_10)}"
if collision_line(x,y,obj_player.x,obj_player.y,obj_block_brick,1,0)
{

}
else
{

	//movement script for enemies 
	mp_potential_step(obj_player.x,y,5,0);
}