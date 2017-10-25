switch (st)
{
 case state.idle:
 { 
	 vdir = 0
	 x += hdir * spd;
	 
	 if ((abs(obj_player.x - x) > 200) && (sign(obj_player.x - x) == -hdir)) // If further than turn_distance and facing away from player
	 {
		hdir = -hdir; // Reverse direction
	 } 
	 /*
	 if (distance_to_object(obj_player) < aggro_range)
	 {
		st = state.swoop; // Switch states
		hdir = sign(obj_player.x - x); // Horizontal direction to player
	 }
	 */
	 if (random_range(0,1) < .01){
		 st = state.swoop;
		 hdir = sign(obj_player.x - x);
	 }
	 
	 break;
 }
 case state.swoop:
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
 case state.dizzy:
 {
	 aboss_weak = true
	 break;
 }
 case state.flee:
 {
	vdir = -1; // Bat starts by going down, assuming it will generally be perched high

	x += hdir * spd;
	y += vdir * spd;

	if ((abs(obj_player.x - x) > turn_distance) && (sign(obj_player.x - x) == hdir)) // If bat is further than turn_distance and facing away from player
	{
		hdir = -hdir; // Reverse direction
	} 
	 
	 if (distance_to_object(obj_player) > safe_distance) {st = state.idle;}
	 break;
 }
}

if(y > room_height - 150){
	st = state.dizzy
	y = room_height - 150
	alarm_set(0, 30)
}
show_debug_message(st)
/*
if (distance_to_object(obj_player) < aggro_range)
{
 st = state.swoop; // Switch states
 hdir = sign(obj_player.x - x); // Horizontal direction to player
}

//var not_wall = !place_meeting(x + (hspd * move), y, mov)

//if (not_wall) {
//	x+=hspd * move
//}
//else {
	//state = scr_move_left
//	move *= -1
//}

var vdir = 1;

var turn_distance = 200
if (y < obj_player.y - max_swoop) {vdir = 1;}
if (y > obj_player.y + max_swoop) {vdir = -1;}


y += vdir;

if ((abs(obj_player.x - x) > turn_distance) && (sign(x - obj_player.x) == -hdir))
{
 hdir = -hdir; // Reverse direction
}

if (distance_to_object(obj_player) > safe_distance) {st = state.idle;}
x += hspd * hdir;

if (distance_to_object(obj_player) > safe_distance) {st = state.idle;}
*/