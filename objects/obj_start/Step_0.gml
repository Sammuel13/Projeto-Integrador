image_blend = c_orange

var mouse_over = position_meeting(mouse_x, mouse_y, self)
var click = mouse_check_button(mb_left)

if (mouse_over == true)
{
	image_blend = c_yellow
}

if (mouse_over == true && click == true) 
{
	room_goto(room3)
}