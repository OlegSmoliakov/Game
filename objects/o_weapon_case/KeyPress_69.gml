if !open
{
	open=true;
	sprite_index=s_weapon_case;
	alarm[0]=6;
	instance_create_depth(x,y,0,o_Gun1);
	instance_destroy(o_button_e);
}