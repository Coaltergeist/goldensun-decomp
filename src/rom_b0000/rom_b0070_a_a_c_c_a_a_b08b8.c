typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    u8 unk00[6];
    u16 field6;
    u16 field8;
    u8 unk0A[10];
    u8 field14;
    u8 unk15;
    u16 field16;
} TransferTarget;

typedef struct {
    TransferTarget *target;
    u16 source_x;
    u16 source_y;
    u16 target_x;
    u16 target_y;
    u8 counter;
    s8 total;
} CoordinateTransfer;

void Func_80b08b8(CoordinateTransfer *param_1)
{
    register CoordinateTransfer *p asm("r7") = param_1;
    register s32 divisor asm("r10");
    register TransferTarget *obj asm("r8");
    register s32 step asm("r6");
    register s32 zero asm("r9");

    if (p == 0) {
        return;
    }
    {
        register s32 tmp asm("r1") = p->total;
        divisor = tmp;
        if (tmp == 0) {
            return;
        }
    }

    /* %0=obj %1=step %2=zero %3=p %4=divisor */
    asm volatile(
        "ldr r2, [%3, #0]\n\t"
        "ldrb %1, [%3, #12]\n\t"
        "mov %0, r2\n\t"
        "add %1, #1\n\t"
        "mov r1, #4\n\t"
        "ldrsh r2, [%3, r1]\n\t"
        "mov r1, #8\n\t"
        "ldrsh r3, [%3, r1]\n\t"
        "strb %1, [%3, #12]\n\t"
        "lsl %1, #24\n\t"
        "sub r3, r2\n\t"
        "asr %1, #24\n\t"
        "mov r0, %1\n\t"
        "mul r0, r3\n\t"
        "mov r1, %4\n\t"
        "bl __divsi3\n\t"
        "ldrh r5, [%3, #4]\n\t"
        "mov r3, %0\n\t"
        "add r5, r0\n\t"
        "strh r5, [r3, #6]\n\t"
        "ldr r2, =0\n\t"
        "ldr r3, =0x1ff\n\t"
        "mov r1, %0\n\t"
        "and r5, r3\n\t"
        "mov %2, r2\n\t"
        "ldr r3, =0xfffffe00\n\t"
        "ldrh r2, [r1, #0x16]\n\t"
        "and r3, r2\n\t"
        "orr r3, r5\n\t"
        "mov r2, %0\n\t"
        "strh r3, [r2, #0x16]\n\t"
        "mov r1, #6\n\t"
        "ldrsh r2, [%3, r1]\n\t"
        "mov r1, #10\n\t"
        "ldrsh r3, [%3, r1]\n\t"
        "sub r3, r2\n\t"
        "mov r0, %1\n\t"
        "mul r0, r3\n\t"
        "mov r1, %4\n\t"
        "bl __divsi3\n\t"
        "ldrh r5, [%3, #6]\n\t"
        "mov r2, %0\n\t"
        "add r5, r0\n\t"
        "strh r5, [r2, #8]\n\t"
        "strb r5, [r2, #0x14]\n\t"
        "b 1f\n\t"
        ".align 2, 0\n\t"
        ".pool\n\t"
        "1:\n\t"
        : "+r"(obj), "+r"(step), "=r"(zero)
        : "r"(p), "r"(divisor)
        : "r0", "r1", "r2", "r3", "r5", "r12", "lr", "cc", "memory");

    if (step == divisor) {
        p->total = zero;
        p->counter = zero;
    }
}
