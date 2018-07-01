//lerp_angle(val1, val2, amount);

var angle_prev = argument0; // the last angle of the image
var angle_next = argument1 // the target angle from the mouse
var angle_diff = angle_difference(angle_prev,angle_next); // get the difference between the angle

angle_next = angle_prev-angle_diff; // convert the angle to a number outside of 0-360 if needed

return lerp(argument0, angle_next, argument2);
