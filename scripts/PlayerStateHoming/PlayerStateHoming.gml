function PlayerStateHoming(){
	
	alarm[0]--;
	
	sprite_index = spr_player_homing
	
	if point_distance(x,y,xnearest,ynearest) < 250 {

		if alarm[0] <= 0 {
			aim()
			if point_distance(x,y,nearest.x,nearest.y) < 350 {
				xnearest = nearest.x
				ynearest = nearest.y
				alarm[0] = room_speed * 0.5
			} else {
				spd = 0
				state = PlayerState.FREE
			}
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
	
	} else { if air_jump == 1 { vspd = -jump; air_jump-- }; state = PlayerState.FREE }

}