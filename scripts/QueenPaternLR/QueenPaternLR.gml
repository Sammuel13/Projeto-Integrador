function QueenPaternLR(){
	alarm[4]--
	alarm[5]--
	alarm[6]--
	alarm[7]--
	alarm[8]--
	alarm[9]--
	
	xini = -150
	xend = 2198

	if sprite_index == spr_boss_tp2 && image_index > image_number - 1 {sprite_index = spr_queen_idle}


	if alarm[4] <= 0 && alarm[5] > 0 {
		move_towards_point(xend, y, 64)
		if x >= xend { y = 864 }
	}
	
	if alarm[5] <= 0 && alarm[6] > 0 {
		move_towards_point(xini, y, 64)
		if x <= xini { y = 608 }
	}
	
	if alarm[6] <= 0 && alarm[7] > 0 {
		move_towards_point(xend, y, 64)
		if x >= xend { y = 352 }
	}
	
	if alarm[7] <= 0 && alarm[8] > 0 {
		move_towards_point(xini, y, 64)
		if x <= xini { y = 96 }
	}
	
	if  alarm[8] <= 0 && alarm[9] > 0 {
		move_towards_point(xend, y, 64)
		if x >= xend { y = -160 }
	}
	
	if  alarm[9] <= 0 {
		show_debug_message("out")
		
		alarm[4] = room_speed * 3
		alarm[5] = room_speed * 5
		
		sprite_index = spr_lanca
		state = QueenPatern.PLUNGE
	}

}