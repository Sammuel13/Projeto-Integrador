instance_destroy(obj_player)


if (room == room3){
	global.respawn = [96,960,room4]
	global.room_atual = room4
	room_goto(loading3)
}

if (room == room1){
	global.respawn = [96,768,room3]
	global.room_atual = room3
	room_goto(loading2)
}

if (room == room0){
	global.respawn = [128,256,room1]
	global.room_atual = room1
	room_goto(loading)
}



//other.x = 64

//if other.y > 1152 { other.y = 800 }