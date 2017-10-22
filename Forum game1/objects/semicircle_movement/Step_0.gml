//

xdif = dsin(theta) * xdiff
ydiff = sqrt(abs(distance - xdif^2))

x = target.x + xdif
y = target.y + ydiff

theta += 2
if(theta == 360){
	theta = 0
}
show_debug_message(ydiff)