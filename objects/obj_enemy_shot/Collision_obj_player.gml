/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(other.vulnerale) other.hp_player -= 1;

instance_destroy();

instance_create_layer(x, y, "Efeitos", obj_screen_shake);