var timesteps,i,f;
var shutterspeed = 2;

timesteps = max(1,min(128,ceil(speed*shutterspeed)));
for(i=0;i<timesteps;i+=1) 
{
    f = round(255*(i+1)/timesteps)-round(255*i/timesteps);
    
    with (par_trippy)
    draw_sprite_ext(sprite_index,image_index,
        x-hspeed*shutterspeed*i/timesteps,
        y-vspeed*shutterspeed*i/timesteps,
        image_xscale,image_yscale,image_angle,merge_color(c_black,image_blend,f/255),image_alpha*f/255);
}
