function QueenPaternLR(){
	
	if sprite_index == spr_boss_tp {
		if image_index > image_number - 1 {
			sprite_index = spr_boss_tp2
		}
		image_xscale = -1
		x = 1728
		y = 512
		alarm[4] = room_speed * 2
		alarm[5] = room_speed * 3
		alarm[6] = room_speed * 4
		alarm[7] = room_speed * 5
		alarm[8] = room_speed * 6
		alarm[9] = room_speed * 7
	}
	
	if sprite_index == spr_boss_tp2 && image_index > image_number - 1 {sprite_index = spr_queen_idle}
	
	hit = 1
	
	alarm[4]--
	alarm[5]--
	alarm[6]--
	alarm[7]--
	alarm[8]--
	alarm[9]--
	
	xini = -150
	xend = 2198

	if alarm[4] <= 0 && alarm[5] > 0 {
		move_towards_point(xend, y, 64)
		if x >= xend { y = 864 }
	}
	
	if alarm[5] <= 0 && alarm[6] > 0 {
		sprite_index = spr_lanca
		image_angle = 270
		move_towards_point(xini, y, 64)
		if x <= xini { y = 608 }
	}
	
	if alarm[6] <= 0 && alarm[7] > 0 {
		sprite_index = spr_lanca
		image_angle = 90
		move_towards_point(xend, y, 64)
		if x >= xend { y = 352 }
	}
	
	if alarm[7] <= 0 && alarm[8] > 0 {
		sprite_index = spr_lanca
		image_angle = 270
		move_towards_point(xini, y, 64)
		if x <= xini { y = 96 }
	}
	
	if  alarm[8] <= 0 && alarm[9] > 0 {
		sprite_index = spr_lanca
		image_angle = 90
		move_towards_point(xend, y, 64)
		if x >= xend { y = -160 }
	}
	
	if  alarm[9] < -150 {
		image_angle = 0
		alarm[4] = room_speed * 3
		alarm[5] = room_speed * 3.4
		plunges = 3
		sprite_index = spr_boss_tp
		state = QueenPatern.PLUNGE
	}

}