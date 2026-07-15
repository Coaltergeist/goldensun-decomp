typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

extern void *galloc_iwram(u32 slot, u32 size);
extern void gfree(u32 slot);
extern void Func_8015afc(void);
extern void Func_8015d74(void);
extern void Func_8015e10(void);
extern void *gPtrs[];

typedef void (*DecompressFn)(void *, void *);

void LoadIcon(void *param_1, s32 param_2)
{
    register u8 *p1 asm("r7");
    register s32 p2 asm("r6");
    register u32 hi asm("r8");
    register void *rp1 asm("r0") = param_1;
    register s32 rp2 asm("r1") = param_2;
    void *src;
    DecompressFn fn1;

    asm volatile(
        "mov %0, %3\n\t"
        "mov %1, %4\n\t"
        "ldr r5, =0x278\n\t"
        "mov r0, #0x31\n\t"
        "mov r1, r5\n\t"
        "bl galloc_iwram\n\t"
        "mov r2, #0x84\n\t"
        "lsr r5, r5, #2\n\t"
        "lsl r2, r2, #24\n\t"
        "mov r1, r0\n\t"
        "mov %2, r2\n\t"
        "ldr r3, =0x040000d4\n\t"
        "ldr r0, =Func_8015afc\n\t"
        "orr r2, r2, r5\n\t"
        "stmia r3!, {r0, r1, r2}\n\t"
        "sub r3, #0xc"
        : "=r"(p1), "=r"(p2), "=r"(hi)
        : "r"(rp1), "r"(rp2)
        : "r0", "r1", "r2", "r3", "r5", "r12", "lr", "memory");

    {
        register u8 *fn_slot asm("r3");
        register u32 off asm("r4");
        register void *addr asm("r2");

        asm volatile("ldr %0, =gPtrs" : "=r"(fn_slot));
        asm volatile("ldr %0, =0x604" : "=r"(off));
        asm volatile("add %0, %0, #196" : "+r"(fn_slot));
        asm volatile("add %0, %1, %2" : "=r"(addr) : "r"(p1), "r"(off));

        src = *(void **)addr;
        fn1 = *(DecompressFn *)fn_slot;
        asm volatile("" : "+r"(fn1));
        fn1(src, p1);
    }
    gfree(0x31);

    {
        register u32 sz2 asm("r5");
        register void *dst2 asm("r1");
        register u32 cnt2 asm("r2");
        register vu32 *dma2 asm("r3");
        register void *srcfn2 asm("r0");

        if (p2 != 0) {
            asm volatile(
                "ldr r5, =0x9c\n\t"
                "mov r0, #0x31\n\t"
                "mov r1, r5\n\t"
                "bl galloc_iwram\n\t"
                "lsr r5, r5, #2\n\t"
                "mov r2, r8\n\t"
                "mov r1, r0\n\t"
                "ldr r3, =0x040000d4\n\t"
                "ldr r0, =Func_8015d74"
                : "=r"(sz2), "=r"(dst2), "=r"(cnt2), "=r"(dma2), "=r"(srcfn2)
                : "r"(hi)
                : "r12", "lr", "memory");
        } else {
            asm volatile(
                "ldr r5, =0x7c\n\t"
                "mov r0, #0x31\n\t"
                "mov r1, r5\n\t"
                "bl galloc_iwram\n\t"
                "lsr r5, r5, #2\n\t"
                "mov r2, r8\n\t"
                "mov r1, r0\n\t"
                "ldr r3, =0x040000d4\n\t"
                "ldr r0, =Func_8015e10"
                : "=r"(sz2), "=r"(dst2), "=r"(cnt2), "=r"(dma2), "=r"(srcfn2)
                : "r"(hi)
                : "r12", "lr", "memory");
        }
        asm volatile(
            "orr r2, r2, r5\n\t"
            "stmia r3!, {r0, r1, r2}\n\t"
            "sub r3, #0xc"
            : "+r"(dma2)
            : "r"(srcfn2), "r"(dst2), "r"(cnt2), "r"(sz2)
            : "memory");
    }

    {
        register u32 v600 asm("r2");
        register u32 v602 asm("r3");
        register void *t1 asm("r1");
        register void *fn2 asm("r4");

        asm volatile(
            "mov r4, #0xc0\n\t"
            "ldr r0, =gPtrs\n\t"
            "lsl r4, r4, #3\n\t"
            "mov r2, #0x80\n\t"
            "add r3, %4, r4\n\t"
            "lsl r2, r2, #3\n\t"
            "add r4, r4, #2\n\t"
            "add %2, %4, r2\n\t"
            "add r0, r0, #196\n\t"
            "ldrh r2, [r3]\n\t"
            "add r3, %4, r4\n\t"
            "ldrh r3, [r3]\n\t"
            "ldr %3, [r0]\n\t"
            "mov r0, %4\n\t"
            "bl _call_via_r4"
            : "=r"(v600), "=r"(v602), "=r"(t1), "=r"(fn2)
            : "r"(p1)
            : "r0", "r12", "lr", "memory");
    }
    gfree(0x31);
}
