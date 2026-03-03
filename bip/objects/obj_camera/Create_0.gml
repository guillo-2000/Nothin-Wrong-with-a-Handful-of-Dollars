// Create camera
cam = camera_create_view(0, 0, global.res_w, global.res_h);

view_enabled = true;
view_visible[0] = true;
view_set_camera(0, cam);

// Set up 3D projection
proj_mat = matrix_build_projection_perspective_fov(-70, global.res_w/global.res_h, 3, 3000);
camera_set_proj_mat(cam, proj_mat);

// View properties
from_x = obj_player.x;
from_y = obj_player.y;
from_z = -200;

// Depth sorting
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);