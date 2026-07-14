typedef unsigned char u8;
typedef unsigned short u16;

typedef struct {
    u8 __unk00[6];
    u16 field6;
    u16 field8;
    u8 __unk0A[0xA];
    u8 field14;
    u8 __unk15;
    u16 field16;
} TransferTarget;

typedef struct {
    TransferTarget *source;
    u16 source_x;
    u16 source_y;
    u16 target_x;
    u16 target_y;
    u8 state;
    u8 mode;
} CoordinateTransfer;

void Func_80b0a20(CoordinateTransfer *transfer, int x, int y)
{
    register CoordinateTransfer *out asm("r0") = transfer;
    register TransferTarget *target asm("r5") = out->source;
    register int mask asm("r6");
    register int zero asm("r4");
    register int tmp asm("r3");

    asm volatile("ldr %0, .LFunc_80b0a20_ffff" : "=r"(mask));
    tmp = 1;
    asm volatile("ldr %0, .LFunc_80b0a20_zero" : "=r"(zero));
    out->mode = tmp;
    asm volatile("ldr %0, .LFunc_80b0a20_1ff" : "=r"(tmp));

    target->field6 = x;
    out->target_x = x;
    out->source_x = x;
    x &= mask;
    x &= tmp;

    out->state = zero;

    asm volatile("ldr %0, .LFunc_80b0a20_fe00" : "=r"(tmp));
    zero = target->field16;
    tmp &= zero;
    tmp |= x;
    target->field16 = tmp;

    asm volatile("" ::: "memory");

    {
        TransferTarget *target2 = out->source;
        out->target_y = y;
        out->source_y = y;
        target2->field8 = y;
        y &= mask;
        target2->field14 = y;
    }

    asm volatile(
        "b .LFunc_80b0a20_return\n\t"
        ".align 2, 0\n"
        ".LFunc_80b0a20_ffff:\n\t"
        ".word 0xffff\n\t"
        ".LFunc_80b0a20_zero:\n\t"
        ".word 0\n\t"
        ".LFunc_80b0a20_1ff:\n\t"
        ".word 0x1ff\n\t"
        ".LFunc_80b0a20_fe00:\n\t"
        ".word 0xfffffe00\n\t"
        ".LFunc_80b0a20_return:");
}
