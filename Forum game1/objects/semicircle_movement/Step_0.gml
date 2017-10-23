//

xdif = dsin(theta) * xdiff
ydif = ydiff + abs(dcos(theta)) * abs(distance - ydiff) 

x = target.x + xdif
y = target.y + ydif

theta += 4
if(theta == 360){
	theta = 0
}
show_debug_message(ydif)
show_debug_message(xdiff)