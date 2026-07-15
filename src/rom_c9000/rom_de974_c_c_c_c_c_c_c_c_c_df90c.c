typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern int *_GetBattleActor(u32 unit);
extern void _Actor_Stop(u8 *actor);
extern void _Actor_TravelTo(u8 *actor, s32 x, s32 y, s32 z);
extern void _Actor_SetAnim(u8 *actor, s32 anim);
extern s32 Func_8000948(s32 magSq);

void Func_80df90c(u32 unit1, u32 unit2, s32 speedDiv)
{
    int *battle1 = _GetBattleActor(unit1);
    int *battle2 = _GetBattleActor(unit2);
    register u8 *actor1 asm("r6") = (u8 *)battle1[0];
    u8 *actor2 = (u8 *)battle2[0];
    s32 scale;
    s32 x2, x1, dx;
    s32 z2, z1;
    s32 targetX, targetZ;

    scale = 0x50;
    x2 = *(s32 *)(actor2 + 8);
    x1 = *(s32 *)(actor1 + 8);
    dx = (x2 - x1) * scale / 100;
    z2 = *(s32 *)(actor2 + 0x10);
    z1 = *(s32 *)(actor1 + 0x10);

    {
        register s32 workReg asm("r0") = (z2 - z1) * scale / 100;
        register s32 dxReg asm("r5") = dx;
        register s32 x1Reg asm("r9") = x1;
        register s32 z1Reg asm("r8") = z1;
        register s32 speedDivReg asm("r11") = speedDiv;

        asm volatile(
            "add %1, %3\n\t"
            "add %2, %0\n\t"
            "asr %3, %3, #8\n\t"
            "asr %0, %0, #8\n\t"
            "add r2, %0, #0\n\t"
            "mul r2, %0\n\t"
            "add r3, %3, #0\n\t"
            "mul r3, %3\n\t"
            "add r3, r3, r2\n\t"
            "add %0, r3, #0\n\t"
            "ldr r2, =Func_8000948\n\t"
            "bl _call_via_r2\n\t"
            "mov r1, %4\n\t"
            "lsl %0, %0, #8\n\t"
            "bl __divsi3\n\t"
            "add r3, %5, #0\n\t"
            "mov r1, #1\n\t"
            "add r3, #0x58\n\t"
            "str %0, [%5, #0x34]\n\t"
            "str %0, [%5, #0x30]\n\t"
            "strb r1, [r3, #0]\n\t"
            "ldr r3, =0xab85\n\t"
            "str r3, [%5, #0x48]\n\t"
            "add r3, %5, #0\n\t"
            "mov r2, #0\n\t"
            "add r3, #0x5a\n\t"
            "str r2, [%5, #0x28]\n\t"
            "str r2, [%5, #0x44]\n\t"
            "add %0, %5, #0\n\t"
            "strb r1, [r3, #0]\n\t"
            "bl _Actor_Stop\n\t"
            : "+r"(workReg), "+r"(x1Reg), "+r"(z1Reg), "+r"(dxReg)
            : "r"(speedDivReg), "r"(actor1)
            : "r1", "r2", "r3", "r12", "lr", "cc", "memory");

        targetX = x1Reg;
        targetZ = z1Reg;
    }

    _Actor_TravelTo(actor1, targetX, 0, targetZ);
    _Actor_SetAnim(actor1, 2);
}
