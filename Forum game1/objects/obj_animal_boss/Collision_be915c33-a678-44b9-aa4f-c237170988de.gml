if(!(aboss_inv))
{
	if(aboss_weak)
	{
		aboss_weak = false;
	
		ah += -25;
	}

	else
	{
		ah += -15;
	}

	if(ah <= 0)
	{
		instance_destroy();
	}

	st = state.flee;

	aboss_inv = true;

	alarm_set(1, 30);
	if(ah <= 0){
		room_goto_next()
	}
}