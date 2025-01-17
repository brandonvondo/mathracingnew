// Oscillate the cursor using sin function
cursorLevitate = dsin(cursorTime);

// Use this as an "angle" to use in the sin function
// to oscillate cursor
cursorTime += leviRate;


// Vertical input is determined by the press of up
// and down buttons
var vert =  keyboard_check_pressed(downButt) -  keyboard_check_pressed(upButt);

// Move cursor up or down depending on inputs
selected += vert;
selectLerp = lerp(selectLerp, selected, lerpAmt); // Smooth cursor movement

// Don't let cursor move past where it should be
selected = clamp(selected, 0, array_length_1d(menu) - 1);

// Whenever you press the confirm button, do whatever
// it should do depending on what menu element is selected
if(keyboard_check_pressed(confirmButt))
{
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
}