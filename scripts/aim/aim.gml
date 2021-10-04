function aim(){
	find_nearest2()
	if !(isnearest == 1 && point_distance(x,y,nearest.x,nearest.y) < homingdis) {
		with(obj_aim) {
			size = 100
			image_xscale = size/100
			image_yscale = size/100
			x = -100
			y = -100
		}	

	} else {	
		
		with(obj_aim) {
			x = obj_player.nearest.x
			y = obj_player.nearest.y
		
			if size >= 36 {
				size -= 3
				image_xscale = size/100
				image_yscale = size/100
			}
		}
	}
}