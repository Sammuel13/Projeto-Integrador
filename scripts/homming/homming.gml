function homming(){

	xplayer = x
	yplayer = y

	enemy = instance_nearest(x, y, obj_ant)
	xenemy = enemy.x
	yenemy = enemy.y

	if distance_to_point(xenemy, yenemy) < 300 {

		xhomming = xenemy + 300
		yhomming = - (yplayer - yenemy) * xhomming - xplayer * yenemy + xenemy * yplayer / - (xenemy - xplayer)

		while x < xhomming { 
	
			vir = sign(obj_player.x - xenemy)
			hspd = vir * spd
	
		}
		
		while y < yhomming {
			
			vir = sign(obj_player.y - yenemy)
			vspd = vir * spd
		
		}
	
	}

}