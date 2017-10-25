if (!boss_inv){
	h -= 15
	boss_inv = true
	alarm_set(0,30)
}


if (h <= 0)
{
//	instance_destroy(self)
	room_goto_next()
}