answer = ""
alignment = choose(1,2)

if o_answer1R.alignment = 1 and o_math.align = 1 {	
x = o_math.spawnx
y = o_math.spawny+45
}
if o_answer1R.alignment = 2 and o_math.align = 1 {
x = o_math.spawnx
y = o_math.spawny-45
}

if o_answer1R.alignment and o_math.align = 2 {	
x = o_math.spawnx+45
y = o_math.spawny
}
if o_answer1R.alignment = 2 and o_math.align = 2 {
x = o_math.spawnx-45
y = o_math.spawny
}
instance_create_layer(0,0,"Instances",o_answer2W)