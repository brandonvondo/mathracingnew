left = o_garagenav.left;
scrolling = o_garagenav.scrolling;

if (distance_to_point(mouse_x,mouse_y) <= 0)
{
    if (image_xscale < scale_max){
        image_xscale += scale_speed
        image_yscale += scale_speed
    }
}
else
{
    if (image_xscale > 1){
        image_xscale -= scale_speed
        image_yscale -= scale_speed
    }
}