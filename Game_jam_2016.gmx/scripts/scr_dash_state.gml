// scr_dash_state

len = spd*4;

// get the hspd and vspd
// this will stop the character to move faster in the diagonal movement
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;












