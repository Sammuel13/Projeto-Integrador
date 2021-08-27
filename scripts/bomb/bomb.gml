function bomb(){

		var _xx = x + lengthdir_x(0, image_angle)
		var shoot_angle = 45 * other.image_xscale

			with (instance_create_layer(_xx, y - 10, "Shoot", obj_bomb)){
			
				speed = 10
				direction = -90 + 90 * other.image_xscale
				image_xscale = other.image_xscale
				direction += shoot_angle
		}
	
}