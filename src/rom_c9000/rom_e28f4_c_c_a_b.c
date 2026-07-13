void Func_80e3908(int *motion_arg, int scale_arg, int acceleration)
{
    register int *motion asm("r4") = motion_arg;
    int x_velocity = motion[3];

    motion[0] += x_velocity;
    {
        register int scale asm("r5") = scale_arg;
        int y_velocity = motion[4];
        int x_product;

        asm volatile("" : "+r"(scale) : : "memory");
        motion[1] += y_velocity;
        x_product = x_velocity * scale;
        y_velocity += acceleration;
        motion[4] = y_velocity;
        if (x_product < 0)
            x_product += 63;
        y_velocity *= scale;
        motion[3] = x_product >> 6;
        if (y_velocity < 0)
            y_velocity += 63;
        motion[4] = y_velocity >> 6;
    }
}
