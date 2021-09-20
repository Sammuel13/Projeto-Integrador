function PlayerStateHoming(){
	
	hspd = 0
	vspd = 0
	//vspd -= global.grv
	
	alarm[0]--;
	
	show_debug_message(alarm[0])
	
	if instance_exists(obj_bee) {
		nearest = instance_nearest(x, y, obj_bee)
	}

	//if distance_to_point(nearest.x, nearest.y) < 300 {
	
	show_debug_message("point_distance:")
	show_debug_message(point_distance(x,y,nearest.x,nearest.y))

	if alarm[0] <= 0 {
		show_debug_message("done")
		spd = 0
		state = PlayerState.FREE
	} else {
		if instance_exists(obj_bee) {
			xhoming = 0
			distanciaApos = 5
			deltax = (nearest.x - xinicial)
			deltay = (nearest.y - yinicial)
			xhoming = nearest.x + distanciaApos * deltax
			yhoming = nearest.y + distanciaApos * deltay
			
			velx = spd * 3
			vely = velx * abs(deltay/deltax)
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
			
		} else {
			x++;
		}
	}
	
}