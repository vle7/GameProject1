show_debug_message(h)
if(state == 1)
{
	var hit = collision_rectangle(((sprite_width/2)-20)*move+ x,y + (sprite_height/2),x+ move*((sprite_width/2) + 30),y- (sprite_height/2),obj_player,false,false);

	if(hit and obj_player.invincible = 0)
	{
		obj_player.invincible = 1
		
		
		with(obj_player) {
			alarm_set(0, 30)
			health += -15;
		}
	}
	//check for state transitions
	

}
else if(state == 0)
{
	
	hsp = move * walkspeed;

//H collision
	if (place_meeting(x+hsp, y, obj_wall)){
		while(!place_meeting(x+sign(hsp), y, obj_wall)){
			x += sign(hsp)
		}
		hsp = 0;
	}
	x += hsp

//V collision
	if (place_meeting(x, y+vsp, obj_wall)){
		while(!place_meeting(x, y+sign(vsp), obj_wall)){
			y += sign(vsp)
		}
		vsp = 0;
	}
	y += vsp

//apply gravity
	vsp = vsp + grv;
	if(x > 500)
	{
		move = -1
	}
	if(x < 100)
	{
		move = 1
	}
	//check for state transitions
	if(collision_rectangle((((sprite_width/2)-20)*move)+ x,y + (sprite_height/2),x+ move*((sprite_width/2) + 50),y- (sprite_height/2),obj_player,false,false) and can_attack)
	{
		state = 1
		sprite_index = spr_doll_attack
		can_attack = false
		alarm_set(1, 120)
	}
	/*
	if (h < 33){
		flag = true
	}
	
	if(flag and h < 66){
		state = 3
		flag = false
		minion = instance_create_layer(10,20,"Instances",obj_doll1)
	}
	*/
		
}
/*
SCRAPPED
else if (state == 3){
	dboss_inv = true
	
	//check for state changes
	if(!instance_exists(minion)){
		state = 0
		dboss_inv = false
	
	}
	//set state back to 0
	//set dboss_inv back to false
	
}
*/