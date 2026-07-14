extern void __CutsceneStart(void);
extern void OvlFunc_927_2008ea8(unsigned int arg0, unsigned int arg1);
extern void OvlFunc_927_2008d90(int arg0, int arg1, int arg2, int arg3);
extern void __CutsceneWait(int frames);
extern void OvlFunc_927_2008e18(unsigned int arg0);
extern void __Func_8092950(int actor, int arg1);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __SetFlag(int flag);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __CutsceneEnd(void);

void OvlFunc_927_2009818(void)
{
    unsigned char *actor;

    __CutsceneStart();
    OvlFunc_927_2008ea8(0xe, 1);
    {
        register int arg1 asm("r1") = 0xd4;
        register int arg2 asm("r2") = 0xf0;
        register int arg3 asm("r3") = 0x79999;
        register int arg0 asm("r0");

        asm volatile("" : "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg2 <<= 1;
        asm volatile("" : "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg1 <<= 1;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg0 = 0xe;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        OvlFunc_927_2008d90(arg0, arg1, arg2, arg3);
    }
    __CutsceneWait(2);
    OvlFunc_927_2008e18(0xe);
    __Func_8092950(0xe, 0xf);
    actor = __MapActor_GetActor(0xe);
    __Actor_SetSpriteFlags(actor, 0);
    __CutsceneWait(0x1e);
    __SetFlag(0x305);
    {
        register int arg1 asm("r1") = 0xd4;
        register int arg2 asm("r2") = 0xf0;
        register int arg0 asm("r0");

        asm volatile("" : "+r"(arg1), "+r"(arg2));
        arg0 = 0x11;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg1 <<= 17;
        arg2 <<= 17;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        __MapActor_SetPos(arg0, arg1, arg2);
    }
    __CutsceneEnd();
}
