function PlayerStateHoming(){
	
	hspd = 0
	vspd -= global.grv
	
	if instance_exists(obj_bee) {
		nearest = instance_nearest(x, y, obj_bee)
	}

	//if distance_to_point(nearest.x, nearest.y) < 300 {
	
	if instance_exists(obj_bee) {
		xhoming = nearest.x
		yhoming = nearest.y
		//yhoming = - (xhoming * (y - nearest.y) - x * nearest.y + nearest.x * y) / - (nearest.x - x)
		
		move_towards_point(nearest.x, nearest.y, spd * 3)
		
		show_debug_message("hello")
		show_debug_message(xhoming)
		show_debug_message(yhoming)
		
	} else { x++; }
	//}
	

	if point_distance(x,y,nearest.x,nearest.y) <= spd * 3 {
		spd = 0
		state = PlayerState.FREE
	}
	
}