extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8092b08(int actor, int value);

void OvlFunc_922_2009004(int actor, int x, int z)
{
    unsigned char *p = __MapActor_GetActor(actor);

    if (p != 0) {
        register int call_value asm("r1") = 3;
        register int call_actor asm("r0") = actor;
        register unsigned char *flags asm("r1");
        register int value asm("r3");
        register int mask asm("r2");

        asm volatile("" : "+r" (call_value), "+r" (call_actor));
        __Func_8092b08(call_actor, call_value);
        flags = p + 0x22;
        value = 2;
        asm volatile("" : "+r" (flags), "+r" (value));
        *flags = value;
        flags++;
        value = *flags;
        mask = 2;
        asm volatile("" : "+r" (flags), "+r" (value), "+r" (mask));
        mask |= value;
        *flags = mask;
        *(int *)(p + 8) = (x << 20) + 0x80000;
        *(int *)(p + 0x10) = (z << 20) + 0x80000;
    }
}
