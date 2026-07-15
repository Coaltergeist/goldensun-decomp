typedef unsigned short u16;

extern unsigned char FieldActors_5160[] asm(".L5160");

extern void __CutsceneStart(void);
extern void __LoadFieldActors(const void *actors);
extern void __WaitFrames(int frames);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __Func_8092950(int actor, int value);
extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __SetCameraTarget(int actor_id, int mode);
extern void __Func_800fe9c(void);
extern void __MapActor_SetIdle(int actor_id);
extern void OvlFunc_943_2009c14(int a, int b);

void OvlFunc_943_2009b58(void)
{
    unsigned char *actor;

    __CutsceneStart();
    __LoadFieldActors(FieldActors_5160);
    __WaitFrames(1);
    {
        register int aid asm("r0");
        register int x asm("r1") = 0xe8;
        register int y asm("r2");
        asm volatile("" : "+r"(x));
        y = 0x9f;
        asm volatile("" : "+r"(x), "+r"(y));
        y <<= 18;
        asm volatile("" : "+r"(x), "+r"(y));
        aid = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(aid));
        x <<= 16;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(aid));
        __MapActor_SetPos(aid, x, y);
    }
    __Func_8092950(0, 0xf);
    actor = __MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    __WaitFrames(1);
    __SetCameraTarget(0, 0);
    __Func_800fe9c();
    __WaitFrames(1);
    __MapActor_SetIdle(0x16);
    __MapActor_SetIdle(0x15);
    __WaitFrames(1);
    __MapActor_SetPos(0x16, 0, 0);
    __MapActor_SetPos(0x15, 0, 0);
    __MapActor_SetPos(0x14, 0, 0);
    actor = __MapActor_GetActor(0x14);
    {
        int v = 0xc0 << 6;
        int x2 = 0xe8;
        asm volatile("" : "+r"(x2));
        *(u16 *)(actor + 6) = v;
        __MapActor_SetPos(0x17, x2 << 16, 0x28a0000);
    }
    actor = __MapActor_GetActor(0x17);
    {
        int v = 0xb0 << 8;
        *(u16 *)(actor + 6) = v;
    }
    __WaitFrames(1);
    OvlFunc_943_2009c14(0x14, 0x17);
}
