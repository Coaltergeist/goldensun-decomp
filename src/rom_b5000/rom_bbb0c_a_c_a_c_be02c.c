extern unsigned char iwram_3001e74[];

extern void WaitFrames(unsigned int frames);
extern void StopTask(void *task);
extern void Func_80bd898(void);
extern unsigned int Func_80bdfec(void);

unsigned int Func_80be02c(void)
{
    register unsigned char *base asm("r1") = *(unsigned char **)iwram_3001e74;
    register unsigned int *state asm("r2");
    register unsigned int value asm("r3") = 0x80;

    value <<= 4;
    state = (unsigned int *)(base + value);
    value = *state;
    if (value == 0) {
        value = 1;
        *state = value;
    }

    if (value != 4) {
        register unsigned int *poll asm("r5") =
            (unsigned int *)(base + 0x800);
        do {
            WaitFrames(1);
        } while (*poll != 4);
    }

    StopTask(Func_80bd898);
    return Func_80bdfec();
}
