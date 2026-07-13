extern void __MapActor_SetSpeed(int actor, int speed, int acceleration);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __Func_80921c4(int actor, int x, int z);

void OvlFunc_933_2009874(void)
{
    register int actor __asm__("r0");
    register int speed __asm__("r1") = 0x80;
    register int acceleration __asm__("r2") = 0x80;

    __asm__ volatile ("" : "+r" (speed), "+r" (acceleration));
    acceleration <<= 7;
    actor = 8;
    __asm__ volatile ("" : "+r" (actor), "+r" (speed),
                           "+r" (acceleration));
    speed <<= 8;
    __MapActor_SetSpeed(actor, speed, acceleration);
    __MapActor_SetAnim(8, 1);
    __Func_80921c4(8, 0xa8, 0x60);
    __MapActor_SetAnim(8, 2);
}

__asm__(".align 2, 0\n"
        ".size OvlFunc_933_2009874, . - OvlFunc_933_2009874");
