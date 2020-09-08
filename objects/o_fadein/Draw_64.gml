if alpha <=0 instance_destroy();
alpha -= increment;

draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, camera_get_view_width(view_camera[0])*4, camera_get_view_height(view_camera[0])*4, 0);
draw_set_alpha(1);