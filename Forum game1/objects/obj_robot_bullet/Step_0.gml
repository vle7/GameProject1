speed = 5

x += speed

if(type == 1){
	y -= dcos(theta) * 10
	theta += 4
	if(theta > 360){
		theta = 0
	}
}
else if(type == 2){
	y += dcos(theta) * 10
	theta += 4
	if(theta > 360){
		theta = 0
	}
}