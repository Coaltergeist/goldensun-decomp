typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

extern u8 *_GetUnit(u32 arg0);
extern void _CalcStats(u32 arg0);
extern u8 *GetBattleActor(u32 arg0);
extern int Func_80b78e4(u32 arg0, u8 *actor);

int Func_80bb588(u32 arg0)
{
    register u8 *unit asm("r1");
    register s32 off asm("r4");
    register u8 zero asm("r0");
    u8 *ptr;
    s32 count;

    unit = _GetUnit(arg0);
    off = 0x12f;
    __asm__ volatile ("" : "+r" (off));
    count = 3;
    zero = 0;
    __asm__ volatile ("" : "+r" (count), "+r" (zero));
    ptr = unit + off;
    do {
        count -= 1;
        *ptr = zero;
        ptr -= 1;
    } while (count >= 0);

    {
        register u8 *r1 asm("r1") = unit;
        __asm__ volatile (
            "ldr r0, =0x131\n"
            "mov r4, #0x99\n"
            "mov r3, #0\n"
            "add r2, r1, r0\n"
            "lsl r4, #1\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r0, #2\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            "add r4, #2\n"
            "add r2, r1, r0\n"
            "strb r3, [r2]\n"
            "add r2, r1, r4\n"
            "strb r3, [r2]\n"
            : : "r"(r1) : "r0", "r2", "r3", "r4", "cc", "memory"
        );
    }

    _CalcStats(arg0);
    Func_80b78e4(arg0, GetBattleActor(arg0));
}
