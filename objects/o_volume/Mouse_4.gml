var vol = o_levelcontroller.vol;
switch(vol)
{
	case 1:
	o_levelcontroller.vol = .66;
	changesounds(.66);
	sprite_index = volume66;
	break;
	case .66:
	o_levelcontroller.vol = .33;
	changesounds(.33);
	sprite_index = volume33;
	break;
	case .33:
	o_levelcontroller.vol = 0;
	changesounds(0);
	sprite_index = volume0;
	break;
	case 0:
	o_levelcontroller.vol = 1;
	changesounds(1);
	sprite_index = volume1;
	break;
}