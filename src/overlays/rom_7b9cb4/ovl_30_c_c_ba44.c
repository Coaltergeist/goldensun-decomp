extern void OvlFunc_932_200b9c8(void);
extern void __StartTask(void (*task)(void), int priority);

void OvlFunc_932_200ba44(void)
{
    register unsigned int zero __asm__("r2");
    register unsigned short *destination __asm__("r3");
    register int priority __asm__("r1");
    register void (*task)(void) __asm__("r0");

    __asm__ volatile (
        "ldr %0, .LOvlFunc_932_200ba44_pool\n"
        "ldr %1, .LOvlFunc_932_200ba44_pool+4"
        : "=r" (zero), "=r" (destination));
    *destination = zero;
    __asm__ volatile (
        "ldr %0, .LOvlFunc_932_200ba44_pool+8"
        : "=r" (destination));
    priority = 0xc8;
    __asm__ volatile ("" : "+r" (zero), "+r" (destination),
                           "+r" (priority));
    *destination = zero;
    priority <<= 4;
    __asm__ volatile (
        "ldr %0, .LOvlFunc_932_200ba44_pool+12"
        : "=r" (task));
    __StartTask(task, priority);
    __asm__ volatile (
        "b .LOvlFunc_932_200ba44_done\n"
        ".align 2, 0\n"
        ".LOvlFunc_932_200ba44_pool:\n"
        ".word 0\n"
        ".word .L5260\n"
        ".word .L525c\n"
        ".word OvlFunc_932_200b9c8\n"
        ".LOvlFunc_932_200ba44_done:");
}
