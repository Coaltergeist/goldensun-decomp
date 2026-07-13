typedef volatile unsigned short vu16;

extern void WaitFrames(int frames);

void Func_80c0e38(void)
{
    register vu16 *blendControl asm("r2");
    register int control asm("r3");
    register vu16 *blendAlpha asm("r7");
    register int packedAlpha asm("r6");
    register int step asm("r5");

    /* Keep the original literal pool between setup and the readable loop. */
    asm volatile("ldr %0, .L80c0e38_blend_control" : "=r"(blendControl));
    asm volatile("ldr %0, .L80c0e38_control" : "=r"(control));
    asm volatile("ldr %0, .L80c0e38_blend_alpha" : "=r"(blendAlpha));
    *blendControl = control;
    asm volatile("ldr %0, .L80c0e38_packed_alpha" : "=r"(packedAlpha));
    asm volatile("mov %0, #1" : "=r"(step));
    asm volatile(
        "b .L80c0e38_after_pool\n"
        ".align 2, 0\n"
        ".L80c0e38_control:\n.word 0x2044\n"
        ".L80c0e38_packed_alpha:\n.word 0x1010\n"
        ".L80c0e38_blend_control:\n.word 0x04000050\n"
        ".L80c0e38_blend_alpha:\n.word 0x04000052\n"
        ".L80c0e38_after_pool:");

    do {
        *blendAlpha = packedAlpha - step;
        WaitFrames(1);
        step += 2;
    } while (step <= 0x10);
}

asm(".size Func_80c0e38, 56");

void Func_80c0e70(void)
{
    register vu16 *blendControl asm("r2");
    register int control asm("r3");
    register vu16 *blendAlpha asm("r7");
    register int packedAlpha asm("r6");
    register int step asm("r5");

    /* Keep the original literal pool between setup and the readable loop. */
    asm volatile("ldr %0, .L80c0e70_blend_control" : "=r"(blendControl));
    asm volatile("ldr %0, .L80c0e70_control" : "=r"(control));
    asm volatile("ldr %0, .L80c0e70_blend_alpha" : "=r"(blendAlpha));
    *blendControl = control;
    asm volatile("ldr %0, .L80c0e70_packed_alpha" : "=r"(packedAlpha));
    asm volatile("mov %0, #1" : "=r"(step));
    asm volatile(
        "b .L80c0e70_after_pool\n"
        ".align 2, 0\n"
        ".L80c0e70_control:\n.word 0x2044\n"
        ".L80c0e70_packed_alpha:\n.word 0x1000\n"
        ".L80c0e70_blend_control:\n.word 0x04000050\n"
        ".L80c0e70_blend_alpha:\n.word 0x04000052\n"
        ".L80c0e70_after_pool:");

    do {
        *blendAlpha = step + packedAlpha;
        WaitFrames(1);
        step += 2;
    } while (step <= 0x10);
}

asm(".size Func_80c0e70, 56");
