///scr_pathToPlayerspeed)
///Get Path to Player
if (instance_exists(obj_player)){
var xx = (obj_player.x )//div CELL_WIDTH)*CELL_WIDTH+CELL_WIDTH/2
var yy = (obj_player.y )//div CELL_HEIGHT)*CELL_HEIGHT+CELL_HEIGHT/2

if (mp_grid_path(obj_level.grid_path, path, x, y, xx, yy, true)){
path_start(path, argument0, path_action_stop, false);
}
}
