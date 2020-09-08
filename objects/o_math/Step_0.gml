var i = global.checkpoint
var aR = i+1;
var vX = o_levelcontroller.flagx[aR]
var vY = o_levelcontroller.flagy[aR]
spawnx = vX;
spawny = vY;

switch(i)
{
	case 1:
	align = 1;
	break;
	case 2:
	align = 1;
	break;
	case 3:
	align = 2;
	break;
	case 4:
	align = 1;
	break;
	case 5:
	align = 1;
	break;
	case 6:
	align = 1;
	break;
	case 7:
	align = 2;
	break;
};

var diff = global.qdifficulty
if mathtime = true{
	if (diff < 5) 
	{
		var plus = " + ";
		var minus = " - ";
		var mathsign;
		mathsign = choose(plus,minus);
		var x1, x2;
			x1 = irandom_range(5,9);
			x2 = irandom_range(1,5);
		switch(mathsign)
		{
			case plus:
			o_answer1R.answer = x1+x2
			o_answer2W.answer = choose((x1+x2-irandom_range(1,3)),(x1-irandom_range(1,3)+x2))
			break;
			case minus:
			o_answer1R.answer = x1-x2
			o_answer2W.answer = choose((x1+irandom_range(1,3)-x2),(x1-x2+irandom_range(1,3)))
			break;
		}
		equationprint = string(x1) + mathsign + string(x2);
		mathtime = false
		o_rccontroller.ismath = true;
	}
	if (diff < 15 && diff >= 5)
	{
		mathsign = choose(plus,minus);
			x1 = irandom_range(1,15);
			x2 = irandom_range(1,15);
		switch(mathsign)
		{
			case plus:
			o_answer1R.answer = x1+x2
			o_answer2W.answer = choose((x1+x2-irandom_range(1,3)),(x1-irandom_range(1,3)+x2))
			break;
			case minus:
			o_answer1R.answer = x1-x2
			o_answer2W.answer = choose((x1+irandom_range(1,3)-x2),(x1-x2+irandom_range(1,3)))
			break;
		}
		equationprint = string(x1) + mathsign + string(x2);
		mathtime = false
		o_rccontroller.ismath = true;
	}
	if (diff < 25 && diff >= 15)
	{
		var divide = " / ";
		var multiply = " * ";
		var numsize = choose("big","small")
		if (numsize = "big")
		{
			x1 = irandom_range(1,20);
			x2 = irandom_range(1,20);
			mathsign = choose(plus,minus);
		}
		else
		{
			x1 = irandom_range(20,30);
			x2 = irandom_range(1,5);
			mathsign = choose(divide,multiply);
		}
		switch(mathsign)
		{
			case divide:
			o_answer1R.answer = x1/x2
			o_answer2W.answer = (x1-irandom_range(1,5)/x2)
			break;
			case multiply:
			o_answer1R.answer = x1*x2
			o_answer2W.answer = choose((x1+irandom_range(1,2)*x2),(x1*x2+irandom_range(1,2)))
			break;
			case plus:
			o_answer1R.answer = x1+x2
			o_answer2W.answer = choose((x1+x2-irandom_range(1,3)),(x1-irandom_range(1,3)+x2))
			break;
			case minus:
			o_answer1R.answer = x1-x2
			o_answer2W.answer = choose((x1+irandom_range(1,3)-x2),(x1-x2+irandom_range(1,3)))
			break;
		}
		
	}
}
var dmb = o_rccontroller.drawmathbar;
if (dmb = true) 
{
secstring = "Seconds left: " + string_format(o_rccontroller.mathleft,4,0)
}
else if (dmb = false) 
{
secstring = "";
}

if alarm[0] = 5*room_speed instance_create_layer(0,0,"Instances",o_mathinc);