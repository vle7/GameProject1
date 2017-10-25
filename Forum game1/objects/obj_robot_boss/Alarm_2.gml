if (shoot < 3)
{
	//shoot bullets
	var bullet = instance_create_layer(x,y+100,"Instances", obj_robot_bullet)
	var bullet2 = instance_create_layer(x,y,"Instances", obj_robot_bullet)
	var bullet3 = instance_create_layer(x,y-100,"Instances", obj_robot_bullet)
	
	bullet.type = irandom_range(0,2)
	bullet2.type = irandom_range(0,2)
	bullet3.type = irandom_range(0,2)
	
	bullet.speed = 5
	bullet2.speed = 5
	bullet3.speed = 5
	
	
	show_debug_message(bullet.type)
	
	shoot++
	alarm_set(2,60)
	
}