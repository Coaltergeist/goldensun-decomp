extern int __sin(int angle);

int OvlFunc_924_200d1b0(unsigned char *actor)
{
    register short *timer asm("r2") = (short *)(actor + 0x64);
    register int timer_value asm("r3") = *(unsigned short *)timer;
    register unsigned char *target asm("r6");
    register int signed_timer asm("r0");
    int scale;

    timer_value++;
    asm volatile("" : "+r" (timer), "+r" (timer_value));
    target = *(unsigned char **)(actor + 0x68);
    asm volatile("" : "+r" (timer), "+r" (timer_value), "+r" (target));
    *timer = timer_value;
    signed_timer = (short)timer_value;
    asm volatile("" : "+r" (signed_timer));
    if (signed_timer > 0x1f)
        return 0;
    scale = __sin(signed_timer << 10);
    *(int *)(actor + 0x18) = scale;
    *(int *)(actor + 0x1c) = scale;
    *(int *)(actor + 8) = *(int *)(target + 8);
    *(int *)(actor + 0xc) += 0x10000;
    *(int *)(actor + 0x10) = *(int *)(target + 0x10);
    return 1;
}
