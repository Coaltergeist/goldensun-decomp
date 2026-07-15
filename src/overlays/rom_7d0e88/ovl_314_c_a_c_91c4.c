typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern volatile u32 iwram_3001e40[];
extern u8 *__MapActor_GetActor(int actor);
extern u32 __Random(void);
extern int _divsi3_RAM(int numerator, int denominator);
extern void OvlFunc_common0_10c(s32 x, s32 y, s32 z, s32 arg3,
                                 s32 arg4, s32 arg5, s32 arg6, void *config);

void OvlFunc_947_20091c4(void)
{
    u8 buffer[0x38];
    u8 *actor;
    u32 mask;
    u32 random;
    s32 x, z;

    actor = __MapActor_GetActor(0);
    mask = iwram_3001e40[0] & 3;
    if (mask == 0) {
        u8 *work = buffer + 0x10;

        *(s32 *)(work + 4) = 0xa;
        *(s32 *)(work + 8) = 0xb333;
        *(s32 *)(work + 0xc) = 0xb333;

        random = __Random();
        x = *(s32 *)(actor + 8) + (((random * 17 >> 16) - 8) << 16);

        random = __Random();
        z = *(s32 *)(actor + 0x10) + (((random * 17 >> 16) - 8) << 16);

        random = __Random();
        {
            register u32 numerator asm("r0");
            register s32 speed asm("r0");

            asm volatile(
                "mov r3, %1\n"
                "lsl r0, r3, #2\n"
                "add r0, r3\n"
                "lsr r0, #16\n"
                "mov r3, #0xc0\n"
                "lsl r3, #10\n"
                "lsl r0, #16\n"
                "add r0, r3\n"
                : "=r"(numerator)
                : "r"(random)
                : "r3", "cc");

            speed = _divsi3_RAM(numerator, 10);
            asm volatile(
                "ldr r3, =0x90001\n"
                "mov r2, %0\n"
                "ldr r1, [r2, #12]\n"
                "str r3, [sp, #8]\n"
                "mov r3, %1\n"
                "str %2, [sp, #0]\n"
                "str r3, [sp, #12]\n"
                "mov r0, %3\n"
                "mov r2, %4\n"
                "mov r3, #0\n"
                "str %5, [sp, #4]\n"
                "bl OvlFunc_common0_10c\n"
                :
                : "r"(actor), "r"(work), "r"(speed),
                  "r"(x), "r"(z), "r"(mask)
                : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
        }
    }
}
