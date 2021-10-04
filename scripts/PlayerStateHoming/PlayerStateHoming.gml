function PlayerStateHoming(){
	
	if sprite_index == spr_player_homing && image_index > image_number - 1 {change = 1}
	if change == 2 && sprite_index != spr_player_fall {sprite_index = spr_player_homing1}
	if change == 3 && sprite_index != spr_player_fall {sprite_index = spr_player_homing2}
	
	aim()
	if instance_exists(obj_queen) {aim_queen()}
	
	if point_distance(x,y,xnearest,ynearest) < homingdis {
		homing = 1
	} else {
		homing = 0
	}
	
	if homing == 1 && again == 1 && alarm[0] == 0{
		find_nearest2()
		if isnearest == 1 {
			if point_distance(x,y,nearest.x,nearest.y) < homingdis {
				xnearest = nearest.x
				ynearest = nearest.y
				xinicial = x
				yinicial = y
				alarm[0] = room_speed * 0.75
			}
		}
		again += 1
	}

	
	if homing == 1 {

		if alarm[0] <= 0 {
			homingdis = 250
			hspd = 0
			state = PlayerState.FREE
			
		} else {
			
			air_jump--
			xhoming = 0
			distanciaApos = 5
			deltax = (xnearest - xinicial)
			deltay = (ynearest - yinicial)
			xhoming = xnearest + distanciaApos * deltax
			yhoming = ynearest + distanciaApos * deltay
			
			hspd = 0; vspd = 0
			
			change = 2
			velx = spd * 3
			vely = velx * abs(deltay/deltax)
			
			if vely > 15 {
				change = 3
				vely = spd * 3
				velx = vely * abs(deltax/deltay)
			}
			
			dirx = (x < xhoming) ? 1 : -1
			diry = (y < yhoming) ? 1 : -1
			newposx = x + velx * dirx
			newposy = y + vely * diry
			if (!place_meeting(newposx, y, obj_ground)) {
				x = newposx
			}
			if (!place_meeting(x, newposy, obj_ground)) {
				y = newposy
			}
			
		}
	
	} else {
		if air_jump == 1 {
			vspd = -jump
			air_jump--
			state = PlayerState.FREE
			again = 0
			homingdis = 250
		} else {
			hspd = 0
			state = PlayerState.FREE
			again = 0
			homingdis = 250
		}
	}
	alarm[0]--
}