typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __CutsceneStart(void);
extern void __Func_80933d4(int x, int y);
extern void __SetCameraTarget(int actor_id, int mode);
extern void __Func_8093530(void);
extern void __CutsceneWait(int frames);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern void __MapActor_Surprise(int actor_id, int emote);
extern void __Func_80925cc(int actor_id, int mode);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __PlaySound(int sound_id);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneEnd(void);

void OvlFunc_934_20091a0(void)
{
    u8 *actor;

    {
        register int flag asm("r0") = 0x80;
        asm volatile("" : "+r"(flag));
        flag <<= 2;
        if (__GetFlag(flag) != 0)
            return;
    }

    {
        register int flag asm("r0") = 0x80;
        asm volatile("" : "+r"(flag));
        flag <<= 2;
        __SetFlag(flag);
    }
    __CutsceneStart();
    {
        register int x asm("r0") = 0x80;
        register int y asm("r1") = 0x80;

        asm volatile("" : "+r"(x), "+r"(y));
        x <<= 9;
        asm volatile("" : "+r"(x));
        y <<= 6;
        __Func_80933d4(x, y);
    }
    {
        register int mode asm("r1") = 1;
        register int actor_id asm("r0") = 8;

        asm volatile("" : "+r"(mode), "+r"(actor_id));
        __SetCameraTarget(actor_id, mode);
    }
    __Func_8093530();
    __CutsceneWait(0x3c);
    {
        register int value asm("r1") = 0xc0;
        register int duration asm("r2") = 0x14;
        register int actor_id asm("r0") = 8;

        asm volatile("" : "+r"(value), "+r"(duration), "+r"(actor_id));
        value <<= 8;
        __Func_8092adc(actor_id, value, duration);
    }
    {
        register int emote asm("r1") = 0x81;
        register int actor_id asm("r0") = 8;

        asm volatile("" : "+r"(emote), "+r"(actor_id));
        emote <<= 1;
        __MapActor_Surprise(actor_id, emote);
    }
    {
        register int mode asm("r1") = 2;
        register int actor_id asm("r0") = 8;

        asm volatile("" : "+r"(mode), "+r"(actor_id));
        __Func_80925cc(actor_id, mode);
    }
    __CutsceneWait(0x14);
    {
        register int horizontal asm("r1") = 0x80;
        register int vertical asm("r2") = 0x80;
        register int actor_id asm("r0") = 8;

        asm volatile("" : "+r"(horizontal), "+r"(vertical), "+r"(actor_id));
        horizontal <<= 9;
        asm volatile("" : "+r"(horizontal));
        vertical <<= 8;
        __MapActor_SetSpeed(actor_id, horizontal, vertical);
    }
    {
        register int x asm("r1") = 0xc6;
        register int y asm("r2");
        register int actor_id asm("r0");

        asm volatile("" : "+r"(x));
        x <<= 2;
        asm volatile("" : "+r"(x));
        y = 0xf8;
        asm volatile("" : "+r"(y));
        actor_id = 8;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        __Func_80921c4(actor_id, x, y);
    }
    __PlaySound(0x98);

    actor = __MapActor_GetActor(8);
    {
        register int store_val asm("r3") = 0x80;
        register int x asm("r1");
        register int y asm("r2");

        asm volatile("" : "+r"(store_val));
        store_val <<= 12;
        asm volatile("" : "+r"(store_val));
        x = 0xc6;
        asm volatile("" : "+r"(x));
        y = 0x8c;
        asm volatile("" : "+r"(store_val), "+r"(x), "+r"(y));
        *(u32 *)(actor + 0x28) = store_val;
        asm volatile("" : "+r"(x), "+r"(y));
        x <<= 2;
        asm volatile("" : "+r"(x), "+r"(y));
        y <<= 1;
        asm volatile("" : "+r"(x), "+r"(y));
        __Func_80921c4(8, x, y);
    }
    __CutsceneWait(0x14);
    {
        register int value asm("r1") = 0xc0;
        register int actor_id asm("r0") = 8;

        asm volatile("" : "+r"(value), "+r"(actor_id));
        value <<= 8;
        asm volatile("" : "+r"(value), "+r"(actor_id));
        __Func_8092adc(actor_id, value, 0x14);
    }
    __CutsceneWait(0x1e);
    __CutsceneEnd();
}
