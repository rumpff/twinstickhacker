///Grid Place Meeting(x, y)
var xx = argument[0];
var yy = argument[1];

//Remember our Position
var xp = x;
var yp = y;

//Update the Position for the BBox Calculations
x = xx;
y = yy;

//Check for an x Meeting
var x_meeting = (obj_level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) || 
                (obj_level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR)  ;
                
//Check for an y Meeting
var y_meeting = (obj_level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) || 
                (obj_level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR)  ;
                
var center_meeting = (obj_level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR);

//Move Back
x = xp;
y = yp;

//Return True or False
return x_meeting || y_meeting || center_meeting;

