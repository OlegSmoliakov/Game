alarm_set(1,240);
speed = 4;
if !global.GunReverse 
{
	direction = o_Gun1.image_angle; image_xscale=1;
}
else
{
	direction = o_Gun1.image_angle-180;image_xscale=-1;x-=30;
}