function BeeStateAttack() {
	script_execute(get_input)

#region movement

	vspd = 0

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

	hspd = 0

	if (image_index > image_number - 1){
		image_xscale = sign(- obj_bee.x + obj_player.x)
		state = BeeState.IDLE
	}

	//if (distance_to_object(obj_player) < 50){
		sprite_index = spr_bee_attack
		//mp_potential_step(obj_player.x, obj_player.y, spd, true)
	//}

}
