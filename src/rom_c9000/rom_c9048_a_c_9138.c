extern unsigned char *iwram_3001eec;

void Func_80c9138(void)
{
    unsigned char *state = iwram_3001eec;
    int *timer = (int *)(state + 0x7790);
    int frame = *timer + 1;

    *timer = frame;
    if (frame == *(int *)(state + 0x7794)) {
        int *px = (int *)(state + 0x77d0);
        register volatile unsigned int *reg asm("r2");
        int *py;
        int x, y;

        x = *px;
        reg = (volatile unsigned int *)0x04000028;
        *reg = x;
        asm volatile("" : "+r"(reg));

        py = (int *)(state + 0x77d4);
        y = *py;
        reg++;
        asm volatile("" : "+r"(reg));
        *reg = y;

        *px = *px + *(int *)(state + 0x7798);
        *py = *py + *(int *)(state + 0x779c);
        *timer = 0;
    }
}
