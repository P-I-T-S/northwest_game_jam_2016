// scr_move_state
scr_get_input();

// get the axis
var xaxis = (right_key-left_key);
var yaxis = (down_key - up_key);


// Get direction 
// made dir local
dir = point_direction(0,0,xaxis,yaxis);

// get length
if(xaxis == 0 && yaxis == 0){
len =0;
} else{
len = spd;
}



// get the hspd and vspd
// this will stop the character to move faster in the diagonal movement
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//move 
phy_position_x += hspd;
phy_position_y += vspd;

// the animate was not working .. this this code

// Control the sprite
image_speed = sign(len*.2); 

if(len == 0) image_index = 0; // if object is not moving

// vertical sprite
if(vspd > 0){
sprite_index = spr_player_down;
} else if (vspd < 0 ){
sprite_index =  spr_player_up;

}

// horizontal sprite 
if(hspd > 0){
sprite_index = spr_player_right;
} else if (hspd < 0 ){
sprite_index =  spr_player_left;

}













