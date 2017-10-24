ah = 150
aboss_weak = false
aboss_inv = false
st = 0
mov = obj_wall
max_swoop = 8
safe_distance = 400
hspd = -2
spd = 10
aggro_range = 250
turn_distance = 100


hdir = choose(1, -1)
enum state {
	idle = 0,
	swoop = 1,
	flee = 2,
	dizzy = 3
}