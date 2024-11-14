/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _randX = random_range(-global.shake_intensity, global.shake_intensity);
var _randY = random_range(-global.shake_intensity, global.shake_intensity);

camera_set_view_pos(view_camera[0], cam_startX + _randX, cam_startY + _randY);