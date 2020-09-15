audio_group_set_gain(audiogroup_default, 1, 0);
audio_group_set_gain(audiogroup_car, .2, 0);
audio_group_set_gain(audiogroup_fxlow, .25, 0);
audio_group_set_gain(audiogroup_fxhigh, .25, 0);
vol = o_levelcontroller.vol;
switch(vol)
{
	case 1:
	sprite_index = volume1;
	break;
	case .66:
	sprite_index = volume66;
	break;
	case .33:
	sprite_index = volume33;
	break;
	case 0:
	sprite_index = volume0;
	break;
}
scale_speed = 0.02;
scale_max = 1.1;