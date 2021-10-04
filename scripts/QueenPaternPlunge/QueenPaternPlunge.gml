function QueenPaternPlunge(){
	hspeed = 0
	alarm[4]-- // tempo mirando
	alarm[5]-- // tempo pra dar o plunge
	
	if plunges > 0 && sprite_index = spr_boss_tp && image_index > image_number - 1 {
		plunges--
		sprite_index = spr_lanca
		alarm[4] = room_speed * 3
		alarm[5] = room_speed * 3.4
	}
	
	if alarm[4] > 0 {
		
		x = obj_player.x
		y = -224
		with obj_danger {x = obj_queen.x; y = 964; sprite_index = spr_point}
	}
	
	if y < 864 && alarm[5] <= 0 {
		hit = 1
		vspeed = 64
		alarm[6] = room_speed / 2
		alarm[7] = room_speed * 2
		with obj_danger {x = obj_queen.x; y = 964; sprite_index = spr_danger}
	}
	
	if y >= 864 {
		with obj_danger {x = obj_queen.x; y = -100}
		vspeed = 0
		alarm[6]--
		alarm[7]-- // tempo para se dar o golpe
		if alarm[6] <= 0 {
			hit = 2
			if sprite_index == spr_lanca {sprite_index = spr_plunge_wait} 
		}
		
		if alarm[7] <= 0 {
			if sprite_index == spr_queen_hit && image_index > image_number - 1 {
				sprite_index = spr_plunge_wait
			}
			if sprite_index == spr_plunge_wait {
				sprite_index = spr_boss_tp
			}
			if plunges == 0 && sprite_index = spr_boss_tp && image_index > image_number - 1 {
				obj_cannon.alarm[4] = room_speed
				state = QueenPatern.CANNON
			}
		}
	}
}