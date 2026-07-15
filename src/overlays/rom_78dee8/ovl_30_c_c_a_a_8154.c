typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __PlaySound(int sound_id);
extern void __CopyMapTiles(int source_x, int source_y, int target_x, int target_y, int width, int height);
extern void __WaitFrames(int frames);
extern void __Func_8092b08(int actor, int value);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __Func_809228c(int actor, int x, int z);
extern void __CutsceneWait(int frames);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int map_id);
extern void __CutsceneEnd(void);

void OvlFunc_895_2008154(void)
{
    int width = 3;
    int height = 2;

    __CutsceneStart();
    __PlaySound(0xb5);
    __CopyMapTiles(0x10, 0x1c, 0x15, 3, width, height);
    __WaitFrames(10);
    __CopyMapTiles(0x10, 0x1e, 0x15, 3, width, height);
    __WaitFrames(10);
    {
        register int target_y asm("r3") = 3;
        register int target_x asm("r2");
        register int source_y asm("r1");
        register int source_x asm("r0");

        asm volatile("" : "+r"(target_y));
        target_x = 0x15;
        asm volatile("" : "+r"(target_y), "+r"(target_x));
        source_y = 0x20;
        asm volatile("" : "+r"(target_y), "+r"(target_x), "+r"(source_y));
        source_x = 0x10;
        asm volatile("" : "+r"(target_y), "+r"(target_x), "+r"(source_y), "+r"(source_x));
        __CopyMapTiles(source_x, source_y, target_x, target_y, width, height);
    }
    __WaitFrames(10);
    __Func_8092b08(0, 2);
    {
        register int actor asm("r0") = 0;
        register int speed_x asm("r1");
        register int speed_y asm("r2");

        asm volatile("" : "+r"(actor));
        speed_x = 0x9999;
        asm volatile("" : "+r"(actor), "+r"(speed_x));
        speed_y = 0x4ccc;
        asm volatile("" : "+r"(actor), "+r"(speed_x), "+r"(speed_y));
        __MapActor_SetSpeed(actor, speed_x, speed_y);
    }
    __Func_80921c4(0, 0x78, 0x62);
    __MapActor_SetAnim(0, 2);
    {
        register int z asm("r2") = 8;
        register int x asm("r1");
        register int actor asm("r0");

        asm volatile("" : "+r"(z));
        x = 0;
        asm volatile("" : "+r"(z), "+r"(x));
        z = -z;
        asm volatile("" : "+r"(z), "+r"(x));
        actor = 0;
        asm volatile("" : "+r"(z), "+r"(x), "+r"(actor));
        __Func_809228c(actor, x, z);
    }
    __CutsceneWait(10);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(2);
    __CutsceneEnd();
}
