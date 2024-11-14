/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

event_inherited();

if(distance_to_object(obj_player) < 100){
	if(alarm_activated == false){
		
		alarm[0] = 1;
		alarm_activated = true;
	}
}

if(shooter_endroom == 1)
{
	if(x == 0)
	{
		alarm[0] = 1;
	}
}