if equiped
{
	if canshoot
	{
		if keyboard_check_direct(ord("S"))
			{
				canshoot = false;
				alarm[0] = 10;
				audio_play_sound(snd_shoot,1,0);
				if !global.GunReverse
				{
					instance_create_depth(x+15,y,1,o_shoot_flash);
				}
				else
				{
					instance_create_depth(x-15,y,1,o_shoot_flash)
				}
				alarm[1]=10;
				instance_create_depth(x+15,y,1,o_Bullet);
				ammo-=1;
			}
	}
	else if (ammo==0)
		{
			canshoot=false;
			reload=true;//bilo
			//global.canmove=false;//bilo
			if keyboard_check_direct(ord("S"))
			{
				audio_play_sound(snd_reload,1,0);
				alarm[2]=240;
				ammo=max_ammo;
			}
		
		}
}