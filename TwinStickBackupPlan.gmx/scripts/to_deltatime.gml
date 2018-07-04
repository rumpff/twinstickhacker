///to_deltatime(value)

// Allows a value to compensate for framedrops
// Or when you want to change the fps of the game later in development

var default_fps = 60

return (argument0 * (delta_time / 1000000) / ( 1 / default_fps));
