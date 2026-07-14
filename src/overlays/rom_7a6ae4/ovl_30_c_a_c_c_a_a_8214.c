extern void __CutsceneStart(void);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __SetFlag(int flag);
extern void __CutsceneWait(int frames);
extern void __MapActor_DoAnim(int actor, int animation);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8092b08(int actor, int value);
extern void __Func_8010704(int x, int y, int width, int height,
                           int sourceX, int sourceY);
extern void __CutsceneEnd(void);

void OvlFunc_920_2008214(void)
{
    __CutsceneStart();
    __MapActor_SetPos(8, 0, 0);
    __SetFlag(0x883);
    __CutsceneWait(0x28);
    __MapActor_DoAnim(0xf, 2);
    {
        register unsigned char *actor asm("r0") = __MapActor_GetActor(0xf);
        actor[0x55] = 0;
    }
    {
        register unsigned char *actor asm("r0") = __MapActor_GetActor(0xf);
        register unsigned int flag asm("r3") = 2;
        actor += 0x23;
        flag |= *actor;
        *actor = flag;
    }
    __Func_8092b08(0xf, 2);
    {
        register int sourceX asm("r3") = 0x12;
        register int sourceY asm("r2") = 0xe;

        /* GCC must load both stack arguments before storing either one. */
        asm volatile("" : "+r"(sourceX), "+r"(sourceY));
        __Func_8010704(0, 0, 1, 1, sourceX, sourceY);
    }
    __CutsceneEnd();
}
