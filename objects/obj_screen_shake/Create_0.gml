/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

cam_startX = camera_get_view_x(view_camera[0]);
cam_startY = camera_get_view_y(view_camera[0]);

global.shake_duration = 10;
global.shake_intensity = 2;

alarm[0] = global.shake_duration;