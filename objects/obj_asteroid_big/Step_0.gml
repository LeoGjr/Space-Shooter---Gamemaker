/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


image_angle += 2;

if(x <= vertical_pos_started and !vertical_started){
	vertical_started = true;
	
	hspeed = -0.5;
	
	if(y < v_viewport/2){
		vspeed = vel_v;
	}else{
		vspeed = -vel_v;
	}
}

if(y >= v_viewport or y <= 0){
	vspeed *= -1;
}

if(hp == 0){
	instance_destroy();
}

if(place_meeting(x, y, obj_explosion_area) and collision_explosion_executed == false){
	hp--;
	collision_explosion_executed = true;
	alarm[0] = 60;
}

clear_instances(sprite_width * 2);