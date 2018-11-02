///to_deltatime(value)

// Allows a value to compensate for framedrops
// Or when you want to change the fps of the game later in development
// Leave value blank for 1

var default_fps = 60
var output;

if(argument_count > 0)
{
    output = (argument[0] * (delta_time / 1000000) / ( 1 / default_fps));
}
else
{
    output = (1 * (delta_time / 1000000) / ( 1 / default_fps));
}

return output;
