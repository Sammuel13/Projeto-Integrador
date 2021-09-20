function PlayerStateHoming(){
	
	alarm[0]--;
	
	show_debug_message(alarm[0])
	
	if instance_exists(obj_bee) {nearestBee = instance_nearest(x, y, obj_bee)}
	if instance_exists(obj_ant) {nearestAnt = instance_nearest(x, y, obj_ant)}
	
	if instance_exists(obj_bee) && instance_exists(obj_ant) {
		if point_distance(xinicial,yinicial,nearestAnt.x,nearestAnt.y) < point_distance(xinicial,yinicial,nearestBee.x,nearestBee.y){
			nearest = instance_nearest(x, y, obj_ant)
			show_debug_message("formiga, mas tem abelha")
		} else {
			nearest = instance_nearest(x, y, obj_bee)
			show_debug_message("abelha, mas tem formiga")
		}
	} else {
		if instance_exists(obj_bee){
			nearest = instance_nearest(x, y, obj_bee)
			show_debug_message("abelha")
		} else {
			if instance_exists(obj_ant) {
				nearest = instance_nearest(x, y, obj_ant)
				show_debug_message("formiga")
			} else { if air_jump == 1 { vspd -= jump; air_jump-- }; state = PlayerState.FREE }
		}
	}
	
	if point_distance(x,y,nearest.x,nearest.y) < 250 && nearest != 0 {

		if alarm[0] <= 0 {
			spd = 0
			state = PlayerState.FREE
		} else {
			air_jump--
			xhoming = 0
			distanciaApos = 5
			deltax = (nearest.x - xinicial)
			deltay = (nearest.y - yinicial)
			xhoming = nearest.x + distanciaApos * deltax
			yhoming = nearest.y + distanciaApos * deltay
			
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
			
			show_debug_message(velx)
			show_debug_message(vely)

		}
	
	} else { if air_jump == 1 { vspd -= jump; air_jump-- }; state = PlayerState.FREE }

}