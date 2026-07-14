typedef unsigned char u8;
typedef unsigned int u32;

extern u8 gPtrs[];
extern void BuildDraw2DFuncEx(int index, int a, int b, int c, int d);

void BuildDraw2DFuncs(int alternate, u32 *out)
{
    if (alternate == 0) {
        register u8 *base asm("r5");
        asm volatile (
            "mov r3, #2\n\tstr r3, [sp]\n\t"
            "mov r1, #7\n\tmov r2, #7\n\tmov r3, #3\n\t"
            "mov r0, #0x2e\n\tbl BuildDraw2DFuncEx"
            : : : "r0", "r1", "r2", "r3", "cc", "memory");
        base = gPtrs;
        asm volatile ("" : "+r" (base));
        out[0] = *(u32 *)(base + 0xb8);
        BuildDraw2DFuncEx(0x2f, 7, 7, 3, 3);
        out[1] = *(u32 *)(base + 0xbc);
    } else {
        register u8 *base asm("r5");
        asm volatile (
            "mov r3, #2\n\tstr r3, [sp]\n\t"
            "mov r1, #7\n\tmov r2, #7\n\tmov r3, #7\n\t"
            "mov r0, #0x2e\n\tbl BuildDraw2DFuncEx"
            : : : "r0", "r1", "r2", "r3", "cc", "memory");
        base = gPtrs;
        asm volatile ("" : "+r" (base));
        out[0] = *(u32 *)(base + 0xb8);
        BuildDraw2DFuncEx(0x2f, 7, 7, 7, 3);
        out[1] = *(u32 *)(base + 0xbc);
    }
}
