if not instance_exists(target_) exit;
x = lerp(x, target_ . x, 0.1)
y = lerp(y, target_ . y + height_ / 4, 0.1)
camera_set_view_pos(view_camera[0], x - width_ / 2, y - height_ / 2)

if (layer_exists("Backgrounds_1")) {

	layer_x("Backgrounds_1", - x/4)
	//layer_y("Backgrounds_1", y - height_ / 2)
	
}

if (layer_exists("Backgrounds_2")) {

	layer_x("Backgrounds_2", - x/6)
	//layer_y("Backgrounds_2", y - height_ / 2)
	
}

if (layer_exists("Backgrounds_3")) {

	layer_x("Backgrounds_3", - x/8)
	//layer_y("Backgrounds_3", y - height_ / 2)
	
}