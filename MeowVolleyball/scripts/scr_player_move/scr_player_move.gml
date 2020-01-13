var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var jump = keyboard_check(vk_space);

var move = right - left;
hsp = move * walksp;
vsp += grv;

if (move != 0) {
	image_xscale = left == true ? -1 : 1;
	image_speed = 0.2;
} else {
	image_speed = 0;
}

if (place_meeting(x, y + 1, obj_par_solid) && jump) {
	vsp = -7
}

if (place_meeting(x + hsp, y, obj_par_solid)) {
	while (!place_meeting(x + sign(hsp), y, obj_par_solid)) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, obj_par_solid)) {
	while (!place_meeting(x, y + sign(vsp), obj_par_solid)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;


