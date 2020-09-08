audio_stop_sound(mainmenu)
var carData = cardata();
global.gas = get_car_fuel(o_levelcontroller.carId,carData); //fuel
mathtime = false;
global.checkpoint = 1;
valueassigned = false;
ismath = false;
drawmathbar = false;
global.timesup = false;
alarm_set(alarm[0],300);
global.lap = 0;
endscreen = false;
started = false;
gasstring = global.gas;
maxgas = global.gas;


