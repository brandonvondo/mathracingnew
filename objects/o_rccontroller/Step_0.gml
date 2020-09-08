if started = true {
	if global.gas > 0 {
		if mouse_check_button(mb_left) and o_racecar.moveable = true { 
		global.gas = global.gas-delta_time/1000000
		}
		else global.gas = global.gas-delta_time/6000000
	}
	else {
		global.gas = 0
		if endscreen = false
		{
		endscreen = true
		instance_create_layer(x,y,"endgame",o_gameover)
		instance_destroy(o_answer1R)
		instance_destroy(o_answer2W)
		instance_deactivate_layer("brain")
		instance_deactivate_layer("grass")
		audio_sound_gain(racing3,0,1000)
		}
	}
}

if global.gas > 0 {
gasstring = global.gas

if ismath = true{

if valueassigned = false
{
mathmax = (15 - round(global.vdifficulty/3))
mathleft = mathmax
valueassigned = true
drawmathbar = true
}
if mathleft > 0 and ismath = true {
mathleft = mathleft-delta_time/1000000}
else {
drawmathbar = false
global.timesup = true
}
}

if global.timesup = true{
	instance_destroy(o_answer1R)
	instance_destroy(o_answer2W)
	o_math.alarm[0] = 15*room_speed;
	o_math.equationprint = "";
	audio_play_sound(_361260__japanyoshithegamer__8_bit_wrong_sound,101,false)
	global.timesup = false
	ismath = false
	valueassigned = false
}
}
