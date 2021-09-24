function PlayerStateHoming(){
	
	sprite_index = spr_player_homing
	
	/*
	aim()
		if point_distance(x,y,nearest.x,nearest.y) < 400 {
			xnearest = nearest.x
			ynearest = nearest.y
			xinicial = x
			yinicial = y
			alarm[0] = room_speed * 0.5
		} else {
	
	*/
	
	if point_distance(x,y,xnearest,ynearest) < 250 {

		if alarm[0] <= 0 {
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
			
			velx = spd * 3
			vely = velx * abs(deltay/deltax)
			
			if vely > 15 {
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
		} else {
			hspd = 0
			state = PlayerState.FREE
		}
	}
	alarm[0]--
}