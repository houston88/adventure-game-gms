///scr_move_state
scr_get_input();

if (dash_key) {
	state = scr_dash_state;
	alarm[0] = 30/3;
}

//get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// are we just standing there?
if (xaxis == 0 && yaxis == 0) {
	image_index = 0;
	image_speed = 0;
	return;
}

//show_debug_message("What input are we getting? " + string(xaxis) + ", " + string(yaxis));

dir = point_direction(0, 0, xaxis, yaxis);

hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

if (yaxis == 0 and xaxis == 0) {len = 0} 
else {len = spd};

phy_position_x += hspd;
phy_position_y += vspd;

image_speed = sign(len)*.9;

if (len == 0) {
	image_index = 0;
}

if (vspd > 0 ) { 
	sprite_index = spr_player_frnt
} else if (vspd < 0) { 
	sprite_index = spr_player_back
} else if (hspd > 0) { 
	sprite_index = spr_player_side_R 
} else if (hspd < 0) {
	sprite_index = spr_player_side_L
} 
