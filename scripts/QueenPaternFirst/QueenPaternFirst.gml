function QueenPaternFirst(){
	
	if y < 864 {
		vspeed = 64
		alarm[4] = room_speed / 2
	}
	
	if y >= 864 {
		vspeed = 0
		alarm[4]--
		if alarm[4] <= 0 {
			if sprite_index == spr_lanca {sprite_index = spr_plunge}
			if sprite_index == spr_plunge && image_index > image_number - 1 {
				sprite_index = spr_boss_tp
				state = QueenPatern.LR
			}
		}
	}
}