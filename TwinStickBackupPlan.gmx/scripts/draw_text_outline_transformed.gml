///draw_text_outline_transformed(x,y,str,xscale,yscale,angle,outwidth,outcol,outfidelity)
//Created by Andrew McCluskey http://nalgames.com/
//x,y: Coordinates to draw
//str: String to draw
//outwidth: Width of outline in pixels
//outcol: Colour of outline (main text draws with regular set colour)
//outfidelity: Fidelity of outline (recommended: 4 for small, 8 for medium, 16 for larger. Watch your performance!)

var dto_dcol=draw_get_color();

draw_set_color(argument7);

for(var dto_i=45; dto_i<405; dto_i+=360/argument8)
{
    draw_text_transformed(argument0+lengthdir_x(argument6,dto_i),argument1+lengthdir_y(argument6,dto_i),argument2, argument3, argument4, argument5);
}

draw_set_color(dto_dcol);

draw_text_transformed(argument0,argument1,argument2, argument3, argument4, argument5);
