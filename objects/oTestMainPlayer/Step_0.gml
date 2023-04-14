/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor


up = keyboard_check(ord("W")) or keyboard_check(vk_up);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);
right = keyboard_check(ord("D")) or keyboard_check(vk_right);
jump = keyboard_check(vk_space);

if not dead {
	if (right - left != 0){
		
		x_spd = x_max_spd * (right - left);
		x_cur_spd = x_spd - (0.9 * (x_spd - x_cur_spd));
		hspeed = x_cur_spd;
	
		sprite_index = DummyRun;
	
		if (x_cur_spd >= 0){
			image_xscale = 1 * sprite_size;
		} else {
			image_xscale = -1 * sprite_size;
		}
	
	}else{
		if (x_cur_spd >= x_spd - (0.9 * x_spd)) or (x_cur_spd < x_spd - (0.9 * x_spd)){
			x_cur_spd = 0.9 * x_cur_spd;
		}else{
			x_cur_spd = 0;	
			sprite_index = DummyStay;
		}
		hspeed = x_cur_spd;
		sprite_index = DummyStay;
	}
}
