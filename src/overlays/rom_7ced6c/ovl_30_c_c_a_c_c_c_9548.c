extern unsigned char *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(unsigned char *, int);
extern void __Func_8012078(int, int, int, int);
extern void __SetFlag(int);

void OvlFunc_946_2009548(int actor_id)
{
    unsigned char *actor = __MapActor_GetActor(12);
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int arg3 asm("r3");

    if (actor != 0)
        actor[0x59] = 0;
    __Actor_SetSpriteFlags(__MapActor_GetActor(actor_id), 0);
    arg1 = 0xa0;
    arg2 = 0xb8;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 <<= 15;
    arg2 <<= 17;
    arg3 = 0xfd;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    __Func_8012078(arg0, arg1, arg2, arg3);
    __SetFlag(0x241);
}
