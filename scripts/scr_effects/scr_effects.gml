// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Hit(){
	instance_create_layer(x + sprite_width/2, y, "Efeitos", obj_hit);
	audio_play_sound(snd_hit_enemy, 7, false);
}

function Explosion_enemy(){
	instance_create_layer(x, y, "Efeitos", obj_explosion_enemy);
}

function Explosion_area(){
	audio_play_sound(snd_explosion, 7, false);
	
	instance_destroy(other);

	Hit();

	instance_create_layer(x, y, "Efeitos", obj_explosion_area);

	instance_destroy();
}