var i = global.checkpoint
var vX = o_levelcontroller.flagx[i]
var vY = o_levelcontroller.flagy[i]
if (i < 8)
{
	instance_create_layer(vX,vY,"Instances",o_flag)
}

