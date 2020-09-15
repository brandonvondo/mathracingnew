globalvar vdifficulty;
vdifficulty = 1;
carId = 0;
vol = 1;

flagx[0] = 1510; //failsafe for index 0 search
flagx[1] = 1510;
flagx[2] = 1380;
flagx[3] = 760;
flagx[4] = 156;
flagx[5] = 680;
flagx[6] = 345;
flagx[7] = 688;
flagx[8] = 1510; // dup of 1 for object purposes
flagx[9] = 1510; // dup of 1 for object purposes

flagy[0] = 675; //failsafe for index 0 search
flagy[1] = 675;
flagy[2] = 208;
flagy[3] = 96;
flagy[4] = 294;
flagy[5] = 425;
flagy[6] = 645;
flagy[7] = 865;
flagy[8] = 675; // dup of 1 for object purposes
flagy[9] = 675; // dup of 1 for object purposes

flagr[0] = 0; //failsafe for index 0 search
flagr[1] = 0;
flagr[2] = 90;
flagr[3] = 90;
flagr[4] = 0;
flagr[5] = 90;
flagr[6] = 90;
flagr[7] = 90;
flagr[8] = 0; // dup of 1 for object purposes
flagr[9] = 0; // dup of 1 for object purposes

if !audio_group_is_loaded(audiogroup_car)
{
audio_group_load(audiogroup_car);
}

if !audio_group_is_loaded(audiogroup_default)
{
audio_group_load(audiogroup_default);
}

if !audio_group_is_loaded(audiogroup_fxlow)
{
audio_group_load(audiogroup_fxlow);
}

if !audio_group_is_loaded(audiogroup_fxlow)
{
audio_group_load(audiogroup_fxhigh);
}