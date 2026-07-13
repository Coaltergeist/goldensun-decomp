typedef void (*FillVram)(unsigned int *address, unsigned int size, int value);

extern void Func_80008d8(void);

void Func_80c0098(unsigned int *destination)
{
    register unsigned int *out asm("r0") = destination;
    register unsigned int value asm("r2") = 0x03020100;
    register unsigned int step asm("r1");
    register unsigned int count asm("r3");
    register FillVram fill asm("r3");

    asm volatile ("" : "+r"(value));
    step = 0x04040404;
    asm volatile ("" : "+r"(value), "+r"(step));
    count = 0;
    do {
        ++count;
        *out++ = value;
        value += step;
    } while (count <= 0x3f);

    value = 0x03020100;
    step = 0x04040404;
    count = 0;
    do {
        ++count;
        *out++ = value;
        value += step;
    } while (count <= 0x37);

    step = 0x88;
    value = 1;
    fill = (FillVram)Func_80008d8;
    step <<= 2;
    value = -value;
    asm volatile ("" : "+r"(out), "+r"(step), "+r"(value), "+r"(fill));
    fill(out, step, value);
}
