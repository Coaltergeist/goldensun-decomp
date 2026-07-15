typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct TextBox {
    u8 pad[12];
    u16 x;
    u16 y;
} TextBox;

extern void *Func_8004970(u32 size);
extern u16 *iwram_3001e8c;
extern void Func_801de5c(u16 *text, void *tilemap, void *vram, u32 subpixel_x);
extern void Func_801de5c_NoArgs(void) asm("Func_801de5c");
extern void free(void *memory);

void Func_801e8b0(const u8 *text, TextBox *box, u32 x, u32 y)
{
    register const u8 *textReg asm("r5") = text;
    register TextBox *boxReg asm("r7");
    register u32 xReg asm("r10");
    register u32 yReg asm("r8");
    register u16 *buffer asm("r6");
    register u32 allocationSize asm("r0") = 0x200;
    register u16 *tilemap asm("r0");
    u16 *dst;

    asm volatile(
        "mov r10, r2\n\t"
        "mov r8, r3\n\t"
        "mov r7, r1"
        : "=r"(xReg), "=r"(yReg), "=r"(boxReg));
    buffer = Func_8004970(allocationSize);
    asm volatile(
        "ldr r3, .Lfuncpool+4\n\t"
        "mov r6, r0\n\t"
        "ldr r0, [r3]"
        : "=r"(buffer), "=r"(tilemap)
        :
        : "r3");
    dst = buffer;

    while (*textReg != 0)
        *dst++ = *textReg++;
    asm volatile(
        "ldr r3, .Lfuncpool\n\t"
        "strh r3, [%0]"
        :
        : "r"(dst)
        : "r3", "memory");

    {
        register u32 row asm("r3");
        register u32 column asm("r2");
        u32 offset;

        asm volatile(
            "mov r1, r8\n\t"
            "ldrh r3, [r7, #14]\n\t"
            "lsr r2, r1, #3\n\t"
            "add r3, r2"
            : "=r"(row)
            : "r"(boxReg), "r"(yReg)
            : "r1", "r2");
        asm volatile(
            "mov r4, r10\n\t"
            "ldrh r2, [r7, #12]\n\t"
            "lsr r1, r4, #3\n\t"
            "add r3, #1\n\t"
            "add r2, r1"
            : "=r"(column), "+r"(row)
            :
            : "r1", "r4");
        offset = (row << 5) + column + 1;
        if (offset < 0x280) {
            register u32 offsetReg asm("r1") = offset;
            asm volatile(
                "ldr r4, .Lfuncpool+8\n\t"
                "lsl r1, #1\n\t"
                "add r2, r1, r4\n\t"
                "mov r3, #7\n\t"
                "add r1, r0, r1\n\t"
                "mov r0, r10\n\t"
                "and r3, r0\n\t"
                "mov r0, r6\n\t"
                "b .Lfuncafterpool\n\t"
                ".align 2\n"
                ".Lfuncpool:\n\t"
                ".word 0\n\t"
                ".word iwram_3001e8c\n\t"
                ".word 0x06002000\n"
                ".Lfuncafterpool:\n\t"
                "bl Func_801de5c"
                : "+r"(offsetReg)
                : "r"(buffer), "r"(xReg), "r"(tilemap)
                : "r0", "r2", "r3", "r4", "lr", "memory");
            free(buffer);
        }
    }
}
