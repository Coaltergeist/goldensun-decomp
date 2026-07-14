extern void *galloc_ewram(int slot, unsigned int size);
extern void Task_ScreenWindowTransition(void);
extern void Func_808f498(void);
extern void StartTask(void (*task)(void), int priority);

void Func_808fe38(int state)
{
    unsigned int zeroStack;
    register int stateR6 __asm__("r6") = state;
    register unsigned char *buf __asm__("r4") = (unsigned char *)galloc_ewram(0x1f, 0xa8 << 3);
    register unsigned int zero __asm__("r5") = 0;
    register unsigned int *zp __asm__("r0") = &zeroStack;

    __asm__ volatile (
        "str  r5, [r0, #0]\n\t"
        "ldr  r3, =0x040000d4\n\t"
        "mov  r1, r4\n\t"
        "ldr  r2, =0x85000150\n\t"
        "stmia r3!, {r0, r1, r2}\n\t"
        "sub  r3, #0xc\n\t"
        "mov  r2, #0xa5\n\t"
        "lsl  r2, r2, #3\n\t"
        "add  r3, r4, r2\n\t"
        "add  r2, r2, #2\n\t"
        "strh r6, [r3, #0]\n\t"
        "add  r3, r4, r2\n\t"
        "strh r5, [r3, #0]\n\t"
        "ldr  r3, =0x534\n\t"
        "add  r2, r4, r3\n\t"
        "ldr  r3, =0x3f3f\n\t"
        "strh r3, [r2, #0]\n\t"
        "ldr  r2, =0x536\n\t"
        "mov  r3, #1\n\t"
        "add  r4, r4, r2\n\t"
        "mov  r1, #0xc8\n\t"
        "strh r3, [r4, #0]\n\t"
        "lsl  r1, r1, #4\n\t"
        "ldr  r0, =Task_ScreenWindowTransition\n\t"
        "bl   StartTask\n\t"
        "mov  r1, #0x90\n\t"
        "lsl  r1, r1, #3\n\t"
        "ldr  r0, =Func_808f498\n\t"
        "bl   StartTask\n\t"
        : "+r" (buf), "+r" (stateR6), "+r" (zp), "+r" (zero)
        :
        : "r1", "r2", "r3", "lr", "memory", "cc"
    );
}
