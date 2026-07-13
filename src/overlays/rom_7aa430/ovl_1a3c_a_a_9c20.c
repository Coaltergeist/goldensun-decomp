struct Motion {
    unsigned char padding_00[8];
    int x;
    int y;
    int z;
    unsigned char padding_14[4];
    int wave_a;
    int wave_b;
    unsigned char padding_20[0x44];
    unsigned short timer;
    unsigned short padding_66;
    struct Motion *parent;
};

extern int __sin(int);

int OvlFunc_923_2009c20(struct Motion *motion)
{
    register unsigned short *timer_ptr asm("r2");
    register int timer asm("r3");
    register struct Motion *parent asm("r6");
    register int signed_timer asm("r0");
    int wave;

    timer_ptr = &motion->timer;
    asm volatile("" : "+r" (timer_ptr) : : "memory");
    timer = *timer_ptr;
    asm("" : "+r" (timer));
    timer += 1;
    parent = motion->parent;
    asm volatile("" : "+r" (parent) : : "memory");
    *timer_ptr = timer;
    signed_timer = (short)timer;
    asm("" : "+r" (signed_timer));
    if (signed_timer > 0x1f)
        return 0;

    wave = __sin(signed_timer << 10);
    motion->wave_a = wave;
    motion->wave_b = wave;
    motion->x = parent->x;
    motion->y += 0x10000;
    motion->z = parent->z;
    return 1;
}
