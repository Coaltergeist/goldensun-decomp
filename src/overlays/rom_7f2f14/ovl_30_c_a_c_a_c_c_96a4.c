typedef unsigned char u8;
typedef unsigned int u32;
typedef short s16;
typedef int s32;

u8 *__MapActor_GetActor(s32 actor);
void __CopyMapTiles(s32, s32, s32, s32, s32, s32);
void __ClearFlag(s32 flag);
s32 __GetFlag(s32 flag);
void __CutsceneStart(void);
void __CutsceneWait(s32 frames);
void __SetFlag(s32 flag);
void __PlaySound(s32 sound);
void __CutsceneEnd(void);

void OvlFunc_968_20096a4(void)
{
    u8 *actor = __MapActor_GetActor(0);
    s32 x = *(s16 *)(actor + 0xa);
    s32 y = *(s16 *)(actor + 0x12);

    if ((u32)(x + 0xfffffd5c) > 7 || y < 0x314 || y >= 0x31c) {
        register s32 stack0 asm("r3");
        register s32 stack1 asm("r2");

        __CopyMapTiles(0x35, 0x32, 0x2a, 0x31, 1, 1);
        stack0 = 3;
        stack1 = 5;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __CopyMapTiles(0x37, 0x75, 0x29, 0x75, stack0, stack1);
        __ClearFlag(0x201);
        asm volatile(
            "mov r0, %0\n\t"
            "add r0, #0x55\n\t"
            "ldrb r1, [r0]\n\t"
            "mov r3, #1\n\t"
            "mov r2, #0\n\t"
            "orr r3, r1\n\t"
            "strb r3, [r0]\n\t"
            "str r2, [%0, #0x14]\n\t"
            "str r2, [%0, #0xc]"
            :
            : "r"(actor)
            : "r0", "r1", "r2", "r3", "memory", "cc");
    } else {
        register s32 flagSet asm("r0");
        asm volatile(
            "ldr r0, .L7+4\n\t"
            "bl __GetFlag"
            : "=r"(flagSet)
            :
            : "r1", "r2", "r3", "memory", "cc");
        if (flagSet == 0) {
            register s32 stack0 asm("r3");
            register s32 stack1 asm("r2");

            __CutsceneStart();
            __CutsceneWait(5);
            __CopyMapTiles(0x34, 0x32, 0x2a, 0x31, 1, 1);
            stack0 = 3;
            stack1 = 5;
            asm volatile("" : "+r"(stack0), "+r"(stack1));
            asm volatile(
                "str r3, [sp]\n\t"
                "str r2, [sp, #4]\n\t"
                "mov r1, #0x75\n\t"
                "mov r2, #0x29\n\t"
                "mov r3, #0x75\n\t"
                "mov r0, #0x34\n\t"
                "bl __CopyMapTiles"
                :
                :
                : "r0", "r1", "r2", "r3", "memory", "cc");
            asm volatile(
                "ldr r0, .L7+4\n\t"
                "bl __SetFlag"
                :
                :
                : "r0", "r1", "r2", "r3", "memory", "cc");
            __PlaySound(0xa1);
            actor[0x55] &= 0xfe;
            *(s32 *)(actor + 0x14) = 0xfffe0000;
            *(s32 *)(actor + 0xc) = 0xfffe0000;
            __CutsceneEnd();
        }
    }
}
