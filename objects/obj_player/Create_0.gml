spd = 5
hspd = 0
vspd = 0
global.grv = 0.6
jump = 15
air_jump = 0
dbj = 0
change = 0
homing = 0
homingdis = 250
again = 0
nearest = 0
cooldown = 30
global.life = 5 //por enquanto
global.score = 0
global.respawn = [x,y,room0]

state = PlayerState.FREE

enum PlayerState{
	FREE,
	HIT,
	HOMING,
}
