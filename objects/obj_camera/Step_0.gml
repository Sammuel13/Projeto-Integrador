if not instance_exists(target_) exit;
x = lerp(x, target_ . x, 0.1)
y = lerp(y, target_ . y, 1)

camerax = x - width_ / 2
cameray = y - height_ / 2

cylayer = cameray
cxlayer = camerax
if cylayer < 0 { cylayer = 0 }
if cxlayer < 0 { cxlayer = 0 }
if cylayer > room_height - 576 { cylayer = room_height - 576 }
if cxlayer > room_width - 1106 { cxlayer = room_width - 1106 }

camera_set_view_pos(view_camera[0], camerax, cameray)

if (layer_exists("Backgrounds_1")) {

	layer_x("Backgrounds_1", 0)
	layer_y("Backgrounds_1", cylayer)

}

if (layer_exists("Backgrounds_2")) {

	layer_x("Backgrounds_2", - x/6)
	layer_y("Backgrounds_2", cylayer)
	
}

if (layer_exists("Backgrounds_3")) {

	layer_x("Backgrounds_3", - x/8)
	layer_y("Backgrounds_3", cylayer)
	
}

if (layer_exists("Backgrounds_4")) {

	layer_x("Backgrounds_4", - x/16)
	layer_y("Backgrounds_4", cylayer )
	
}

if (layer_exists("Background_boss")) {

	layer_x("Background_boss", cxlayer )
	layer_y("Background_boss", cylayer )
	
}

