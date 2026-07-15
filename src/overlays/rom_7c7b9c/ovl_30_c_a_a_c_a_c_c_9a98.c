typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern void __CutsceneStart(void);
extern void __Func_80933f8(int, int, int, int);
extern void __WaitFrames(int frames);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __Func_800fe9c(void);
extern void OvlFunc_943_2009c14(int a, int b);

void OvlFunc_943_2009a98(void)
{
    u8 *actor;

    __CutsceneStart();
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        register int arg3 asm("r3");

        arg0 = 1;
        arg1 = 1;
        arg2 = 1;
        arg3 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg1 = -arg1;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg2 = -arg2;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg0 = -arg0;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        __Func_80933f8(arg0, arg1, arg2, arg3);
    }
    __WaitFrames(1);
    __MapActor_SetPos(0x14, 0, 0);
    __MapActor_SetPos(0x16, 0, 0);
    __MapActor_SetPos(0x18, 0, 0);
    __MapActor_SetPos(0x19, 0, 0);
    __MapActor_SetPos(0x1a, 0, 0);
    __MapActor_SetPos(0x1b, 0, 0);
    __MapActor_SetPos(0, 0, 0);
    __MapActor_SetPos(0x17, 0, 0);
    actor = __MapActor_GetActor(0x17);
    {
        register int v asm("r3") = 0xc0 << 6;
        register int x asm("r1") = 0xe8;
        asm volatile("" : "+r"(v), "+r"(x));
        *(u16 *)(actor + 6) = v;
        x <<= 16;
        __MapActor_SetPos(0x15, x, 0x28a0000);
    }
    actor = __MapActor_GetActor(0x15);
    {
        register int v asm("r3") = 0xb0 << 8;
        asm volatile("" : "+r"(v));
        *(u16 *)(actor + 6) = v;
    }
    {
        register int arg1 asm("r1");
        register int arg0 asm("r0");
        register int arg2 asm("r2");
        register int arg3 asm("r3");

        arg1 = 1;
        asm volatile("" : "+r"(arg1));
        arg0 = 0xe8;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        arg2 = 0x9f;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg1 = -arg1;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg2 <<= 18;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg3 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg0 <<= 16;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        __Func_80933f8(arg0, arg1, arg2, arg3);
    }
    __Func_800fe9c();
    __WaitFrames(1);
    OvlFunc_943_2009c14(0x17, 0x15);
}
