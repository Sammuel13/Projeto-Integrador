function QueenPaternPlunge(){
	hspeed = 0
	alarm[4]-- // tempo mirando
	alarm[5]-- // tempo pra dar o plunge
	
	if alarm[4] > 0 {
		x = obj_player.x
		y = -224
	}
	
	if y < 864 && alarm[5] <= 0 {
		vspeed = 64
		alarm[6] = room_speed / 2
		alarm[7] = room_speed * 4
	}
	
	if y >= 864 {
		vspeed = 0
		alarm[6]--
		alarm[7]-- // tempo para se dar o golpe
		if alarm[6] <= 0 {
			if sprite_index == spr_lanca {sprite_index = spr_plunge} 
			if sprite_index == spr_plunge && image_index == 2 {
				sprite_index = spr_plunge_wait
			}
		}
		
		if alarm[7] <= 0 {
		
		
			state = QueenPatern.CANNON
		}
	}
}