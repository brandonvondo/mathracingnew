instance_destroy(o_answer1R);
instance_destroy(o_answer2W);
instance_deactivate_object(o_arrow);
instance_deactivate_object(o_racecar);
instance_deactivate_layer("brain");
instance_deactivate_layer("grass");
audio_stop_sound(racing3);
audio_play_sound(GTA_V_WastedBusted___Gaming_Sound_Effect__HD_,1000,false);