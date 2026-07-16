typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

extern void *galloc_iwram(int slot, int size);
extern const u8 *GetFile(const void *file);
extern const u8 _FILE_f1[];
extern void DecompressLZ1(const void *src, void *dst);
extern void *Func_8004938(int size);
extern void free(void *ptr);
extern void gfree(int slot);

void Func_8021cb8(u8 *arg0, s32 arg1, s32 arg2)
{
    register u8 *tableReg asm("r7") = arg0;
    register s32 tileReg asm("r8") = arg2;
    u8 *buffer = galloc_iwram(0x11, 0xc1 << 3);
    const u8 *file = GetFile(_FILE_f1);
    const u8 **dest604 = (const u8 **)(buffer + 0x604);
    const u8 *src = file + ((const u16 *)file)[arg1];
    u8 *out;

    *dest604 = src;
    DecompressLZ1(src, buffer);
    out = Func_8004938(0x80 << 3);

    {
        register s32 zero asm("r2") = 0;
        register u8 *dstReg asm("r5");
        register s32 iReg asm("ip");
        register u8 *bufReg asm("r6") = buffer;

        asm volatile("" : "+r"(zero));
        dstReg = out;
        iReg = zero;

        asm volatile(
            "1:\n\t"
            "ldrb r4, [r6]\n\t"
            "ldrb r2, [r7, r4]\n\t"
            "mov r3, r2\n\t"
            "add r6, r6, #1\n\t"
            "cmp r3, #0xff\n\t"
            "bne 3f\n\t"
            "mov r3, #0x80\n\t"
            "lsl r3, r3, #1\n\t"
            "add r0, r7, r3\n\t"
            "ldr r3, [r0]\n\t"
            "strb r3, [r7, r4]\n\t"
            "ldr r1, [r0]\n\t"
            "cmp r1, #0x3f\n\t"
            "bgt 2f\n\t"
            "mov r3, #0xa0\n\t"
            "lsl r2, r1, #1\n\t"
            "lsl r3, r3, #19\n\t"
            "add r3, r3, r2\n\t"
            "ldr r2, =0x5000200\n\t"
            "mov r10, r3\n\t"
            "lsl r3, r4, #1\n\t"
            "add r3, r3, r2\n\t"
            "ldrh r3, [r3]\n\t"
            "mov r2, r10\n\t"
            "strh r3, [r2]\n\t"
            "add r3, r1, #1\n\t"
            "str r3, [r0]\n\t"
            "ldrb r2, [r7, r4]\n\t"
            "b 3f\n\t"
            "2:\n\t"
            "mov r2, r3\n\t"
            "3:\n\t"
            "strb r2, [r5]\n\t"
            "mov r3, #1\n\t"
            "mov r2, #0x80\n\t"
            "add ip, ip, r3\n\t"
            "lsl r2, r2, #3\n\t"
            "add r5, r5, #1\n\t"
            "cmp ip, r2\n\t"
            "blt 1b"
            : "+r"(tableReg), "+r"(dstReg), "+r"(iReg), "+r"(bufReg)
            :
            : "r0", "r1", "r2", "r3", "r4", "r10", "memory", "cc");
    }

    asm volatile(
        "mov r3, %0\n\t"
        "ldr r2, =0x06004000\n\t"
        "lsl r1, r3, #6\n\t"
        "add r1, r1, r2\n\t"
        "ldr r3, =0x040000d4\n\t"
        "mov r0, %1\n\t"
        "ldr r2, =0x84000100\n\t"
        "stmia r3!, {r0, r1, r2}\n\t"
        "sub r3, #0xc"
        :
        : "r"(tileReg), "r"(out)
        : "r0", "r1", "r2", "r3", "memory");
    free(out);
    gfree(0x11);
}
