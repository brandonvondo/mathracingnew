global.gas = clamp(global.gas + 15,0,o_rccontroller.maxgas);
o_math.ismath= false;
o_math.alarm[0] = 15*room_speed;
o_math.equationprint = "";
audio_play_sound(_361263__japanyoshithegamer__8_bit_correct_answer,101,false)
o_rccontroller.ismath = false
o_rccontroller.valueassigned = false
o_rccontroller.drawmathbar = true
global.vdifficulty = global.vdifficulty + 2;
instance_destroy(o_answer2W)
instance_destroy()