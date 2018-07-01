//initalize_virtual_sticks();

var sWidth = display_get_gui_width();
var sHeight = display_get_gui_height();

var r = sWidth / 11;
var bdist = sWidth / 20;

vstick_init(0, r + bdist, sHeight - (r+bdist), r, true, noone, spr_dot);
vstick_init(1, sWidth - (r + bdist), sHeight - (r+bdist), r, true, noone, spr_dot);
