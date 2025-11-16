var cam = view_camera[0];
var view_w = camera_get_view_width(cam);

var sens = 0.25;

var pct = (window_mouse_get_x() / window_get_width() - 0.5) * (1/sens) + 0.5;
pct = clamp(pct, 0, 1);

var cam_x_target = lerp(0, room_width - view_w, pct);

var cam_x = lerp(camera_get_view_x(cam), cam_x_target, 0.05);

camera_set_view_pos(cam, cam_x, 0);
