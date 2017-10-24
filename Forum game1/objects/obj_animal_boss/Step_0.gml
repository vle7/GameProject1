var mov = obj_solid
var mow = obj_breakable

var hspd = -2
var not_wall = !place_meeting(x + hspd, y, mov)

if (no_wall) {
	x+=hspd
}
else {
	state = scr_move_left
}