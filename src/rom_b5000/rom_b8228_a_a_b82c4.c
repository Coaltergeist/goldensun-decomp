typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void **GetBattleActor(u32 unit);
extern void _Actor_Stop(u8 *actor);
extern void _Actor_TravelTo(u8 *actor, s32 x, s32 y, s32 z);
extern void _Actor_SetAnim(u8 *actor, s32 anim);
extern s32 Func_8000948(s32 magSq);

void Func_80b82c4(u32 unit1, u32 unit2, s32 speedDiv, s32 arg4)
{
    void **battle1;
    void **battle2;
    register u8 *actor1 asm("r7");
    u8 *actor2;
    s32 scale;
    s32 x2, x1, dx;
    s32 z2, z1;

    battle1 = GetBattleActor(unit1);
    battle2 = GetBattleActor(unit2);
    actor1 = (u8 *)battle1[0];
    actor2 = (u8 *)battle2[0];

    scale = 0x4B;
    x2 = *(s32 *)(actor2 + 8);
    x1 = *(s32 *)(actor1 + 8);
    dx = (x2 - x1) * scale / 100;
    z2 = *(s32 *)(actor2 + 0x10);
    z1 = *(s32 *)(actor1 + 0x10);

    {
        register s32 workReg asm("r0") = (z2 - z1) * scale / 100;
        register s32 dxReg asm("r5") = dx;
        register s32 x1Reg asm("r10") = x1;
        register s32 z1Reg asm("r6") = z1;
        register s32 speedDivReg asm("r9") = speedDiv;
        register s32 arg4Reg asm("r11") = arg4;
        register s32 targetXReg asm("r8");

        asm volatile(
            "mov r3, %4\n\t"
            "add r3, %2\n\t"
            "add %3, %1\n\t"
            "asr %2, %2, #8\n\t"
            "asr %1, %1, #8\n\t"
            "mov r2, %1\n\t"
            "mul r2, %1\n\t"
            "mov %0, r3\n\t"
            "mov r3, %2\n\t"
            "mul r3, %2\n\t"
            "add r3, r2\n\t"
            "mov %1, r3\n\t"
            "ldr r2, =Func_8000948\n\t"
            "bl _call_via_r2\n\t"
            "mov r1, %5\n\t"
            "lsl %1, %1, #8\n\t"
            "bl __divsi3\n\t"
            "mov r3, r7\n\t"
            "add r3, #0x58\n\t"
            "mov r1, #1\n\t"
            "str %1, [r7, #0x34]\n\t"
            "str %1, [r7, #0x30]\n\t"
            "strb r1, [r3, #0]\n\t"
            "sub r3, #3\n\t"
            "ldrb r2, [r3, #0]\n\t"
            "mov r3, #4\n\t"
            "and r3, r2\n\t"
            "cmp r3, #0\n\t"
            "beq 1f\n\t"
            "mov r2, %6\n\t"
            "str r2, [r7, #0x28]\n\t"
            "1:\n\t"
            "mov r3, %6\n\t"
            "str r3, [r7, #0x28]\n\t"
            "ldr r3, =0xab85\n\t"
            "str r3, [r7, #0x48]\n\t"
            "mov r3, r7\n\t"
            "add r3, #0x5a\n\t"
            "strb r1, [r3, #0]\n\t"
            "mov r0, r7\n\t"
            "bl _Actor_Stop\n\t"
            : "=r"(targetXReg), "+r"(workReg), "+r"(dxReg), "+r"(z1Reg)
            : "r"(x1Reg), "r"(speedDivReg), "r"(arg4Reg)
            : "r1", "r2", "r3", "r12", "lr", "cc", "memory"
        );

        _Actor_TravelTo(actor1, targetXReg, 0, z1Reg);
    }

    _Actor_SetAnim(actor1, 2);
}
