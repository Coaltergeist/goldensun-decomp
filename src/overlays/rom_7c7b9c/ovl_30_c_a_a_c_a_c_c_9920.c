typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 FieldActors_5160[] asm(".L5160");
extern u8 gScript_943__0200c980[];
extern u8 gScript_943__0200c628[];

extern void __CutsceneStart(void);
extern void __LoadFieldActors(const void *actors);
extern void __WaitFrames(int frames);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetBehavior(int actor_id, const void *script);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern u32 __GetFlag(u32 flag);
extern void OvlFunc_943_200c218(void);
extern void __CutsceneEnd(void);

void OvlFunc_943_2009920(void)
{
    u8 *actor;

    __CutsceneStart();
    __LoadFieldActors(FieldActors_5160);
    __WaitFrames(1);
    __MapActor_SetPos(0x14, 0, 0);
    {
        register int x asm("r1") = 0xee;
        register int actor_id asm("r0");
        register int y asm("r2");

        asm volatile("" : "+r"(x));
        actor_id = 0x17;
        asm volatile("" : "+r"(x), "+r"(actor_id));
        x <<= 16;
        asm volatile("" : "+r"(x), "+r"(actor_id));
        y = 0x2720000;
        asm volatile("" : "+r"(x), "+r"(actor_id), "+r"(y));
        __MapActor_SetPos(actor_id, x, y);
    }
    {
        register int x asm("r1") = 0x86;
        register int y asm("r2");
        register int actor_id asm("r0");

        asm volatile("" : "+r"(x));
        y = 0x2a60000;
        asm volatile("" : "+r"(x), "+r"(y));
        x <<= 17;
        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 0x16;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        __MapActor_SetPos(actor_id, x, y);
    }
    actor = __MapActor_GetActor(0x16);
    {
        register int zero asm("r3") = 0;
        asm volatile("" : "+r"(zero));
        *(unsigned short *)(actor + 6) = zero;
    }
    __MapActor_SetBehavior(0x16, gScript_943__0200c980);
    {
        u8 *p = __MapActor_GetActor(0x15) + 0x59;
        register int loaded asm("r2") = *p;
        register int c asm("r3") = 0x80;
        asm volatile("" : "+r"(loaded), "+r"(c));
        *p = c | loaded;
    }
    {
        register int x asm("r1") = 0xcccc;
        register int actor_id asm("r0");
        register int y asm("r2");

        asm volatile("" : "+r"(x));
        actor_id = 0x15;
        asm volatile("" : "+r"(x), "+r"(actor_id));
        y = 0x6666;
        asm volatile("" : "+r"(x), "+r"(actor_id), "+r"(y));
        __MapActor_SetSpeed(actor_id, x, y);
    }
    __MapActor_SetBehavior(0x15, gScript_943__0200c628);
    if (__GetFlag(0x109)) {
        OvlFunc_943_200c218();
    }
    __CutsceneEnd();
}
