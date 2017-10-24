var mov = obj_wall

var hspd = -2
var not_wall = !place_meeting(x + (hspd * move), y, mov)

if (not_wall) {
	x+=hspd * move
}
else {
	//state = scr_move_left
	move *= -1
}