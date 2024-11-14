/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!instance_exists(obj_player) and alarm[0] < 0)
{
	audio_play_sound(snd_explosion, 7, false);
	alarm[0] = 120;
}