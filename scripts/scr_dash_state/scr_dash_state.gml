///scr_dash_state
var len =spd*4;

hspd = lengthdir_x( len, dir,);
vspd = lengthdir_y(len, dir,);


if (yaxis == 0 and xaxis == 0) {len = 0} 
else {len = spd};

phy_position_x += hspd;
phy_position_y += vspd;

var dash = instance_create_depth(x,y,-10, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

image_speed = 10;
