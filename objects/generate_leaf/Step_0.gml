if alarm[1] <= 0{
	instance_create_layer(x, y, "Shoot", obj_leaf)
	alarm[1] = room_speed * 3
}
alarm[1]--