typedef unsigned int u32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int frames);
extern void __Func_80933d4(u32 a, u32 b);
extern void __Func_80933f8(int x, int y, int z, int mode);
extern void __Func_8093530(void);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __Func_8091ff0(int arg0);
extern void __StopTask(void (*task)(void));
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern void __PlaySound(int soundId);
extern void __Func_80925cc(int actor_id, int mode);
extern void __SetCameraTarget(int actor_id, int mode);
extern void __MapActor_DoAnim(int actor_id, int animation);
extern void __SetFlag(int flag);

extern void OvlFunc_931_2008d08(void);
extern void OvlFunc_931_20087b8(void);

void OvlFunc_931_2008d58(void)
{
    __CutsceneStart();
    __Func_80933d4(0x6666, 0xccc);

    {
        register int r0v asm("r0");
        register int r1v asm("r1");
        register int r2v asm("r2");
        register int r3v asm("r3");

        r0v = 0xfc;
        asm volatile("" : "+r"(r0v));
        r1v = 1;
        asm volatile("" : "+r"(r0v), "+r"(r1v));
        r2v = 0xe1;
        asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v));
        r3v = 1;
        asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v), "+r"(r3v));
        r2v <<= 17;
        asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v), "+r"(r3v));
        r1v = -r1v;
        asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v), "+r"(r3v));
        r0v <<= 14;
        __Func_80933f8(r0v, r1v, r2v, r3v);
    }

    __Func_8093530();
    __CutsceneWait(0x1e);

    {
        register int r1v asm("r1");
        register int r0v asm("r0");

        r1v = 1;
        asm volatile("" : "+r"(r1v));
        r0v = 0x12;
        __MapActor_SetAnim(r0v, r1v);
    }

    {
        register int r0v asm("r0");
        r0v = 1;
        asm volatile("" : "+r"(r0v));
        r0v = -r0v;
        __Func_8091ff0(r0v);
    }

    __StopTask(OvlFunc_931_2008d08);
    __CutsceneWait(0x14);
    __Func_809280c(0, 0x12, 0);

    {
        register int r1v asm("r1");
        register int r0v asm("r0");
        register int r2v asm("r2");

        r1v = 0x80;
        asm volatile("" : "+r"(r1v));
        r0v = 0;
        asm volatile("" : "+r"(r0v), "+r"(r1v));
        r1v <<= 7;
        asm volatile("" : "+r"(r0v), "+r"(r1v));
        r2v = 0;
        __Func_8092adc(r0v, r1v, r2v);
    }

    __Func_8092adc(0x12, 0, 0x14);
    __Func_8092adc(0x12, 0xd0 << 8, 0x28);
    __PlaySound(0x93);
    __Func_80925cc(0x12, 2);
    __CutsceneWait(0x14);

    {
        register int r1v asm("r1");
        register int r2v asm("r2");
        register int r0v asm("r0");

        r1v = 0xb0;
        asm volatile("" : "+r"(r1v));
        r2v = 0x28;
        asm volatile("" : "+r"(r1v), "+r"(r2v));
        r0v = 0x12;
        asm volatile("" : "+r"(r0v), "+r"(r1v), "+r"(r2v));
        r1v <<= 8;
        __Func_8092adc(r0v, r1v, r2v);
    }

    OvlFunc_931_20087b8();
    __SetCameraTarget(0, 1);
    __Func_8093530();
    __MapActor_DoAnim(0xe, 4);
    __SetFlag(0x8ff);
    __CutsceneEnd();
}
