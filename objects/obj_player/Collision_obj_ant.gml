if state == PlayerState.HOMING {
	instance_destroy(other)
	again = 1
	homingdis = 300
	sprite_index = spr_player_fall
}