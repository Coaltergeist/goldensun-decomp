extern unsigned char *__MapActor_GetActor(int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __SetFlag(int);

void OvlFunc_932_20084cc(void)
{
    unsigned char *actor_result = __MapActor_GetActor(9);
    register unsigned char *actor asm("r5");
    register int fifth asm("r3");
    register int sixth asm("r2");
    register unsigned char *flag_ptr asm("r2");

    fifth = 0x11;
    sixth = 0xd;
    actor = actor_result;
    asm volatile("" : "+r" (fifth), "+r" (sixth), "+r" (actor) : : "memory");
    __Func_8010704(0x1d, 1, 3, 1, fifth, sixth);
    if (actor != 0) {
        flag_ptr = actor;
        asm("" : "+r" (flag_ptr));
        flag_ptr += 0x55;
        *flag_ptr = 2;
    }
    __SetFlag(0x201);
}
