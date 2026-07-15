typedef unsigned char u8;
typedef int s32;

typedef struct MapActor {
    u8 pad00[8];
    s32 x;
    s32 value0c;
    s32 y;
    u8 pad14[0x0f];
    u8 value23;
    u8 pad24[0x31];
    u8 value55;
} MapActor;

extern void __Func_8010704(int, int, int, int, int, int);
extern void Func_8010704_NoArgs(void) asm("__Func_8010704");
extern MapActor *__MapActor_GetActor(int);
extern int __Func_8011f54(int, int, int);
extern void __SetFlagByte(int, int);
extern void SetFlagByte_NoArgs(void) asm("__SetFlagByte");

void OvlFunc_954_20081a8(void)
{
    MapActor *actor;
    volatile int stackArgs[2];
    int result;
    int x;
    int y;

    asm volatile(
        "mov r3, #0x17\n\t"
        "mov r2, #0xc\n\t"
        "str r3, [sp]\n\t"
        "str r2, [sp, #4]\n\t"
        "mov r3, #1\n\t"
        "mov r1, #0xd\n\t"
        "mov r2, #3\n\t"
        "mov r0, #0x1b"
        ::: "r0", "r1", "r2", "r3", "memory");
    Func_8010704_NoArgs();
    actor = __MapActor_GetActor(9);
    result = __Func_8011f54(0, actor->x, actor->y);
    if (actor->value0c == 0 && result == 0) {
        actor->value23 = 2;
        actor->value55 = 0;
        asm volatile(
            "ldr r2, [r5, #8]\n\t"
            "ldr r3, [r5, #0x10]\n\t"
            "asr r2, #20\n\t"
            "asr r3, #20\n\t"
            "str r2, [sp]\n\t"
            "str r3, [sp, #4]\n\t"
            "mov r0, #0xe\n\t"
            "mov r1, #0xd\n\t"
            "mov r2, #1\n\t"
            "mov r3, #1"
            ::: "r0", "r1", "r2", "r3", "memory");
        Func_8010704_NoArgs();
    }

    actor = __MapActor_GetActor(10);
    asm volatile("mov r5, r0" ::: "r5");
    asm volatile(
        "ldr r1, [r5, #8]\n\t"
        "mov r0, #0xc4\n\t"
        "asr r1, #20\n\t"
        "lsl r0, #2"
        ::: "r0", "r1");
    SetFlagByte_NoArgs();
    asm volatile(
        "ldr r2, [r5, #8]\n\t"
        "ldr r3, [r5, #0x10]\n\t"
        "asr r2, #20\n\t"
        "asr r3, #20\n\t"
        "str r2, [sp]\n\t"
        "str r3, [sp, #4]\n\t"
        "mov r0, #0xe\n\t"
        "mov r1, #0xd\n\t"
        "mov r2, #1\n\t"
        "mov r3, #1"
        ::: "r0", "r1", "r2", "r3", "memory");
    Func_8010704_NoArgs();
}
