/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!instance_exists(obj_player)) exit;

var _direction = point_direction(x, y, obj_player.x, obj_player.y);

var _bullet = instance_create_layer(x, y, "Efeitos", obj_enemy_shot);

if(x <= 0)
{
	_bullet.speed = 0.75;
}
else
{
	_bullet.speed = 1.75;
}

_bullet.direction = _direction;

shoot_count++;

if(shoot_count < 3 and x > 0){
	alarm[0] = 20;	
}