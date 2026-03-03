// Shadow
var _mat = matrix_build(x, y, -1, 0, 0, 0, 1, 1, 1);
matrix_set(matrix_world, _mat);

draw_set_alpha(0.5);
draw_set_color(c_black);
draw_circle(0, 0, sprite_width * 0.2, false);
draw_set_color(c_white);
draw_set_alpha(1);

// Draw instance
_mat = matrix_build(x, y, z, -90, 0, 0, 1, 1, 1);
matrix_set(matrix_world, _mat);

draw_sprite_ext(sprite_index, image_index, 0, 0, image_xscale, image_yscale, 0, image_blend, image_alpha);

matrix_set(matrix_world, matrix_build_identity());