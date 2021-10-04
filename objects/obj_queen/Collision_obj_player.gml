if hit == 1 {
	obj_player.state = PlayerState.HIT
	hit = 0
}

if hit == 2 {
	if obj_player.state = PlayerState.HOMING && sprite_index != spr_queen_hit {
		life--
		sprite_index = spr_queen_hit
		hit = 0
	}
}