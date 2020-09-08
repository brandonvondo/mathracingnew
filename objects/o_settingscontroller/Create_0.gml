var carData = cardata();
var carId = o_levelcontroller.carId;
o_racecar.sprite_index = get_car_sprite(carId,carData); //sprite
o_racecar._top_speed = get_car_speed(carId,carData); //speed
o_racecar.accelrate = get_car_acceleration(carId,carData); //acell
o_grass.offroadspeed = get_car_offroad(carId,carData); //offroad
instance_destroy()