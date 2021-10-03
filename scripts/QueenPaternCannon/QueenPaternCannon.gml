function QueenPaternCannon(){
	if sprite_index == spr_boss_tp && image_index > image_number - 1 {
		sprite_index = spr_boss_tp2
		image_xscale = -1
		x = 1728
		y = 512
	}
	if sprite_index == spr_boss_tp2 && image_index > image_number - 1 {sprite_index = spr_queen_idle}
	
	with obj_cannon{
		image_xscale = -1
		move_towards_point(2048, y, 1)
		if x <= 2050 {
			alarm[4]--
			show_debug_message(alarm[4])
			spacing = 30 * 8
			if sprite_index == spr_cannon_charge {sprite_index = spr_cannon_shoot}
			if alarm[4] == 56 {instance_create_layer(x - 500 - spacing, y, "Shoot", obj_blast_square); show_debug_message("1")}
			if alarm[4] == 48 {instance_create_layer(x - 500 - spacing*2, y, "Shoot", obj_blast_square); show_debug_message("2")}
			if alarm[4] == 40 {instance_create_layer(x - 500 - spacing*3, y, "Shoot", obj_blast_square); show_debug_message("3")}
			if alarm[4] == 32 {instance_create_layer(x - 500 - spacing*4, y, "Shoot", obj_blast_square); show_debug_message("4")}
			if alarm[4] == 24 {instance_create_layer(x - 500 - spacing*5, y, "Shoot", obj_blast_square); show_debug_message("5")}
			if alarm[4] == 16 {instance_create_layer(x - 500 - spacing*6, y, "Shoot", obj_blast_square); show_debug_message("6")}
			if alarm[4] == 8  {instance_create_layer(x - 500 - spacing*7, y, "Shoot", obj_blast_square); show_debug_message("7")}
			if alarm[4] == 0  {instance_create_layer(x - 500 - spacing*8, y, "Shoot", obj_blast_square); show_debug_message("8")}
			if alarm[4] == -32 {
				instance_destroy(obj_blast_square)
				
				if sprite_index == spr_cannon_shoot && image_index > image_number - 1 {
					sprite_index = spr_cannon_break
				}
				
				if sprite_index == spr_cannon_break{
					if image_index == 0 or image_index == 2 or image_index == 4 or image_index == 6 or image_index == 8 or image_index == 10 or image_index == 12 {
						with (instance_create_layer(x, y, "Shoot", obj_cannon_pieces)){
							speed = 32
							direction = random_range(90, 180)
						}
					}
				}
				
				if sprite_index == spr_cannon_break && image_index > image_number - 1 {
					sprite_index = spr_cannon_breaked
					move_towards_point(2304, y, 1)
					if x > 2300 {
						instance_destroy(self)
						obj_queen.state = QueenPatern.BEE
					}
				}
			}
		}
	}
}