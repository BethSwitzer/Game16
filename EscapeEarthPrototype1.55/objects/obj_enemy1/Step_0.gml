if collision_line(x,y,obj_player.x,obj_player.y,obj_block_brick,1,0)
{
	visible = false;
}
else
{
	visible = true;
	//movement script for enemies 
	mp_potential_step(obj_player.x,y,5,1);
}
