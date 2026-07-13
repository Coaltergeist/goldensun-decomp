typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct {
    u32 source;
    u16 source_x;
    u16 source_y;
    u16 target_x;
    u16 target_y;
    u8 state;
    u8 mode;
} CoordinateTransfer;

void Func_80b09fc(CoordinateTransfer *transfer, u16 target_x, u16 target_y,
    u8 mode)
{
    register CoordinateTransfer *out asm("r0") = transfer;
    register u16 *source asm("r5") = (u16 *)out->source;
    register u32 value asm("r4");
    register u32 zero asm("r6");

    value = source[3];
    asm("ldr %0, .LFunc_80b09fc_zero"
        : "=r"(zero)
        : "r"(out), "r"(source), "r"(value));
    out->source_x = value;
    value = source[4];
    out->target_x = target_x;
    out->source_y = value;
    out->target_y = target_y;
    out->mode = mode;
    out->state = zero;

    asm volatile(
        "b .LFunc_80b09fc_return\n\t"
        ".align 2, 0\n"
        ".LFunc_80b09fc_zero:\n\t"
        ".word 0\n"
        ".LFunc_80b09fc_return:");
}
