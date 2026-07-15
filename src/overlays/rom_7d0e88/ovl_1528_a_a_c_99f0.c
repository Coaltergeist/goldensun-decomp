typedef unsigned char u8;
typedef int s32;

struct Actor {
    u8 pad0[8];
    s32 x;
    s32 y;
    s32 z;
    u8 pad1[15];
    u8 flags;
    u8 pad2[44];
    u8 *sprite;
};

int OvlFunc_947_20099f0(struct Actor *param_1, struct Actor *param_2)
{
    register struct Actor *A asm("r6") = param_1;
    register struct Actor *B asm("r5") = param_2;
    register s32 t0 asm("r0");
    register s32 t1 asm("r1");
    register s32 t2 asm("r2");
    register s32 t3 asm("r3");
    register s32 t4 asm("r4");

    t4 = B->x;
    t1 = A->x;
    t0 = 0;
    if (t4 != t1)
        goto L1a10;
    t2 = B->y;
    t3 = A->y;
    if (t2 != t3)
        goto L1a10;
    t2 = B->z;
    t3 = A->z;
    if (t2 == t3)
        goto end;
L1a10:
    t2 = (s32)0xfff00000;
    t3 = t1 + t2;
    if (t3 >= t4)
        goto end;
    t2 = 0x100000;
    t3 = t1 + t2;
    if (t4 >= t3)
        goto end;
    t3 = B->y;
    if (t3 >= 0)
        goto L1a2c;
    t1 = 0xffff;
    t3 = t3 + t1;
L1a2c:
    t2 = t3 >> 16;
    t3 = A->y;
    if (t3 >= 0)
        goto L1a38;
    t1 = 0xffff;
    t3 = t3 + t1;
L1a38:
    t3 = t3 >> 16;
    if (t2 != t3)
        goto end;
    t3 = A->z;
    t2 = B->z;
    if (t3 <= t2)
        goto end;
    t1 = (s32)0xffe00000;
    t3 = t3 + t1;
    if (t3 >= t2)
        goto end;

    asm volatile(
        "ldr r3, [r6, #0x50]\n\t"
        "ldrb r3, [r3, #9]\n\t"
        "lsl r1, r3, #28\n\t"
        "ldr r3, [r5, #0x50]\n\t"
        "ldrb r3, [r3, #9]\n\t"
        "lsl r3, r3, #28\n\t"
        "lsr r2, r1, #30\n\t"
        "lsr r3, r3, #30\n\t"
        "cmp r2, r3\n\t"
        "bls 1f\n\t"
        "mov r0, r5\n\t"
        "add r0, r0, #0x23\n\t"
        "ldrb r2, [r0]\n\t"
        "mov r3, #0xfe\n\t"
        "and r3, r2\n\t"
        "strb r3, [r0]\n\t"
        "ldr r4, [r5, #0x50]\n\t"
        "mov r2, #0xd\n\t"
        "ldrb r0, [r4, #9]\n\t"
        "neg r2, r2\n\t"
        "mov r3, r2\n\t"
        "lsr r1, r1, #30\n\t"
        "lsl r1, r1, #2\n\t"
        "and r3, r0\n\t"
        "orr r3, r1\n\t"
        "strb r3, [r4, #9]\n\t"
        "ldr r3, [r6, #0x50]\n\t"
        "ldr r0, [r5, #0x50]\n\t"
        "ldrb r1, [r3, #0x15]\n\t"
        "mov r3, #0xc\n\t"
        "and r3, r1\n\t"
        "ldrb r1, [r0, #0x15]\n\t"
        "and r2, r1\n\t"
        "orr r2, r3\n\t"
        "strb r2, [r0, #0x15]\n\t"
        "1:\n\t"
        : "+r"(t0), "+r"(t1), "+r"(t2), "+r"(t3), "+r"(t4)
        :
        : "cc", "memory");
    t0 = 1;
end:
    return t0;
}
