timer = timer-delta_time/1000000
if timer > 0 showtimer = ceil(timer)
else showtimer = "GO!"

if timer < -.5 instance_destroy()