typedef unsigned short u16;

extern volatile u16 REG_BG2CNT;
extern void AnimStart(void);
asm(".equ REG_BG2CNT, 0x0400000c");

void Func_80cdb24(int bgControl)
{
    register int control asm("r5") = bgControl;
    register int offset asm("r5");
    register int tileBase asm("r6");
    register int tileRow asm("r7");
    register int row asm("r12");
    register int tileStep asm("r14");
    register volatile unsigned char *tilemap asm("r8");
    register int tile asm("r10");
    register int rowCompare asm("r3");
    register int column asm("r4");
    register int value asm("r0");
    register int palette asm("r1");

    AnimStart();
    asm volatile(
        "ldr r3, =0x6784\n\t"
        "orr r5, r3\n\t"
        "ldr r3, =0x06003800\n\t"
        "ldr r2, =REG_BG2CNT\n\t"
        "mov r8, r3\n\t"
        "mov r3, #0x80\n\t"
        "strh r5, [r2]\n\t"
        "lsl r3, #2\n\t"
        "mov r5, #0\n\t"
        "mov r12, r5\n\t"
        "mov r7, #0\n\t"
        "mov r14, r3\n\t"
        "mov r6, #0"
        : "+r"(control), "=r"(tilemap), "=r"(tileStep), "=r"(offset),
          "=r"(row), "=r"(tileRow), "=r"(tileBase)
        :
        : "r2", "r3", "memory");

    do {
        asm volatile(
            "mov r3, #0x80\n\t"
            "lsl r3, #1\n\t"
            "mov r4, #0\n\t"
            "add r0, r6, r3\n\t"
            "lsl r1, r7, #1\n\t"
            "b 2f\n\t"
            ".pool\n"
            "2:"
            : "=r"(value), "=r"(palette), "=r"(column)
            : "r"(tileBase), "r"(tileRow)
            : "r3");
        do {
            tile = (short)(value | palette);
            asm volatile(
                "mov r3, r8\n\t"
                "add r2, r5, r3\n\t"
                "add r4, #1\n\t"
                "mov r3, r10\n\t"
                "strh r3, [r2]"
                : "+r"(column)
                : "r"(tilemap), "r"(offset), "r"(tile)
                : "r2", "r3", "memory");
            value += tileStep;
            palette += 2;
            offset += 2;
        } while (column != 8);

        {
            register volatile unsigned char *zeroBase asm("r1");
            register int zero asm("r2");
            asm volatile(
                "ldr r1, =0x06003800\n\t"
                "ldr r2, 0f\n\t"
                "mov r4, #0\n\t"
                "b 1f\n\t"
                ".align 2, 0\n"
                "0: .word 0\n\t"
                ".pool\n"
                "1:"
                : "=r"(zeroBase), "=r"(column), "=r"(zero));
            do {
                asm volatile(
                    "add r3, r5, r1\n\t"
                    "add r4, #1\n\t"
                    "strh r2, [r3]"
                    : "+r"(column)
                    : "r"(offset), "r"(zeroBase), "r"(zero)
                    : "r3", "memory");
                offset += 2;
            } while (column != 8);
        }

        asm volatile(
            "mov r3, #0x80\n\t"
            "lsl r3, #5\n\t"
            "add r6, r3\n\t"
            "mov r3, #1\n\t"
            "add r12, r3\n\t"
            "mov r3, r12\n\t"
            "add r7, #8"
            : "+r"(tileBase), "+r"(row), "+r"(tileRow), "=r"(rowCompare)
            :
            : "r3");
    } while (rowCompare != 0x10);
}
