//if left customer
if (instance_exists(follow_target))
{
    x = follow_target.x;
    y = follow_target.y + offset_y;
}

if x = 0
instance_destroy(self)