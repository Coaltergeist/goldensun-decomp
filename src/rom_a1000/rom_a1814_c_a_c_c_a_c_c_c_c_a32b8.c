typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001f2c;
extern int Func_80a9e48(u16 value, u8 first, u8 second);
extern void _PlaySound(int soundId);
extern void _Func_80164ac(void *object);
extern void Func_80a1d08(int value, int first, int second);
extern void Func_80aa448(int value);
extern void _CalcStats(u8 unitId);

int Func_80a32b8(void)
{
    register u8 *state asm("r5");
    register u8 *firstUnit asm("r7");
    register u8 *secondUnit asm("r8");
    register int result asm("r6");
    register int negativeOne asm("r3");

    asm volatile(
        "ldr r3, =iwram_3001f2c\n\t"
        "mov r2, #0xba\n\t"
        "ldr r5, [r3]\n\t"
        "lsl r2, #1\n\t"
        "add r3, r5, r2\n\t"
        "ldrh r0, [r3]\n\t"
        "ldr r3, =0x21a\n\t"
        "add r2, #0xa7\n\t"
        "add r7, r5, r3\n\t"
        "add r2, r5\n\t"
        "ldrb r1, [r7]\n\t"
        "mov r8, r2\n\t"
        "ldrb r2, [r2]\n\t"
        "bl Func_80a9e48"
        :
        :
        : "r0", "r1", "r2", "r3", "lr", "memory");
    asm volatile("" : "=r" (state), "=r" (firstUnit), "=r" (secondUnit));
    asm volatile(
        "mov r3, #1\n\t"
        "mov r6, r0\n\t"
        "neg r3, r3"
        : "=r" (result), "=r" (negativeOne)
        :
        : "r0");

    if (result == negativeOne) {
        _PlaySound(0x72);
        _Func_80164ac(*(void **)(state + 0x2c));
        asm volatile(
            "ldr r2, =0x25a\n\t"
            "add r3, r5, r2\n\t"
            "mov r2, #0\n\t"
            "ldrsh r0, [r3, r2]\n\t"
            "ldr r3, =0xbef\n\t"
            "mov r2, r6\n\t"
            "add r0, r3\n\t"
            "mov r1, r6\n\t"
            "bl Func_80a1d08"
            :
            : "r" (state), "r" (result)
            : "r0", "r1", "r2", "r3", "lr", "memory");
        asm volatile(
            "ldr r3, =0x222\n\t"
            "add r2, r5, r3\n\t"
            "mov r3, #1\n\t"
            "strh r3, [r2]"
            :
            : "r" (state)
            : "r2", "r3", "memory");
        return result;
    }

    asm volatile(
        "mov r2, #0xbc\n\t"
        "lsl r2, #1\n\t"
        "add r3, r5, r2\n\t"
        "ldrh r3, [r3]\n\t"
        "ldr r0, =0x1ff\n\t"
        "and r0, r3\n\t"
        "bl Func_80aa448"
        :
        : "r" (state)
        : "r0", "r1", "r2", "r3", "lr", "memory");
    _CalcStats(*firstUnit);
    _CalcStats(*secondUnit);
    return 1;
}
