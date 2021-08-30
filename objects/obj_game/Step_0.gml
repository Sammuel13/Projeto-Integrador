script_execute(get_input);

if key_pause{
	if (room != pause){
		if instance_exists(obj_player){
			obj_player.persistent = false;
			isPause = true;
			instance_activate_all();
		}
		room_previous(room)
		room_goto(pause)
	} else {
		room_goto_previous();
		instance_deactivate_all(true);
	}
}
