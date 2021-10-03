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
			if sprite_index == spr_plunge && image_index > image_number - 1 {sprite_index = spr_boss_tp}
			if sprite_index == spr_boss_tp && image_index > image_number - 1 {
				sprite_index = spr_boss_tp2
				image_xscale = -1
				x = 1728
				y = 512
				alarm[4] = room_speed * 2
				alarm[5] = room_speed * 3
				alarm[6] = room_speed * 4
				alarm[7] = room_speed * 5
				alarm[8] = room_speed * 6
				alarm[9] = room_speed * 7
				state = QueenPatern.LR
			}
		}
	}
}