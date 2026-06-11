/* Cluster Func_80b5ad4..Func_80b5ad4 extracted from goldensun/asm/rom_b5000/rom_b5a0c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b5a0c_a_a_a.o and asm/rom_b5000/rom_b5a0c_a_a_c.o in
 * goldensun/stage1.ld.
 */
/* Func_80b5ad4 @ 0x080b5ad4  [asm/rom_b5000/rom_b5a0c_a_a.s]
 *
 * Raw DMA3: SAD=0x6000290, DAD=0x6000280, CNT=0x80000008 (enable|16bit|8 units),
 * via stmia r3!,{r0,r1,r2}; sub r3,#0xc -- the DMA3_COPY pattern but with a cnt
 * the macro can't make (it forces 0x84000000|size/4 -> the seed's 0x80000008
 * "size" became 0xa4000002). Then Func_80008d4(0x600028c, 20) is called THROUGH
 * a function pointer (ldr r3,=fn; bl _call_via_r3), per src/rom_c0/rom_447c_c_b.c.
 * Diff-driven fixes (diag 2026-06-10): (1) assign f AFTER Dma3Raw -- assigned
 * before it, f must survive the asm clobber and lands in r4 / pool slot 1; ROM
 * loads it post-DMA into r3 / pool slot 5. (2) return the call's value -- ROM's
 * epilogue is pop {r1}; bx r1, i.e. r0 is live with a return value (a void fn
 * pops into r0). Same recipe likely un-parks src/non_matching/rom_b5000/rom_b63b0.c.
 */
#include "dma.h"
extern int _call_via_r3(void);
extern void Func_80008d4(int dst, int size);
static inline void Dma3Raw(const void *src, void *dst, u32 cnt)
{
register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
register const void *_src __asm__("r0") = src;
register void *_dst __asm__("r1") = dst;
register u32 _cnt __asm__("r2") = cnt;
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        :
        : "r" (_base), "r" (_src), "r" (_dst), "r" (_cnt)
        : "r0", "r1", "r2", "memory"
    );
}

int Func_80b5ad4(void)
{
    int (*f)(int, int);

    Dma3Raw((void *)0x6000290, (void *)0x6000280, 0x80000008);
    f = (int (*)(int, int))Func_80008d4;
    return f(0x600028c, 20);
}
