extern volatile unsigned short iwram_3001f64;
extern void WaitFrames(unsigned int frames);

unsigned int Func_8006384(unsigned int mask)
{
    register volatile unsigned short *status asm("r1") = &iwram_3001f64;
    register unsigned int saved_mask asm("r5") = mask;
    register unsigned int bits asm("r2");
    register unsigned int filtered asm("r3");
    register volatile unsigned short *loop_status asm("r6");

    __asm__ volatile ("" : "+r" (status), "+r" (saved_mask));
    bits = *status;
    __asm__ volatile ("" : "+r" (bits));
    filtered = saved_mask;
    filtered &= bits;
    if (filtered == saved_mask)
        goto ready;
    loop_status = status;
    __asm__ volatile ("" : "+r" (loop_status));
wait:
    WaitFrames(1);
    bits = *loop_status;
    __asm__ volatile ("" : "+r" (bits));
    filtered = saved_mask;
    filtered &= bits;
    if (filtered != saved_mask)
        goto wait;
ready:
    return (*(volatile unsigned int *)0x04000128 << 26) >> 30;
}
