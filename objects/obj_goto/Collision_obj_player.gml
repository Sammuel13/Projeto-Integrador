if (room == room0){
	room_goto(room1)
	global.respawn[2] = room1
}
if (room == room1){
	room_goto(room2)
	global.respawn[2] = room2
}
if (room == room2){
	room_goto(room3)
	global.respawn[2] = room3
}
if (room == room3){
	room_goto(room4)
	global.respawn[2] = room4
}

other.x = 64

if other.y > 1152 { other.y = 800 }

global.respawn[1] = y;