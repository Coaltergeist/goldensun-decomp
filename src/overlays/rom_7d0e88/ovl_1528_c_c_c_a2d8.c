typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

extern volatile u32 iwram_3001e40[];
extern u32 __Random(void);
extern int _divsi3_RAM(int numerator, int denominator);
extern void OvlFunc_common0_10c(s32 x, s32 y, s32 z, s32 arg3,
                                 s32 arg4, s32 arg5, s32 arg6, void *config);

int OvlFunc_947_200a2d8(u8 *actor)
{
    u8 buffer[0x38];
    u32 mask;
    s32 x, y, z;
    register s32 speed asm("r0");

    mask = iwram_3001e40[0] & 7;
    if (mask != 0)
        return 0;

    {
        u8 *work = buffer + 0x10;

        *(s32 *)(work + 4) = 7;
        *(s32 *)(work + 8) = 0xb333;
        *(s32 *)(work + 0xc) = 0xb333;

        x = *(s32 *)(actor + 8) + (((__Random() * 17 >> 16) - 8) << 16);
        y = *(s32 *)(actor + 0xc) + (((__Random() * 17) >> 16) << 16);
        z = *(s32 *)(actor + 0x10) + (((__Random() * 17 >> 16) - 8) << 16);
        speed = _divsi3_RAM((((__Random() * 5) >> 16) << 16) + 0x30000, 10);

        asm volatile(
            "ldr r3, =0x90001\n"
            "mov r2, %0\n"
            "str %1, [sp, #0]\n"
            "str r3, [sp, #8]\n"
            "str r2, [sp, #12]\n"
            "mov r0, %2\n"
            "mov r1, %3\n"
            "mov r2, %4\n"
            "mov r3, #0\n"
            "str %5, [sp, #4]\n"
            "bl OvlFunc_common0_10c\n"
            :
            : "r"(work), "r"(speed), "r"(x), "r"(y), "r"(z), "r"(mask)
            : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
    }
    return 0;
}
