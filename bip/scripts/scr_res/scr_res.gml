// Set up res
res_w = 1280;
res_h = 720;

window_set_size(res_w, res_h);
surface_resize(application_surface, res_w, res_h);


layer_force_draw_depth(true, 0);