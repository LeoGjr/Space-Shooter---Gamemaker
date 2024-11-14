/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!instance_exists(obj_player))
{
	exit;
}
var _count = obj_player.shoot_explosion_timer;

if(_count >= 60 and _count < 120)
{
	image_index = 1;
}else if(_count >= 120 and _count < 180)
{
	image_index = 2;
}
else if(_count >= 180 and _count < 240)
{
	image_index = 3;
}
else if(_count >= 240 and _count < 300)
{
	image_index = 4;
}
else if(_count >= 300)
{
	sprite_index = spr_full_energy;
}
else
{
	sprite_index = spr_energyBar;
	image_index = 0;
}