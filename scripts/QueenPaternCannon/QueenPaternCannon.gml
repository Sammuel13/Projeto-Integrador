function QueenPaternCannon(){
	if sprite_index == spr_boss_tp && image_index > image_number - 1 {
		sprite_index = spr_boss_tp2
		image_xscale = -1
		x = 1728
		y = 512
	}
	if sprite_index == spr_boss_tp2 && image_index > image_number - 1 {sprite_index = spr_queen_idle; hit = 0}
	
	with obj_cannon{
		image_xscale = -1
		if x > 2048 {x--}
		if x <= 2048 {
			alarm[4]--
			spacing = 30 * 8
			if sprite_index == spr_cannon_charge {sprite_index = spr_cannon_shoot}
			if alarm[4] == 56 {instance_create_layer(x - 500 - spacing, y, "Shoot", obj_blast_square)}
			if alarm[4] == 48 {instance_create_layer(x - 500 - spacing*2, y, "Shoot", obj_blast_square)}
			if alarm[4] == 40 {instance_create_layer(x - 500 - spacing*3, y, "Shoot", obj_blast_square)}
			if alarm[4] == 32 {instance_create_layer(x - 500 - spacing*4, y, "Shoot", obj_blast_square)}
			if alarm[4] == 24 {instance_create_layer(x - 500 - spacing*5, y, "Shoot", obj_blast_square)}
			if alarm[4] == 16 {instance_create_layer(x - 500 - spacing*6, y, "Shoot", obj_blast_square)}
			if alarm[4] == 8  {instance_create_layer(x - 500 - spacing*7, y, "Shoot", obj_blast_square)}
			if alarm[4] == 0  {instance_create_layer(x - 500 - spacing*8, y, "Shoot", obj_blast_square)}
			if alarm[4] <= -16 {
				instance_destroy(obj_blast_square)
				
				if sprite_index == spr_cannon_shoot && image_index > image_number - 1 {
					sprite_index = spr_cannon_break
				}
				if sprite_index == spr_cannon_break{
					fii = floor(image_index)
					if fii == 0  or fii == 4 or fii == 8{
						with (instance_create_layer(x, y, "Shoot", obj_cannon_pieces)){
							speed = 32
							direction = random_range(90, 180)
						}
					}
				}
				
				
				if sprite_index == spr_cannon_break && image_index > image_number - 1 {
					sprite_index = spr_cannon_breaked
				}
			}
		}
	}
	if obj_cannon.sprite_index == spr_cannon_break or obj_cannon.sprite_index == spr_cannon_breaked {
		sprite_index = spr_queen_hit
		if sprite_index == spr_queen_hit && image_index > image_number - 1 {
			with obj_cannon{
				x = 2304
				y = 792
				sprite_index = spr_cannon_charge
			}
			life--
			state = QueenPatern.BEE
			sprite_index = spr_boss_tp
		}
	}
}