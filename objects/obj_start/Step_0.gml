image_blend = c_gray

var mouse_over = position_meeting(mouse_x, mouse_y, self)
var click = mouse_check_button(mb_left)

if (mouse_over == true)
{
	image_blend = c_black
}

if (mouse_over == true && click == true) 
{
	room_restart()
	//room_goto(global.room_atual)
	room_goto(room4)
}