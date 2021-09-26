function PlayerStateFree() {
	get_input()

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

	cooldown = 120

	if global.life < 1{
		global.score = 0;
		room_goto(global.respawn[2])
		x = global.respawn[0];
		y = global.respawn[1];
		global.life = 5;
	}

}