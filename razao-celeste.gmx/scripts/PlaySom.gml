///PlaySom( snd, loop, vol, time )
var i = audio_play_sound(argument[0],0,argument[1]);
audio_sound_gain(i,argument[2],argument[3]);
