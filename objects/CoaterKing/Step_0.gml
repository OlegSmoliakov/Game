/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if room=MainMenu effect_create_above(ef_explosion,x,y-300,2,c_orange);
if keyboard_check(vk_right) or  keyboard_check(ord("D"))
{
	x+=3;
}
if keyboard_check(vk_left) or  keyboard_check(ord("A"))
{
	x-=3;
}