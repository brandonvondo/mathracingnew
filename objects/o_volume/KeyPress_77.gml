switch(vol)
{
	case 1:
	vol = .66;
	changesounds(vol);
	sprite_index = volume66;
	break;
	case .66:
	vol = .33;
	changesounds(vol);
	sprite_index = volume33;
	break;
	case .33:
	vol = .0;
	changesounds(vol);
	sprite_index = volume0;
	break;
	case 0:
	vol = 1;
	changesounds(vol);
	sprite_index = volume1;
	break;
}