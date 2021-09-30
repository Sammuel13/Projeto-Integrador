function PlayerStateHit() {
	
#region movement

	var move = k_right - k_left

	hspd = move * spd

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
	
	aim()
	
	if place_meeting(x, y + 1, obj_ground){
		air_jump = 1
		if k_jump{
			vspd = -jump
		}
	} else {
		if k_jump_air{
			if isnearest = 0 { vspd = -jump } else {
				xnearest = nearest.x
				ynearest = nearest.y
				xinicial = x
				yinicial = y
				alarm[0] = room_speed * 0.5
				state = PlayerState.HOMING
				show_debug_message("done")
			}
		}
	}
	
#endregion

	if cooldown > 60 {
		sprite_index = spr_hit
		vspd -= 0.4
	}

	if cooldown == 120 {
		hspd *= -15
		vspd = -jump
		if global.life == 1 {cooldown =0}
		global.life--
		
		
	}

	if cooldown <= 90{
		script_execute(get_input)
	
		hspd = move * spd

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

		if cooldown <= 80 and cooldown >= 70 or cooldown <= 60 and cooldown >= 50 or cooldown <= 40 and cooldown >= 30 or cooldown <= 20 and cooldown >=10 {image_alpha = 0.5}
		else {image_alpha = 1}
	}

	if cooldown <= 0 {state = PlayerState.FREE}

	cooldown--


}
