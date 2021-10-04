if room == room0 or room == room1 or room == room3 or room == room4 {
	global.room_atual = room
}
	
if (room == prologue) {
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_index(back_id) > 3 {room_goto(room0)}
}
if (room == epilogue) {
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_index(back_id) > 1 {room_goto(menu)}
}
if (room == loading) {
	alarm[0]--
	if alarm[0] <= 0 {
		room_goto(room1)
		alarm[0] = room_speed * 3.3
	}
}

if (room == loading2) {
	alarm[0]--
	if alarm[0] <= 0 {
		room_goto(room3)
		alarm[0] = room_speed * 3.3
	}
}

if (room == loading3) {
	alarm[0]--
	if alarm[0] <= 0 {
		room_goto(room4)
		alarm[0] = room_speed * 3.3
	}
}