extern void __DeleteActor(unsigned char *actor);

int OvlFunc_911_20080cc(unsigned char *actor)
{
    *(int *)(actor + 8) += *(int *)(actor + 0x24);
    {
        register int vertical_speed __asm__("r2") = *(int *)(actor + 0x2c);

        *(int *)(actor + 0x10) += vertical_speed;
        __asm__ volatile ("" : "+r" (vertical_speed));
        vertical_speed -= 0xa3d;
        *(int *)(actor + 0x2c) = vertical_speed;
    }
    *(int *)(actor + 0x18) += 0x600;
    *(int *)(actor + 0x1c) += 0x600;
    __asm__ volatile ("" : : : "memory");
    {
        register short *timer __asm__("r2") = (short *)(actor + 0x64);
        short remaining;

        __asm__ volatile ("" : "+r" (timer));
        remaining = --*timer;
        if (remaining == 0) {
            __DeleteActor(actor);
        }
    }
    return 1;
}
