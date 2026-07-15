typedef unsigned char u8;

extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MapActor_Surprise(int actor_id, int emote);
extern void __Func_80925cc(int actor_id, int mode);
extern void __CutsceneWait(int frames);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneEnd(void);
extern int OvlFunc_934_2008cf8(int arg0);

void OvlFunc_934_2009258(void)
{
    int cond1;
    int cond2;
    u8 *actor;

    cond1 = __GetFlag(0x200);
    if (cond1 == 0)
        return;

    {
        register int flag asm("r0") = 0x201;
        asm volatile("" : "+r"(flag));
        cond2 = __GetFlag(flag);
    }
    if (cond2 != 0)
        return;

    {
        register int flag asm("r0") = 0x201;
        asm volatile("" : "+r"(flag));
        __SetFlag(flag);
    }
    {
        register int flag asm("r0") = 0x302;
        asm volatile("" : "+r"(flag));
        __SetFlag(flag);
    }
    __CutsceneStart();

    {
        register int emote asm("r1") = 0x81;
        register int actor_id asm("r0");
        asm volatile("" : "+r"(emote));
        actor_id = 8;
        asm volatile("" : "+r"(actor_id), "+r"(emote));
        emote <<= 1;
        __MapActor_Surprise(actor_id, emote);
    }
    {
        register int mode asm("r1") = 2;
        register int actor_id asm("r0");
        asm volatile("" : "+r"(mode));
        actor_id = 8;
        asm volatile("" : "+r"(actor_id), "+r"(mode));
        __Func_80925cc(actor_id, mode);
    }
    __CutsceneWait(0x14);

    {
        register int horizontal asm("r1") = 0x80;
        register int vertical asm("r2") = 0x80;
        register int actor_id asm("r0");
        asm volatile("" : "+r"(horizontal), "+r"(vertical));
        actor_id = 8;
        asm volatile("" : "+r"(actor_id), "+r"(horizontal), "+r"(vertical));
        horizontal <<= 10;
        asm volatile("" : "+r"(horizontal), "+r"(vertical));
        vertical <<= 9;
        __MapActor_SetSpeed(actor_id, horizontal, vertical);
    }
    {
        register int x asm("r1") = 0xbe;
        register int y asm("r2") = 0x8c;
        register int actor_id asm("r0");
        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 8;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        x <<= 2;
        asm volatile("" : "+r"(x), "+r"(y));
        y <<= 1;
        __Func_80921c4(actor_id, x, y);
    }
    {
        register int x asm("r1") = 0xbe;
        register int y asm("r2") = 0x9c;
        register int actor_id asm("r0");
        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 8;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        x <<= 2;
        asm volatile("" : "+r"(x), "+r"(y));
        y <<= 1;
        __Func_80921c4(actor_id, x, y);
    }
    {
        register int x asm("r1") = 0xc6;
        register int y asm("r2") = 0x9c;
        register int actor_id asm("r0");
        asm volatile("" : "+r"(x), "+r"(y));
        x <<= 2;
        asm volatile("" : "+r"(x), "+r"(y));
        y <<= 1;
        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 8;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        __Func_80921c4(actor_id, x, y);
    }
    __CutsceneWait(0xa);
    {
        register int value asm("r1") = 0xc0;
        register int actor_id asm("r0");
        register int duration asm("r2");
        asm volatile("" : "+r"(value));
        actor_id = 8;
        asm volatile("" : "+r"(actor_id), "+r"(value));
        value <<= 8;
        asm volatile("" : "+r"(actor_id), "+r"(value));
        duration = 0x14;
        asm volatile("" : "+r"(actor_id), "+r"(value), "+r"(duration));
        __Func_8092adc(actor_id, value, duration);
    }

    actor = __MapActor_GetActor(8);
    *(int (**)(int))(actor + 0x6c) = OvlFunc_934_2008cf8;
    __CutsceneEnd();
}
