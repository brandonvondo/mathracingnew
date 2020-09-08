var selected = myNum;
if(selected == 0) // Play by default
	{
		randomize();
		room_goto(r_one);
	}
	
	if(selected == 1) // stats by default
	{
		// Go to options room
	}
	
	if(selected == 2) // garage
	{
		audio_stop_sound(mainmenu);
		audio_play_sound(wildanimalparty,100,true);
		room_goto(r_garage);
	}
	
	if(selected == 3) // Exit by default
	{
		game_end();
	}