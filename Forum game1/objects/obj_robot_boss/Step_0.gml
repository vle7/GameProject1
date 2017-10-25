
if(state == 0)
{
	if (shoot == 3){
		show_debug_message("OVERHEATING")
		alarm_set(2, -1)
		shoot = 0
		boss_weak = true
		alarm_set(1,120)
	}
	
	}