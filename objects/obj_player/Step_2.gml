/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(end_region) exit;

if(y >= room_height - sprite_height/2 or y <= sprite_height/2){
	y = yprevious;
}

x = clamp(x, sprite_width/2, 240 - sprite_width/2);