function BeeStateIdle(){
	script_execute(get_input)

	#region movement

		vspd = vspd

		if place_meeting(x + hspd, y, obj_ground){
			while (!place_meeting(x + sign(hspd), y, obj_ground)){
				x = x + sign(hspd)
			}
			hspd = hspd * -1
		}
		x = x + hspd

		if place_meeting(x, y + vspd, obj_ground){
			while (!place_meeting(x, y + sign(vspd), obj_ground)){
				y = y + sign(vspd)
			}
			vspd = 0
		}
		y = y + vspd
	
	
	#endregion

	if (hspd != 0) {image_xscale = -sign(hspd)}
	
}