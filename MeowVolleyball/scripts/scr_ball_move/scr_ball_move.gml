vsp += grv;

// 벽충돌
if (place_meeting(x + hsp, y, obj_par_solid)) {
	while (!place_meeting(x + sign(hsp), y, obj_par_solid)) {
		x += sign(hsp);
	}
	hsp *= -bouncedecay;
}

if (place_meeting(x, y + vsp, obj_par_solid)) {
	while (!place_meeting(x, y + sign(vsp), obj_par_solid)) {
		y += sign(vsp);
	}
	vsp *= -bouncedecay;
}

// 플레이어 충돌
if (place_meeting(x + hsp, y, obj_player)) {
	hsp = 10 * obj_player.image_xscale;
}

if (place_meeting(x, y + vsp, obj_player)) {
	vsp = -10
}

// 굴러가는거 멈추기
if (place_meeting(x, y + 1, obj_par_solid)) {
	hsp *= 0.99;
}

yscale = random_range(0.8, 1.2);
rot_angle -= hsp;
x += hsp;
y += vsp;

