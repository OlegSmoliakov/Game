///@description needs reloading sprite
//sprite reload
if !canshoot
{
	if keyboard_check_direct(ord("S"))
		{
			canshoot = false;
			alarm[2] = 20;
			audio_play_sound(snd_reload,1,0);
			instance_create_depth(x,y,1,o_Bullet);
			ammo-=1;
		}
}
global.canmove=true;
ammo=30;