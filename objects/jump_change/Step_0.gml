/*image_blend = c_red

var mouse_over_jump = position_meeting(mouse_x, mouse_y, self)
var click_jump = mouse_check_button_pressed(mb_left) 

if (mouse_over_jump == true){
	image_blend = c_yellow
}

if (mouse_over_jump == true and click_jump == true){
	k_jump = keyboard_check(vk_anykey)
}