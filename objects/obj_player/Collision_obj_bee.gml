if state == PlayerState.HOMING {
	instance_destroy(other)
	again = 1
	homingdis = 400
	sprite_index = spr_player_fall
}