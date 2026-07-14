#include "gba/types.h"
#include "gba/io.h"

extern void *Func_8004938(unsigned int size);
extern void Func_80158e8(void);
extern void _call_via_r6(void *dst, void (*callback)(void));
extern void free(void *ptr);
extern void (*iwram_3001e8c)(void);

void Func_801edec(void *dst)
{
    register void *output asm("r8");
    register void (*callback)(void) asm("r7");
    register void *code asm("r6");
    register unsigned int size asm("r5");

    asm volatile(
        "ldr r3, =iwram_3001e8c\n\t"
        "ldr %0, [r3]\n\t"
        "sub sp, #4\n\t"
        "mov %1, r0\n\t"
        "cmp %0, #0\n\t"
        "bne .L801edec_nonzero"
        : "=r"(callback), "=r"(output)
        :
        : "r3", "memory");

    {
        asm volatile(
            "mov r0, sp\n\t"
            "ldr r3, 1f\n\t"
            "add r0, #2\n\t"
            "strh r3, [r0]\n\t"
            "mov r1, r8\n\t"
            "ldr r3, =0x040000d4\n\t"
            "ldr r2, =0x810000a0\n\t"
            "stmia r3!, {r0, r1, r2}\n\t"
            "sub r3, #0xc\n\t"
            "b .L801edec_end\n\t"
            ".align 2, 0\n"
            "1:\t.word 0xe0e0\n\t"
            ".pool\n"
            ".L801edec_nonzero:"
            :
            : "r"(output)
            : "r0", "r1", "r2", "r3", "memory");
    }

    asm volatile("ldr %0, =0x214" : "=r"(size));
    Func_8004938(size);
        asm volatile(
            "mov r2, #0x84\n\t"
            "mov %0, r0\n\t"
            "lsr r5, #2\n\t"
            "lsl r2, #24\n\t"
            "ldr r3, =0x040000d4\n\t"
            "ldr r0, =Func_80158e8\n\t"
            "mov r1, r6\n\t"
            "orr r2, r5\n\t"
            "stmia r3!, {r0, r1, r2}\n\t"
            "sub r3, #0xc"
            : "=r"(code)
            : "r"(size)
            : "r0", "r1", "r2", "r3", "memory");
        _call_via_r6(output, callback);
        free(code);
    asm volatile(".L801edec_end:\n\tadd sp, #4" ::: "memory");
}
