if (!dboss_inv){
	h -= 15
	dboss_inv = true
	alarm_set(0,30)
}


if (h <= 0)
{
	instance_destroy(obj_doll_boss)
}