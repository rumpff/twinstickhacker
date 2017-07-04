///draw_wave_off(x, y, surfID, rad, width, textOffset, angle)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
// This script draws a wave, where the texture-cordinates are changed
// both in the inner- and the outer circle of the wave.
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*

argument0 = x

argument1 = y

argument2 = the id of the surface used for the texture (this would normally be a copy of the visible screen)

argument3 = radius of the wave

argument4 = width of the wave

argument5 = the textures offset - the lower this is, the more invisible is the wave will look.

argument6 = the number of pieces, that the wave should be drawed in.
The higer you set argument6, the smoother the circle will be, but the game might also run slower.

argument7 = the angle of the wave - this is very useful then argument6 is very low.

*/

//Sets the variables, R (radius), W (width), O (offset) and A (angle).

r=argument3;
w=argument4;
o=argument5;
a=argument7;
t=argument8;

//We also got to make sure that the wave isn't drawn inside-out
//- the width must not be larger than the radius.
if (w>r)
{w=r}
//Sets the variable D (degrees). This indicate how many degrees of the circle, one piece should be.

d=360/argument6;

//Sets the variable C (count). The wave is drawed in many pieces, and this variable counts what piece comes next.

c=0;

//Set some more variables, wich is important for the drawing of the wave...



srf=argument2;

tex=surface_get_texture(srf);

srf_w=surface_get_width(srf);
srf_h=surface_get_height(srf);

tex_w=texture_get_width(tex);
tex_h=texture_get_height(tex);
texture_set_repeat(true);

//...and start drawing the wave

draw_primitive_begin_texture(pr_trianglestrip,tex)

//This part, will draw triangles, together so they form a ring.
//It's to complicated to explain, but i'll try...

draw_set_color(c_white);

repeat(argument6+1)
{

//xx and yy is changed all the time, and they indicates the posistion of the next vertex

xx=argument0+lengthdir_x(r,c*d)
yy=argument1+lengthdir_y(r,c*d)

//This draws the fisrst vertex, wich is placed in the outer circle.
//Therefore the texture-cordinates is located in front of the vertex.

draw_vertex_texture
    (xx,
    yy,
    tex_w/srf_w*(xx+lengthdir_x(o,c*d+t)),
    tex_h/srf_h*(yy+lengthdir_y(o,c*d+t)))

//xx and yy is set again...

xx=argument0+lengthdir_x(r-w,c*d)
yy=argument1+lengthdir_y(r-w,c*d)

//...and drawes the new vertex. This time it is placed in the inner circle;
//so the texture-cordinates are placed right under the vertex (this meant no offset).

draw_vertex_texture
    (xx,
    yy,
    tex_w/srf_w*(xx+lengthdir_x(o,c*d)),
    tex_h/srf_h*(yy+lengthdir_y(o,c*d)))

//Now, 1 number is added to the variable C,
//so that the vertexes are drawn one wave-piece longer around in the circle;
//at the next repeat.

c+=1

}

//And of caurse it would be a good idea to finish off,
//by acculaay drawing the wave - otherwise it's pretty much a waste of CPU =D ...

draw_primitive_end()
