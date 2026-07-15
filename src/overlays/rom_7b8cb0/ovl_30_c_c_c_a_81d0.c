typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int frames);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __MapActor_DoAnim(int actor, int anim);
extern u8 *__MapActor_GetActor(int actor);
extern void __Func_8093054(int actor, int message);
extern void __Func_8093040(int actor, int a, int b);
extern u8 *__Func_8093554(void);
extern void __Func_80933d4(u32 a, u32 b);
extern void __Func_80933f8(s32 x, s32 y, s32 z, s32 mode);
extern void __Func_809280c(int actor, int a, int b);
extern void __Func_8092adc(int actor, int a, int b);
extern void __Func_8093530(void);

void OvlFunc_931_20081d0(void)
{
    register u8 *actor asm("r5");
    u8 *state;
    int flag;

    __CutsceneStart();
    if (__GetFlag(0x909) != 0) {
        __MessageID(0x191f);
        __Func_8093054(0xe, 0);
    } else {
        __MapActor_SetAnim(0xe, 4);
        __MessageID(0x18c7);
        __Func_8093040(0xe, 0, 0xa);
        flag = __GetFlag(0x8ff);
        if (flag == 0) {
            actor = __MapActor_GetActor(0x12);
            state = __Func_8093554();
            state[0x55] = flag;
            asm volatile(
                "mov r1, #0x80\n\t"
                "mov r0, #0x80\n\t"
                "lsl r0, #9\n\t"
                "lsl r1, #6\n\t"
                "bl __Func_80933d4\n\t"
                "mov r3, #1\n\t"
                "ldr r0, [r5, #8]\n\t"
                "ldr r1, [r5, #0xc]\n\t"
                "ldr r2, [r5, #0x10]\n\t"
                "bl __Func_80933f8\n\t"
                "mov r1, #0x80\n\t"
                "mov r0, #0\n\t"
                "lsl r1, #7\n\t"
                "mov r2, #0\n\t"
                "bl __Func_809280c"
                : : "r" (actor) : "r0", "r1", "r2", "r3", "cc", "memory");
            __Func_8092adc(0xe, 0x3000, 0);
            __Func_8093530();
            __CutsceneWait(0x78);
            {
                u8 *actor2 = __MapActor_GetActor(0);
                __Func_80933f8(*(s32 *)(actor2 + 8), *(s32 *)(actor2 + 0xc), *(s32 *)(actor2 + 0x10), 1);
            }
            __Func_8093530();
        }
        __MapActor_DoAnim(0xe, 4);
    }
    __CutsceneEnd();
}
