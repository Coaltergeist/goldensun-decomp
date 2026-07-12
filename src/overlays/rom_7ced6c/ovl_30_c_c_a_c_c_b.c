extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __Func_8012078(int arg0, int arg1, int arg2, int arg3);
extern void __SetFlag(int flag);

void OvlFunc_946_2009508(int actor_id)
{
    unsigned char *actor = __MapActor_GetActor(0xb);
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int arg3 asm("r3");

    if (actor != 0)
        actor[0x59] = 0;

    actor = __MapActor_GetActor(actor_id);
    __Actor_SetSpriteFlags(actor, 0);

    /* Preserve the original argument construction in r0-r3. */
    arg1 = 0x98;
    arg2 = 0xb8;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 <<= 17;
    arg2 <<= 17;
    arg3 = 0xfd;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    __Func_8012078(arg0, arg1, arg2, arg3);

    arg0 = 0x90;
    arg0 <<= 2;
    asm volatile("" : "+r"(arg0));
    __SetFlag(arg0);
}
