// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function changesounds(vol){
audio_group_set_gain(audiogroup_default, vol, 0);
audio_group_set_gain(audiogroup_car, vol/5, 0);
audio_group_set_gain(audiogroup_fxlow, vol/4, 0);
audio_group_set_gain(audiogroup_fxhigh, vol/2, 0);
}