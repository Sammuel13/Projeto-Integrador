spd = 5
hspd = 0
vspd = 0
global.grv = 0.6
jump = 15
air_jump = 1
nearest = 0
cooldown = 30
global.life = 5 //por enquanto
global.score = 0

state = PlayerState.FREE

enum PlayerState{
	FREE,
	HIT,
	HOMING,
}
