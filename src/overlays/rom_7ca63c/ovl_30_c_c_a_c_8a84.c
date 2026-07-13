extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Func_8092b08(int actor_id, int value);
extern unsigned int __Random(void);
extern void __MapActor_SetBehavior(int actor_id, const void *script);
extern const unsigned char gScript_944__020093a4[];

void OvlFunc_944_2008a84(int actor_id_arg)
{
    register int actor_id asm("r5") = actor_id_arg;
    register unsigned char *actor asm("r6");
    register unsigned int value asm("r0");
    register unsigned int arg2 asm("r2");
    register unsigned int arg3 asm("r3");

    actor = __MapActor_GetActor(actor_id);
    __Func_8092b08(actor_id, 1);

    arg2 = (unsigned int)actor;
    arg2 += 0x55;
    arg3 = 0;
    asm volatile("" : "+r"(arg2), "+r"(arg3));
    *(unsigned char *)arg2 = arg3;

    value = __Random();
    arg3 = (unsigned int)actor;
    arg3 += 0x64;
    value >>= 15;
    *(unsigned short *)arg3 = value;

    value = __Random();
    arg3 = (unsigned int)actor;
    arg3 += 0x66;
    value >>= 15;
    *(unsigned short *)arg3 = value;

    value = __Random();
    value <<= 2;
    value >>= 16;
    arg2 = 0xc0;
    arg2 <<= 11;
    value <<= 16;
    value += arg2;
    *(unsigned int *)(actor + 0x0c) = value;

    value = __Random();
    arg3 = value << 1;
    arg3 += value;
    arg2 = (unsigned int)-0x3000;
    arg3 <<= 13;
    arg3 >>= 16;
    arg3 += arg2;
    *(unsigned int *)(actor + 0x4c) = arg3;

    arg3 = 0xa0;
    arg3 <<= 9;
    *(unsigned int *)(actor + 0x18) = arg3;
    *(unsigned int *)(actor + 0x1c) = arg3;
    __MapActor_SetBehavior(actor_id, gScript_944__020093a4);
}
