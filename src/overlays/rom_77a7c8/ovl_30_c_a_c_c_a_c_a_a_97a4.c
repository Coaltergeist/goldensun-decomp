extern unsigned char *__MapActor_GetActor(int actor_id);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __PlaySound(int sound);
extern void __Actor_SetAnim(unsigned char *actor, int animation);

void OvlFunc_881_20097a4(void)
{
    unsigned char *actor1;
    unsigned char *actor2;

    actor1 = __MapActor_GetActor(0xf);
    actor2 = __MapActor_GetActor(0xe);
    *(int *)(actor1 + 8) = *(int *)(actor2 + 8);
    *(int *)(actor1 + 0x10) = *(int *)(actor2 + 0x10);
    if (*(int *)(actor1 + 0xc) < (0xa0 << 12)) {
        *(int *)(actor1 + 0xc) = 0xa0 << 12;
        {
            register int flag asm("r0") = 0x80;
            flag <<= 2;
            asm volatile("" : "+r"(flag));
            if (__GetFlag(flag) == 0) {
                __PlaySound(0x91);
                __Actor_SetAnim(actor1, 3);
                {
                    register int flag2 asm("r0") = 0x80;
                    asm volatile("" : "+r"(flag2));
                    flag2 <<= 2;
                    asm volatile("" : "+r"(flag2));
                    __SetFlag(flag2);
                }
                {
                    register short *p asm("r2") = (short *)(actor1 + 0x64);
                    register int one asm("r3") = 1;
                    asm volatile("" : "+r"(p), "+r"(one));
                    *p = (short)one;
                }
            }
        }
    }
}
