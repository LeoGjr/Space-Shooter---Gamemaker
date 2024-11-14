/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

Explosion_enemy();

if(hp <= 0){
	var _small_1 = instance_create_layer(x, y, "Asteroids", obj_asteroid_small);

	_small_1.vspeed = vel_v;
	_small_1.hspeed = hspeed;

	var _small_2 = instance_create_layer(x, y, "Asteroids", obj_asteroid_small);

	_small_2.vspeed = vel_v;
	_small_2.hspeed = hspeed;
}
