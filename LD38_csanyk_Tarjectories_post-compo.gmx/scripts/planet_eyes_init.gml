///planet_eyes_init()
//sets up planet eyes

left_eye = instance_create(x - (0.4 * radius), y-(0.25 * radius), oEye);
left_eye.parent = id;
with left_eye
{
    radius = 0.1 * parent.radius;
    p_radius = 0.5 * radius;    
}


right_eye = instance_create(x + (0.4 * radius), y-(0.25 * radius), oEye);
right_eye.parent = id;
with right_eye
{
    radius = 0.1 * parent.radius;
    p_radius = 0.5 * radius;        
}


