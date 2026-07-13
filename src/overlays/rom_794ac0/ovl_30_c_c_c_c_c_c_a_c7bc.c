struct FieldActor {
    int padding_00[2];
    int fallback_x;
    int padding_0c;
    int fallback_y;
    int padding_14[9];
    int x;
    int padding_3c;
    int y;
};

extern struct FieldActor *__GetFieldActor(int);

int OvlFunc_899_200c7bc(int target_x, int target_y, int actor_id)
{
    struct FieldActor *actor;
    register int x asm("r4");
    register int y asm("r1");
    register int sentinel asm("r3");
    register int delta asm("r3");
    register int dx asm("r4");
    register int dy asm("r1");
    register int dy_squared asm("r2");
    register int dx_squared asm("r3");
    register int result asm("r0");

    actor = __GetFieldActor(actor_id);
    sentinel = 0x80;
    asm("" : "+r" (sentinel));
    x = actor->x;
    asm("" : "+r" (x));
    sentinel <<= 24;
    if (x == sentinel)
        x = actor->fallback_x;
    y = actor->y;
    asm("" : "+r" (y));
    if (y == sentinel)
        y = actor->fallback_y;

    delta = x - target_x;
    asm("" : "+r" (delta));
    dx = delta >> 16;
    asm volatile("" : "+r" (dx) : : "memory");
    delta = y - target_y;
    asm("" : "+r" (delta));
    dy = delta >> 16;
    asm volatile("" : "+r" (dy) : : "memory");
    dy_squared = dy;
    asm volatile("" : "+r" (dy_squared) : : "memory");
    dy_squared *= dy;
    asm volatile("" : "+r" (dy_squared) : : "memory");
    dx_squared = dx;
    asm volatile("" : "+r" (dx_squared) : : "memory");
    dx_squared *= dx;
    asm volatile("" : "+r" (dx_squared) : : "memory");
    dx_squared += dy_squared;
    asm volatile("" : "+r" (dx_squared) : : "memory");
    result = 1;
    asm("" : "+r" (result));
    if (dx_squared > 0x40)
        result = 0;
    return result;
}
