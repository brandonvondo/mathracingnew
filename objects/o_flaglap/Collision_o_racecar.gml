if canhit = true {
global.checkpoint = 1
global.lap ++
audio_play_sound(_361263__japanyoshithegamer__8_bit_correct_answer,100,false)
var vX = o_levelcontroller.flagx[1]
var vY = o_levelcontroller.flagy[1]
instance_create_layer(vX,vY,"Instances",o_flag)
}