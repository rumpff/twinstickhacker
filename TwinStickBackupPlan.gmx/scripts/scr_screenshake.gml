///scr_screenshake(amount,duration)

obj = instance_create(x, y, obj_screenshake);
obj.m_amount = argument0;
obj.m_duration = argument1;
obj.m_subtractor = (argument1 / argument0);

obj_trippySurface.m_multiplier += (argument0 * 0.3);
obj_camera.m_zoomMultiplier -= (argument0 * 0.01);
