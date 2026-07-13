extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __MapActor_SetPos(int actor_id, int x, int z);
extern void __MapActor_SetBehavior(int actor_id, void *script);
extern unsigned char actor_script[] asm("gScript_960__020097a8");

void OvlFunc_960_2008adc(void)
{
    if (!__GetFlag(0x9b7)) {
        register int actor_id asm("r0");
        register int x asm("r1");
        register int z asm("r2");

        __SetFlag(0x20e);
        /* Preserve the original position-argument construction order. */
        x = 0xf0;
        asm volatile("" : "+r"(x));
        z = 0xce;
        asm volatile("" : "+r"(x), "+r"(z));
        actor_id = 0xc;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(z));
        x <<= 15;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(z));
        z <<= 18;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(z));
        __MapActor_SetPos(actor_id, x, z);
        __MapActor_SetBehavior(0xc, actor_script);
    }
}
