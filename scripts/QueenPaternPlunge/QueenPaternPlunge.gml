function QueenPaternPlunge(){
	hspeed = 0
	alarm[4]-- // tempo mirando
	alarm[5]-- // tempo pra dar o plunge
	
	if alarm[4] > 0 {
		x = obj_player.x
		y = -224
	}
	
	if y < 864 && alarm[5] <= 0 {
		hit = 1
		vspeed = 64
		alarm[6] = room_speed / 2
		alarm[7] = room_speed * 4
	}
	
	if y >= 864 {
		vspeed = 0
		alarm[6]--
		alarm[7]-- // tempo para se dar o golpe
		if alarm[6] <= 0 {
			hit = 2
			if sprite_index == spr_lanca {sprite_index = spr_plunge_wait} 
		}
		
		if alarm[7] <= 0 {
			sprite_index = spr_boss_tp
			obj_cannon.alarm[4] = room_speed
			state = QueenPatern.CANNON
		}
	}
}