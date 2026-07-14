extern void __CutsceneStart(void);
extern void OvlFunc_927_2008ea8(unsigned int arg0, unsigned int arg1);
extern void __Func_80933f8(int arg0, int arg1, int arg2, int arg3);
extern void OvlFunc_927_2008d90(int arg0, int arg1, int arg2, int arg3);
extern void OvlFunc_927_2008e18(unsigned int arg0);
extern void __Func_8092950(int actor, int arg1);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __CutsceneWait(int frames);
extern void __SetFlag(int flag);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __CutsceneEnd(void);

void OvlFunc_927_200a004(void)
{
    unsigned char *actor;

    __CutsceneStart();
    OvlFunc_927_2008ea8(0x12, 1);
    {
        register int arg0 asm("r0") = 0xba;
        register int arg1 asm("r1") = 1;
        register int arg2 asm("r2") = 0xfc;
        register int arg3 asm("r3");

        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg0 <<= 18;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg1 = -arg1;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg2 <<= 17;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg3 = 1;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        __Func_80933f8(arg0, arg1, arg2, arg3);
    }
    {
        register int arg1 asm("r1") = 0xba;
        register int arg2 asm("r2") = 0xfc;
        register int arg3 asm("r3") = 0x90;
        register int arg0 asm("r0");

        asm volatile("" : "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg3 <<= 12;
        asm volatile("" : "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg2 <<= 1;
        asm volatile("" : "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg1 <<= 2;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg0 = 0x12;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        OvlFunc_927_2008d90(arg0, arg1, arg2, arg3);
    }
    OvlFunc_927_2008e18(0x12);
    __Func_8092950(0x12, 0xf);
    actor = __MapActor_GetActor(0x12);
    __Actor_SetSpriteFlags(actor, 0);
    __CutsceneWait(0x1e);
    __SetFlag(0x30a);
    {
        register int arg1 asm("r1") = 0xba;
        register int arg2 asm("r2") = 0xfc;
        register int arg0 asm("r0");

        asm volatile("" : "+r"(arg1), "+r"(arg2));
        arg0 = 0x16;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg1 <<= 18;
        arg2 <<= 17;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        __MapActor_SetPos(arg0, arg1, arg2);
    }
    __CutsceneEnd();
}
