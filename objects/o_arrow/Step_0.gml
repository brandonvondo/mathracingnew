x = o_racecar.x;
y = o_racecar.y;
  
  if (instance_exists(o_flag)) //is the instance of the player (or whatever) even here?
{
	flagh = instance_nearest(o_racecar.x, o_racecar.y ,o_flag)
    //check if the player's x and y is within bounds of the room
    var cam = view_camera[0];
	var x1 = camera_get_view_x(cam);
	var y1 = camera_get_view_y(cam);
	var x2 = x1 + camera_get_view_width(cam);
	var y2 = y1 + camera_get_view_height(cam);
	if( !point_in_rectangle( flagh.x, flagh.y, x1, y1, x2, y2)) 
	{ 
		onscreen = true;
    }
	else
	{
		onscreen = false;
	}
}
else
{
	pdy = 0;
	pdy = 0;
}

if((flagh != noone) && (instance_exists(o_flag))) 
{
	pdy = flagh.y;
	pdx = flagh.x; 
	image_angle = point_direction(x, y, pdx, pdy);
}
else
{
	image_angle = point_direction(x, y, x, y);
}
		
if (onscreen == true)
{
	image_alpha = 1;
}
else
{
	image_alpha = 0;
}