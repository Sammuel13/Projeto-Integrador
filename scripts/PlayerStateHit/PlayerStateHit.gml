function PlayerStateHit() {
#region movement

	var move = k_right - k_left

	vspd = vspd + global.grv

	if place_meeting(x + hspd, y, obj_ground){
		while (!place_meeting(x + sign(hspd), y, obj_ground)){
			x = x + sign(hspd)
		}
		hspd = 0
	}
	x = x + hspd

	if place_meeting(x, y + vspd, obj_ground){
		while (!place_meeting(x, y + sign(vspd), obj_ground)){
			y = y + sign(vspd)
		}
		vspd = 0
	}
	y = y + vspd

	if place_meeting(x, y + 1, obj_ground) and k_jump{
		vspd -= jump
	}

#endregion

	if cooldown > 60 {
		sprite_index = spr_player_hit
		vspd -= 0.2
	}

	if cooldown == 120 {
		hspd = hspd * -0.5
		vspd = -6
		global.life--
	}

	if cooldown <= 60{
		script_execute(get_input)
	
		hspd = move * spd
	
	#region shoot

		var flipped = direction
		var gun_x = x + 4 * flipped
		var _xx = x + lengthdir_x(20, image_angle)
		var y_offset = lengthdir_y(-20, image_angle)

		if k_shoot{
			with (instance_create_layer(_xx, y + 10, "Shoot", obj_shoot)){
				speed = 20
				direction = -90 + 90 * other.image_xscale
				image_angle = direction
		
			}
		}

	#endregion

	#region animation

		if (hspd != 0) {image_xscale = sign(hspd)}

		if !place_meeting(x, y + 1, obj_ground){
			if sign(vspd) < 0{
				sprite_index = spr_player_jump
			}
			else {
				sprite_index = spr_player_fall
			}
		}
		else{
			if hspd != 0 and place_meeting(x, y + 1, obj_ground){
				sprite_index = spr_player_running
			}
		}

		if hspd = 0 and place_meeting(x, y + 1, obj_ground){
				sprite_index = spr_player_idle
		}

		if hspd != 0 and place_meeting(x, y + 1, obj_ground){
				sprite_index = spr_player_running
		}
		
	#endregion

		if cooldown <= 60 and cooldown >= 50 or cooldown <= 40 and cooldown >= 30 or cooldown <= 20 and cooldown >=10 {image_alpha = 0.5}
		else {image_alpha = 1}
	}

	if cooldown <= 0 {state = PlayerState.FREE}

	show_debug_message(hspd)

	cooldown--


}
