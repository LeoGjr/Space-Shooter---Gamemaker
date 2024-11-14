/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(end_region) exit;

up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);



#region MOVIMENTACAO
if(left)
{
	hspeed = -mov_speed;
	image_index = 0;
}
else if(right)
{
	hspeed = mov_speed;
	image_index = 0;
}
else
{
	hspeed = 0;
	image_index = 0;
}

if(up)
{
	vspeed = -mov_speed;
	image_index = 2;
}
else if(down)
{
	vspeed = mov_speed;
	image_index = 1;
}
else
{
	vspeed = 0;
	image_index = 0;
}
#endregion

#region TIROS

if(keyboard_check_pressed(ord("Z"))){
	instance_create_layer(x + sprite_width/2, y, "Efeitos", obj_flash);
	instance_create_layer(x + sprite_width/2, y, "Efeitos", obj_tiro_player);
	
	audio_play_sound(snd_shot_basic, 5, false);
}


if(keyboard_check(ord("Z"))){
	shoot_explosion_timer++;
	
	if(shoot_explosion_timer >= shoot_explosion_duration){
		shoot_explosion_ready = true;
	}
}else if(keyboard_check_released(ord("Z"))){
	if(shoot_explosion_ready){
		instance_create_layer(x + sprite_width/2, y, "Efeitos", obj_flash_2);
		instance_create_layer(x + sprite_width/2, y, "Efeitos", obj_tiro_player_2);
		
		audio_play_sound(snd_shot_especial, 5, false);
		
		shoot_explosion_ready = false;
		shoot_explosion_timer = 0;
	}else{
		shoot_explosion_timer = 0;
	}
}





#endregion

#region HP

if(hp_player < previous_hp and vulnerale)
{
	audio_play_sound(snd_hit_player, 7, false);
	
	shoot_explosion_timer = 0;
	
	vulnerale = false;
	alarm[2] = 1;
	alarm[3] = 40;
	previous_hp = hp_player;
}

if(hp_player <= 0)
{
	Explosion_enemy();
	instance_destroy();
}

#endregion

#region FIM DA FASE

if(place_meeting(x, y, obj_endGame) and end_region == false)
{
	image_index = 0;
	
	end_region = true;
	
	hspeed = 0;
	vspeed = 0;
	
	alarm[5] = 120;
}

#endregion