function QueenPaternBee(){
	if life > 0 {
		state = QueenPatern.LR
	}
	
	else {
		room_goto(epilogue)
		//instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_goto)
	}
	
}