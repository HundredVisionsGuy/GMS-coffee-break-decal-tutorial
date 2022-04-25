/// @description shake the camera if shake is true
// You can write your code in this editor

if (shake) 
{ 
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude); 
   /* 
	   offset the camera based on the initial player position 
	   minus half the width/height of the camera and 
	   plus the screenshake magnitude.
   */
   var _camx = obj_player.x - (camera_get_view_width(view_camera[0]) / 2) + _xval;
   var _camy = obj_player.y - (camera_get_view_height(view_camera[0]) / 2) + _yval;
   camera_set_view_pos(view_camera[0], _camx, _camy); 

	if (shake_time <= 0) 
	{ 
		shake_magnitude -= shake_fade; 
		_camx = obj_player.x - (camera_get_view_width(view_camera[0]) / 2);
		_camy = obj_player.y - (camera_get_view_height(view_camera[0]) / 2);
		if (shake_magnitude <= 0) 
		{ 
			camera_set_view_pos(view_camera[0],  _camx, _camy); 
			shake = false; 
		} 
	} 
}
else 
{
	var _camx = obj_player.x - (camera_get_view_width(view_camera[0]) / 2);
	var _camy = obj_player.y - (camera_get_view_height(view_camera[0]) / 2);
	camera_set_view_pos(view_camera[0],  _camx, _camy);
}