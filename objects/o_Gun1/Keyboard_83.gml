if canshoot
{
	if keyboard_check_direct(ord("S"))
		{
			canshoot = false;
			alarm[0] = 10;
			audio_play_sound(snd_shoot,1,0);
			instance_create_depth(x,y,1,o_Bullet);
			ammo-=1;
		}
}
else if (ammo==0)
	{
		canshoot=false;
		reload=true;//bilo
		global.canmove=false;//bilo
		if keyboard_check_direct(ord("S"))
		{
			canshoot = false;
			audio_play_sound(snd_reload,1,0);
			alarm[2]=240;
			ammo=max_ammo;
		}
		
	}