if page = 1
{
	if nav = 1
	{
		if camera_get_view_x(view_camera[0]) <= 600
		{
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+40,0);
		}
		else if camera_get_view_x(view_camera[0]) = 640
		{
			nav = 0
			left = false;
			scrolling = false;
		}
	}
	if nav = 2
	{
		if camera_get_view_x(view_camera[0]) >= 40
		{
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])-40,0);
		}
		else if camera_get_view_x(view_camera[0]) = 0
		{
			nav = 0
			left = true;
			scrolling = false;
		}
	}
}