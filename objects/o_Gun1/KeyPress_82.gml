///@description Reload
if (!reload and ammo!=max_ammo)
{
	reload=true;
	global.canmove=false;
	canshoot = false;
	audio_play_sound(snd_reload,1,0);
	alarm[2]=240;
	ammo=max_ammo;
}