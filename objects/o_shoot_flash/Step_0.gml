/// @description

if !global.GunReverse 
{
	x=global.Gunx+15;direction = o_Gun1.image_angle; image_xscale=1;
}
else
{
	x=global.Gunx-15;direction = o_Gun1.image_angle-180;image_xscale=-1;
}