
if(state == 0)
{
	if (shoot == 3){
		show_debug_message("OVERHEATING")
		alarm_set(0, -1)
		shoot = 0
		rboss_weak = true
		alarm_set(1,120)
	}
	
	}