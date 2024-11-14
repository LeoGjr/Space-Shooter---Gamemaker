/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!instance_exists(obj_player))
{
	exit;
}

var _current_Hp = obj_player.hp_player;

if(_current_Hp < 0){
	_current_Hp = 0;
}

if(_current_Hp != 1)
{
	sprite_index = spr_lifeBar;
	image_index = _current_Hp;
}else
{
	sprite_index = spr_low_life;
}

