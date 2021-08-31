function bomb(){

	boom = 1 //o valor está como 1 até o bug ser resolvido
	
	with(obj_bomb) {
		if obj_bomb.bomb_cooldown == 0 {
			boom = 1
			obj_bomb.bomb_cooldown = 60 * 5
		}
		show_debug_message(obj_bomb.bomb_cooldown)
	}
	
	var _xx = x + lengthdir_x(0, image_angle)
	var shoot_angle = 45 * other.image_xscale
	
	if boom == 1 {
		with (instance_create_layer(_xx, y - 10, "Shoot", obj_bomb)){
			speed = 9
			direction = -90 + 90 * other.image_xscale
			image_xscale = other.image_xscale
			direction += shoot_angle
		}
	}
}