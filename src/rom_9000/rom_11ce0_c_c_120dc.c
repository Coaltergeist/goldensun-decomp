typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001e70;
extern u8 gBuffer[];
extern u8 ewram_202c000[];
extern u8 ewram_202c001[];

int TestCollision(u8 *actor, u8 *target)
{
    register s32 v0 asm("r0") = (s32)actor;
    register u8 *v1 asm("r1") = target;
    register s32 v7 asm("r7");

    asm volatile(
        "mov r3, #0xa\n\t"
        "ldrsh r6, [r1, r3]\n\t"
        "ldr r3, =iwram_3001e70\n\t"
        "mov r2, #2\n\t"
        "ldrsh r5, [r1, r2]\n\t"
        "ldr r1, [r3]\n\t"
        "mov r7, r0\n\t"
        "mov r0, #0\n\t"
        "cmp r1, #0\n\t"
        "beq 9f\n\t"
        "mov r2, r7\n\t"
        "add r2, #0x22\n\t"
        "ldrb r3, [r2]\n\t"
        "cmp r3, #2\n\t"
        "bhi 1f\n\t"
        "mov r2, r3\n\t"
        "lsl r3, r2, #1\n\t"
        "add r3, r2\n\t"
        "mov r2, #0x98\n\t"
        "lsl r2, #1\n\t"
        "lsl r3, #4\n\t"
        "add r3, r2\n\t"
        "ldr r2, [r1, r3]\n\t"
        "b 2f\n\t"
        "1:\n\t"
        "ldr r2, =gBuffer\n\t"
        "2:\n\t"
        "mov r3, r5\n\t"
        "cmp r5, #0\n\t"
        "bge 3f\n\t"
        "add r3, #0xf\n\t"
        "3:\n\t"
        "asr r1, r3, #4\n\t"
        "mov r3, r6\n\t"
        "cmp r6, #0\n\t"
        "bge 4f\n\t"
        "add r3, #0xf\n\t"
        "4:\n\t"
        "asr r3, #4\n\t"
        "lsl r3, #7\n\t"
        "add r3, r1, r3\n\t"
        "lsl r3, #2\n\t"
        "add r2, r3\n\t"
        "ldrb r3, [r2, #2]\n\t"
        "mov r0, #2\n\t"
        "cmp r3, #0xff\n\t"
        "beq 9f\n\t"
        "ldrb r1, [r2, #3]\n\t"
        "ldr r3, =ewram_202c000\n\t"
        "lsl r1, #2\n\t"
        "add r0, r1, r3\n\t"
        "mov r2, #0xf\n\t"
        "ldrb r0, [r0]\n\t"
        "mov r3, r2\n\t"
        "and r3, r0\n\t"
        "lsl r3, #2\n\t"
        "mov r12, r3\n\t"
        "ldr r4, =.L134fc\n\t"
        "ldr r3, =ewram_202c001\n\t"
        "and r5, r2\n\t"
        "and r6, r2\n\t"
        "mov r2, r12\n\t"
        "add r0, r1, r3\n\t"
        "ldr r3, [r4, r2]\n\t"
        "mov r1, r5\n\t"
        "mov r2, r6\n\t"
        "bl _call_via_r3\n\t"
        "ldr r3, [r7, #0x14]\n\t"
        "sub r0, r3\n\t"
        "mov r3, #0x80\n\t"
        "lsl r3, #12\n\t"
        "cmp r0, r3\n\t"
        "ble 5f\n\t"
        "mov r0, #1\n\t"
        "b 9f\n\t"
        "5:\n\t"
        "ldr r2, =0xfff40000\n\t"
        "cmp r0, r2\n\t"
        "bge 6f\n\t"
        "mov r0, #1\n\t"
        "neg r0, r0\n\t"
        "b 9f\n\t"
        "6:\n\t"
        "mov r0, #0\n\t"
        "9:\n\t"
        : "+r"(v0), "+r"(v1), "=r"(v7)
        :
        : "r2", "r3", "r4", "r5", "r6", "ip", "lr", "cc", "memory");

    return v0;
}
