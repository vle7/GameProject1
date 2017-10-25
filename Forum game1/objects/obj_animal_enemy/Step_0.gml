//I intended for this enemy to be similar to the animal boss except instead it swoops at the player and passes through them
//before flying off and trying again so no need for weakness.
switch (st)
{
 case stat.idle:
 { 
	 vdir = 0
	 x += hdir * spd;
	 
	 if ((abs(obj_player.x - x) > 200) && (sign(obj_player.x - x) == -hdir)) // If further than turn_distance and facing away from player
	 {
		hdir = -hdir; // Reverse direction
	 } 

	 if (random_range(0,1) < .30){
		 st = stat.swoop;
		 hdir = sign(obj_player.x - x);
	 }
	 
	 break;
 }
 case stat.swoop:
 {
	vdir = 1; // Bat starts by going down, assuming it will generally be perched high
	if (y < obj_player.y - max_swoop) {vdir = 1;} // If bat is too high, start flying down
	if (y > obj_player.y + max_swoop) {vdir = -1;} // If bat is too low, start flying up

	x += hdir * spd;
	y += vdir * spd;

	if ((abs(obj_player.x - x) > turn_distance) && (sign(obj_player.x - x) == -hdir)) // If bat is further than turn_distance and facing away from player
	{
		hdir = -hdir; // Reverse direction
	} 
	 break;
 }

 case stat.flee:
 {
	vdir = 1; // Bat starts by going down, assuming it will generally be perched high

	x += hdir * spd;
	y += vdir * spd;

	if ((abs(obj_player.x - x) > turn_distance) && (sign(obj_player.x - x) == hdir)) // If bat is further than turn_distance and facing away from player
	{
		hdir = -hdir; // Reverse direction
	} 
	 
	 if (distance_to_object(obj_player) > safe_distance) {st = stat.idle;}
	 break;
 }
	
}
show_debug_message(st)
show_debug_message(distance_to_object(obj_player))
if(y > room_height - 250){
		st = stat.flee
		y = room_height - 250
	}