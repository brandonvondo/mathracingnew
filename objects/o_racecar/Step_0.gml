var chanceparticle
if isgrass = true 
{
	currentsurface = 1
	chanceparticle = 6
}
else
{
	currentsurface = 2
	chanceparticle = 3
}

var _direction = point_direction(x, y, mouse_x, mouse_y);
var _acceleration = accelrate;

depth = -y;

if mouse_check_button(mb_left) and global.gas > 0 and moveable = true {
	friction = 0;
	motion_add(_direction, _acceleration);
	speed = min(speed, _top_speed);
} else {
	friction = _acceleration;
}


if speed > 0 {
	var _turn_amount = angle_difference(image_angle, _direction) * _acceleration;
	image_angle -= _turn_amount;
	
	var _dust_x = x + lengthdir_x(24, image_angle+180);
	var _dust_y = y + lengthdir_y(28, image_angle+180);
	var _grass_x = x - lengthdir_x(24, image_angle+180);
	var _grass_y = y - lengthdir_y(28, image_angle+180);
	if irandom_range(0,10) > chanceparticle
	{
		if (currentsurface == 1)
		{
		instance_create_layer(_dust_x+random_range(-4, 4), _dust_y+random_range(-4, 4), "Instances", o_dirt);
		instance_create_layer(_grass_x+random_range(-9, 9), _grass_y+random_range(-9, 9), "Instances", o_grassp);
		}
		else if (currentsurface == 2)
		{
		instance_create_layer(_dust_x+random_range(-4, 4), _dust_y+random_range(-4, 4), "Instances", o_dust);
		}
	}
}

if speed > 0 and !audio_is_playing(carengine) 
audio_play_sound(carengine,100,false)
else audio_stop_sound(carengine)