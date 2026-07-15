typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void Func_80f0254(s32 page);
extern u8 *GetFile(s32 fileId);
extern void *galloc_iwram(s32 index, u32 size);
extern void gfree(s32 index);
extern void Func_80f0024(void);
extern void *gPtrs[];
extern void _call_via_r3(void);
extern u16 gDMATaskCount;

void LoadGS1CreditsBG(s32 fileId, s32 page)
{
    register s32 savedPage asm("r5") = page;
    register u8 *buf asm("r6");
    register void *destAddr asm("r7");
    register u32 fillVal asm("r8");
    register s32 srcTmp asm("r3");
    register const void *srcAddr asm("r10");

    if (fileId == 0) {
        Func_80f0254(savedPage);
        return;
    }

    buf = GetFile(fileId);

    if (savedPage == 0) {
        asm volatile (
            "mov r3, #0xa0\n\t"
            "mov r2, #0\n\t"
            "mov r7, #0xc0\n\t"
            "lsl r3, r3, #19\n\t"
            "mov r8, r2\n\t"
            "lsl r7, r7, #19"
            : "=r" (srcTmp), "=r" (destAddr), "=r" (fillVal)
            :
            : "r2", "memory"
        );
    } else {
        asm volatile (
            "ldr r2, =0x80808080\n\t"
            "ldr r3, =0x5000100\n\t"
            "ldr r7, =0x6008000\n\t"
            "mov r8, r2"
            : "=r" (srcTmp), "=r" (destAddr), "=r" (fillVal)
            :
            : "r2", "memory"
        );
    }
    srcAddr = (const void *)srcTmp;

    {
        register u32 size asm("r5");
        asm volatile (
            "ldr r5, =0x230\n\t"
            "mov r0, #0x31\n\t"
            "mov r1, r5\n\t"
            "bl galloc_iwram\n\t"
            "mov r2, #0x84\n\t"
            "lsr r5, r5, #2\n\t"
            "lsl r2, r2, #24\n\t"
            "mov r1, r0\n\t"
            "ldr r3, =0x040000d4\n\t"
            "ldr r0, =Func_80f0024\n\t"
            "orr r2, r2, r5\n\t"
            "stmia r3!, {r0, r1, r2}\n\t"
            "sub r3, r3, #0xc"
            : "=r" (size)
            :
            : "r0", "r1", "r2", "r3", "lr", "memory"
        );
    }

    asm volatile (
        "ldr r3, =gPtrs\n\t"
        "mov r2, #0x80\n\t"
        "lsl r2, r2, #1\n\t"
        "add r3, r3, #0xc4\n\t"
        "mov r1, r7\n\t"
        "add r0, r6, r2\n\t"
        "ldr r3, [r3]\n\t"
        "mov r2, r8\n\t"
        "bl _call_via_r3\n\t"
        "mov r0, #0x31\n\t"
        "bl gfree"
        :
        : "r" (buf), "r" (destAddr), "r" (fillVal)
        : "r0", "r1", "r2", "r3", "lr", "memory"
    );

    asm volatile (
        "ldr r1, =gDMATaskCount\n\t"
        "ldr r0, =0x04000208\n\t"
        "ldrh r3, [r0]\n\t"
        "mov r4, r3\n\t"
        "strh r0, [r0]\n\t"
        "ldrh r2, [r1]\n\t"
        "cmp r2, #0x1f\n\t"
        "bgt 1f\n\t"
        "lsl r3, r2, #1\n\t"
        "add r3, r3, r2\n\t"
        "lsl r3, r3, #2\n\t"
        "add r3, r3, r1\n\t"
        "add r3, r3, #4\n\t"
        "add r2, r2, #1\n\t"
        "stmia r3!, {r6}\n\t"
        "strh r2, [r1]\n\t"
        "mov r2, r10\n\t"
        "stmia r3!, {r2}\n\t"
        "ldr r2, =0x84000040\n\t"
        "str r2, [r3]\n"
        "1:\n\t"
        "strh r4, [r0]"
        :
        : "r" (buf), "r" (srcAddr)
        : "r0", "r1", "r2", "r3", "r4", "memory"
    );
}
