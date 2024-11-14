/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

event_inherited();

timer += 0.01;

if(timer >= 1){
	timer = 0;
}

var _posAtual = animcurve_channel_evaluate(canal, timer);

y = ystart + _posAtual * amplitude;