extern unsigned short gState[];

void Func_808b2b0(int param_1)
{
    register unsigned int value asm("r2");
    register unsigned short *state asm("r3");

    switch (param_1) {
        case 1:
            asm volatile("ldr %0, =0x38" : "=r"(value));
            break;
        case 2:
            asm volatile("ldr %0, =0x3a" : "=r"(value));
            break;
        case 3:
            asm volatile("ldr %0, =0x3c" : "=r"(value));
            break;
        case 4:
        case 7:
            asm volatile("ldr %0, =0x36" : "=r"(value));
            break;
        case 5:
        case 6:
            asm volatile("ldr %0, =0x37" : "=r"(value));
            break;
        default:
            asm volatile("ldr %0, =0x39" : "=r"(value));
            break;
    }

    asm volatile("ldr %0, =gState" : "=r"(state));
    state[0xeb] = value;
}
