typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    s16 x;
    s16 y;
} Point16;

extern u8 *GetUnit(u32 unitId);
extern u8 *GetEnemyInfo(u8 enemyId);
extern int Func_80797fc(u8 unit, u8 *stats, s32 *output);
extern u8 EnemyTable[] asm(".L88e38");
extern Point16 Data_88df8[] asm(".L88df8");
extern int __modsi3(int value, int divisor);
extern int __divsi3(int numerator, int denominator);

int Func_80798e0(u32 a, Point16 *b)
{
    register Point16 *dest asm("r9") = b;
    register u8 *unit asm("r2");
    register u32 classId asm("r3");

    asm volatile("" : "+r"(dest));

    unit = GetUnit(a);
    asm volatile(
        "ldr r0, =0x129\n\t"
        "add r3, %1, r0\n\t"
        "ldrb %0, [r3]"
        : "=r" (classId)
        : "r" (unit)
        : "r0", "cc");
    {
    if (classId == 0) {
        register s32 i asm("r7");

        asm volatile(
            "mov r1, #0x94\n\t"
            "lsl r1, r1, #1\n\t"
            "add r3, %1, r1\n\t"
            "ldrb r0, [r3]\n\t"
            "bl GetEnemyInfo\n\t"
            "add r0, r0, #0x34\n\t"
            "ldrb r0, [r0]\n\t"
            "cmp r0, #0x2b\n\t"
            "bls 1f\n\t"
            "mov r0, #0\n\t"
            "1:\n\t"
            "lsl r3, r0, #1\n\t"
            "ldr r2, =.L88e38\n\t"
            "add r3, r3, r0\n\t"
            "lsl r3, r3, #3\n\t"
            "add r3, r3, r2\n\t"
            "mov r2, r3\n\t"
            "mov %0, #0\n\t"
            "mov r1, %2\n\t"
            "add r2, r2, #8\n\t"
            "2:\n\t"
            "ldmia r2!, {r3}\n\t"
            "add %0, %0, #1\n\t"
            "stmia r1!, {r3}\n\t"
            "cmp %0, #3\n\t"
            "ble 2b"
            : "=r" (i)
            : "r" (unit), "r" (dest)
            : "r0", "r1", "r2", "r3", "r14", "memory", "cc");
    } else {
        s32 frame[5];

        asm volatile(
            "mov r0, #0x94\n\t"
            "lsl r0, r0, #1\n\t"
            "add r3, %0, r0\n\t"
            "ldrb r0, [r3]\n\t"
            "add r3, sp, #4\n\t"
            "mov r1, %0\n\t"
            "mov r8, r3\n\t"
            "add r1, r1, #0xf8\n\t"
            "mov r2, r8\n\t"
            "bl Func_80797fc\n\t"
            "ldr r0, =.L88df8\n\t"
            "mov r4, #0\n\t"
            "mov sl, r0\n\t"
            "mov r7, #3\n\t"
            "1:\n\t"
            "mov r1, r8\n\t"
            "ldr r5, [r4, r1]\n\t"
            "mov r1, #0xa\n\t"
            "mov r0, r5\n\t"
            "str r4, [sp, #0]\n\t"
            "bl __modsi3\n\t"
            "mov r1, #0xa\n\t"
            "mov r6, r0\n\t"
            "mov r0, r5\n\t"
            "bl __divsi3\n\t"
            "ldr r4, [sp, #0]\n\t"
            "cmp r0, #0xf\n\t"
            "ble 2f\n\t"
            "mov r0, #0xf\n\t"
            "2:\n\t"
            "cmp r0, #0\n\t"
            "bge 3f\n\t"
            "mov r0, #0\n\t"
            "3:\n\t"
            "lsl r2, r0, #2\n\t"
            "mov r3, %1\n\t"
            "mov r0, sl\n\t"
            "add r1, r4, r3\n\t"
            "ldrh r3, [r0, r2]\n\t"
            "add r3, r3, r6\n\t"
            "strh r3, [r1]\n\t"
            "add r2, sl\n\t"
            "ldrh r3, [r2, #2]\n\t"
            "sub r7, r7, #1\n\t"
            "add r3, r3, r6\n\t"
            "strh r3, [r1, #2]\n\t"
            "add r4, r4, #4\n\t"
            "cmp r7, #0\n\t"
            "bge 1b"
            :
            : "r" (unit), "r" (dest), "m" (frame[0])
            : "r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r10",
              "r14", "memory", "cc");
    }
    }
}
