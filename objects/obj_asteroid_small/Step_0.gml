/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(y >= v_viewport or y <= 0){
	vspeed *= -1;
}

if(x < -25){
	instance_destroy();
}

if(x < -20){
	instance_destroy();
}

clear_instances(sprite_width * 2);