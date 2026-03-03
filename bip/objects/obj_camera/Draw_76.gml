// Set up view
view_mat = matrix_build_lookat(from_x, from_y + 500, from_z, from_x, from_y - 500, 0, 0, 0, -1);
camera_set_view_mat(cam, view_mat);