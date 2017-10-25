if (!boss_inv){
	if(boss_weak){
		h -= 25
	}else
	{
		h -= 15
	}
	boss_inv = true
	alarm_set(0,30)
}


if (h <= 0)
{
//	instance_destroy(self)
	with(obj_player){
		health = 100
	}
	room_goto_next()
}