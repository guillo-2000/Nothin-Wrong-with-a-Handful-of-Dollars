//keys
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));

//horizontal
var horizontal = right - left;
hsp = horizontal * step;

x = x + hsp;

if (place_meeting(x,y,obj_wall)) {
	
	x = x - hsp;
}

//vertical
var vertical = down - up;
vsp = vertical * step;
y = y + vsp;

//collision

if (place_meeting(x, y, obj_wall)) {
	y = y - vsp;
}

//alignment or something idk
if (left) {
	image_xscale = -size;
}

if (right) {
	image_xscale = size;
}

//adobe animate
if ((up or down or left or right) && !punching) {
	sprite_index = spr_face_walk;
} else {
	if (!punching) {sprite_index = spr_face};
}

//run
if (keyboard_check(vk_shift)) {
	step = 8;
} else {
	step = 4;
}