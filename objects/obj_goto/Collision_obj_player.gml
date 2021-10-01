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

other.x = 64

global.respawn[1] = y;