if bomb_cooldown != 0 {
		
	show_debug_message(bomb_cooldown)
	bomb_cooldown -= 1
}

if place_meeting(x + hspeed, y, obj_ground){
	
	while !place_meeting(x + sign(hspeed), y, obj_ground){
		x += sign(hspeed)	
	}
		
	hspeed *= -bounce
		
}
	
if place_meeting(x, y + vspeed, obj_ground){
	
	while (!place_meeting(x, y + sign(vspeed), obj_ground)){
		y = y + sign(vspeed)
	}
	 
	if vspeed > 1 { vspeed *= -bounce }
	else { vspeed = gravity * -1 }

	if hspeed > 1 { hspeed *= 0.5 }
	else { hspeed = 0 }
	
}