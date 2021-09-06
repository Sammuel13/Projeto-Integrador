function BeeStateChase() {
	script_execute(get_input)

#region movement

	vspd = vspd

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

#endregion

#region animation

	//sprite_index = spr_bee_walking

	if (hspd != 0) {image_xscale = sign(hspd)}

#endregion

	vir = sign(obj_player.x - x)
	hspd = vir * 2

	if distance_to_object(obj_player) < 32{
	
		state = BeeState.ATTACK

	}

	if distance_to_object(obj_player) >= distance{

		state = BeeState.IDLE

	}


}
