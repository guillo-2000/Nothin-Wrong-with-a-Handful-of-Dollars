//keys
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));

//horizontal
var horizontal = right - left;
hsp = horizontal * step;

x = x + hsp;

//vertical
var vertical = down - up;
vsp = vertical * step;
y = y + vsp;