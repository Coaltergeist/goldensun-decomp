typedef unsigned int u32;

extern int __Random(void);
extern void __Actor_SetAnim(void *actor, int animation);

int OvlFunc_936_2008040(void *actor_argument)
{
    register unsigned char *actor asm("r5") = actor_argument;
    register short *timer asm("r6") = (short *)(actor + 0x66);
    register int timer_value asm("r3");
    register int zero asm("r2");

    asm volatile ("mov r2, #0\n\tldrsh r3, [r6, r2]"
                  : "=r" (zero), "=r" (timer_value)
                  : "r" (timer));
    if (timer_value == 0) {
        u32 choice = ((u32)__Random() << 3) >> 16;

        switch (choice) {
        case 0:
            __Actor_SetAnim(actor, 3);
            break;
        case 1:
            __Actor_SetAnim(actor, 4);
            break;
        case 3:
        case 4:
            *(short *)(actor + 6) = *(short *)(actor + 6) +
                (short)(((u32)__Random() << 15) >> 16);
            break;
        }

        {
            int random = __Random();
            register u32 new_timer asm("r3") = (u32)(random * 0x50) >> 16;
            *timer = new_timer;
            if (new_timer == 0)
                goto done;
        }
    }

    timer_value = *(volatile unsigned short *)timer;
    timer_value = timer_value - 1;
    *timer = timer_value;
done:
    return 1;
}
