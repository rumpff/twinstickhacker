///scr_screenshake(amount,duration)

obj = instance_create(x, y, obj_screenshake);
obj.m_amount = argument0;
obj.m_duration = argument1;
obj.m_subtractor = (argument1 / argument0);
