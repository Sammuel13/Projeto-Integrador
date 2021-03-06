function find_nearest(){
	if instance_exists(obj_bee) {nearestBee = instance_nearest(x, y, obj_bee)}
	if instance_exists(obj_ant) {nearestAnt = instance_nearest(x, y, obj_ant)}
	if instance_exists(obj_ant) {nearestLeaf = instance_nearest(x, y, obj_leaf)}
	
	if instance_exists(obj_bee) && instance_exists(obj_ant) && instance_exists(obj_leaf){
		if point_distance(xinicial,yinicial,nearestAnt.x,nearestAnt.y) < point_distance(xinicial,yinicial,nearestBee.x,nearestBee.y){
			if point_distance(xinicial,yinicial,nearestAnt.x,nearestAnt.y) < point_distance(xinicial,yinicial,nearestLeaf.x,nearestLeaf.y){
				nearest = instance_nearest(x, y, obj_ant)
			} else { nearest = instance_nearest(x, y, obj_leaf) }
		} else {
			if point_distance(xinicial,yinicial,nearestBee.x,nearestBee.y) < point_distance(xinicial,yinicial,nearestLeaf.x,nearestLeaf.y){
				nearest = instance_nearest(x, y, obj_bee)
			} else { nearest = instance_nearest(x, y, obj_leaf) }
		}
	} else {
		if instance_exists(obj_bee) && instance_exists(obj_ant) {
			if point_distance(xinicial,yinicial,nearestAnt.x,nearestAnt.y) < point_distance(xinicial,yinicial,nearestBee.x,nearestBee.y){
				nearest = instance_nearest(x, y, obj_ant)
			} else {
				nearest = instance_nearest(x, y, obj_bee)
			}
		} else {
			if instance_exists(obj_bee) && instance_exists(obj_leaf) {
				if point_distance(xinicial,yinicial,nearestLeaf.x,nearestLeaf.y) < point_distance(xinicial,yinicial,nearestBee.x,nearestBee.y){
					nearest = instance_nearest(x, y, obj_leaf)
				} else {
					nearest = instance_nearest(x, y, obj_bee)
				}
			} else {
				if instance_exists(obj_ant) && instance_exists(obj_leaf) {
					if point_distance(xinicial,yinicial,nearestLeaf.x,nearestLeaf.y) < point_distance(xinicial,yinicial,nearestAnt.x,nearestAnt.y){
						nearest = instance_nearest(x, y, obj_leaf)
					} else {
						nearest = instance_nearest(x, y, obj_ant)
					}
				} else {
					if instance_exists(obj_bee){ nearest = instance_nearest(x, y, obj_bee)
					} else {
						if instance_exists(obj_ant) { nearest = instance_nearest(x, y, obj_ant)
						} else {
							if instance_exists(obj_leaf) { nearest = instance_nearest(x, y, obj_leaf)
							} else { if air_jump == 1 { vspd -= jump; air_jump-- }; state = PlayerState.FREE }
						}
					}
				}
			}
		}
	}
}