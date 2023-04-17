/// @description 
if equiped //and global.canmove
{
	if keyboard_check(vk_right)
	{
		x=o_CameraMan.x; image_xscale=1;global.GunReverse=false;
	}
	if keyboard_check(vk_left)
	{
		x=o_CameraMan.x-1; image_xscale=-1; global.GunReverse=true;
	}
}
global.Gunx=x;