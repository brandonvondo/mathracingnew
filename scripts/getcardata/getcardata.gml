// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_car_sprite(Car, Array){
	var sprite = Array[Car,1] 
	return sprite;
}
function get_car_speed(Car, Array){
	var spd = Array[Car,2] 
	return spd;
}
function get_car_fuel(Car, Array){
	var fuel = Array[Car,3] 
	return fuel;
}
function get_car_offroad(Car, Array){
	var offR = Array[Car,4] 
	return offR;
}
function get_car_acceleration(Car, Array){
	var accel = Array[Car,5] 
	return accel;
}
