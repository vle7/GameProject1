//

xdif = dsin(theta) * xdiff
ydif = abs(dcos(theta)) * abs(distance - ydiff)

x = target.x + xdif
y = target.y + ydif

theta += 1
if(theta == 360){
	theta = 0
}