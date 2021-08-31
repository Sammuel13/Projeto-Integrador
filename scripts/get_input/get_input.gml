function get_input() {
	
#region controlls

	k_jump = keyboard_check(vk_space)
	
	k_jump_air = keyboard_check_pressed(vk_space)

	k_left = keyboard_check(vk_left)

	k_right = keyboard_check(vk_right)

	k_bomb = keyboard_check_pressed(ord("X"))
	
	k_run = keyboard_check(ord("Z"))
	
	key_pause = keyboard_check_pressed(vk_escape)

#endregion

}
