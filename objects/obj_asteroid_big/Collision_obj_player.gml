/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(other.vulnerale) other.hp_player -= 2;

instance_create_layer(x, y, "Efeitos", obj_screen_shake);

instance_destroy();
global.shake_duration = 30;
global.shake_intensity = 6;