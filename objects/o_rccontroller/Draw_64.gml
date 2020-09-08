if global.gas > 0 {
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_font(f_menu20);
draw_set_color(c_white);
draw_sprite(canuiframe,0,32,10);
draw_sprite_part(canuibar,0,76,48,344*(gasstring/maxgas),22,106,58);
//draw_text_color(65,68,string_format(gasstring/maxgas*100,4,0) + "%",c_white,c_white,c_white,c_white,1);
draw_set_font(f_menu56);
draw_text_color(150,620,"Laps: " + string(global.lap) ,c_gray,c_gray,c_black,c_black,1);
draw_sprite(fueltitle,0,120,5);
}

if o_math.equationprint = ""{
	draw_set_alpha(0);
	}
else{
	draw_set_alpha(1);
	}

draw_set_font(threed1)
draw_set_halign(fa_center)
draw_text_outline(640,180,o_math.equationprint,c_white,c_white,1,c_black,c_black,1,1,5,1,1,360)

var barWidth
barWidth = 200

if drawmathbar == true{
//draw_set_color(c_blue)
draw_set_halign(fa_right)
draw_sprite(hourglassframe,0,770,144)
draw_sprite_part(hourglassfill,0,0,0,64,64*(mathleft/mathmax),770,144)
//draw_rectangle(932,32,932*(mathleft/mathmax)*barWidth,32+16,false)
//draw_set_color(c_black)
//draw_rectangle(932,32,932+barWidth,32+16,true)
//draw_set_font(f_menu20)
//draw_set_halign(fa_left)
//draw_text_color(932, 68, o_math.secstring ,c_white ,c_white ,c_white ,c_white ,1 )
}
