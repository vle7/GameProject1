var hit = collision_rectangle(x,y,x+150,y+150,obj_player,false,false);

	if(hit and obj_player.invincible = 0)
	{
		obj_player.invincible = 1
		
		
		with(obj_player) {
		alarm_set(0, 30)
		health += -8;
		}}