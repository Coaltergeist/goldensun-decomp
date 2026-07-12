extern int Progress_441c asm(".L441c");
extern void OvlFunc_954_200804c(void);
extern void __StartTask(void *task, int priority);

void OvlFunc_954_2008158(void)
{
    register int *progress asm("r3") = &Progress_441c;
    register int value asm("r2") = 0x42;
    register int priority asm("r1") = 0xc8;
    register void *task asm("r0");

    /* Preserve the original store and priority-build instruction order. */
    asm volatile("" : "+r"(progress), "+r"(value), "+r"(priority));
    *progress = value;
    priority <<= 4;
    task = OvlFunc_954_200804c;
    asm volatile("" : "+r"(task), "+r"(priority));
    __StartTask(task, priority);
}
