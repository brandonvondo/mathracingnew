if navleft = true
{
		if (o_garagenav.page == 2)
	{
		if arrayplace > 0
		{
			arrayplace--;
			navleft = false;
		}
		else if arrayplace = 0
		{
			arrayplace = 6;
			navleft = false;
		}
	}
}

if navright = true
{
	if (o_garagenav.page == 2)
{
		if arrayplace < 6
		{
			arrayplace++;
			navright = false;
		}
		else if arrayplace = 6
		{
			arrayplace = 0;	
			navright = false;
		}
	}
}