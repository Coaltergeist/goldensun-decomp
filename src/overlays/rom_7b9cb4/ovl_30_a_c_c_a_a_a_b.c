extern unsigned char gState[];
extern unsigned char Value_4d[] __asm__("0x4d");
extern unsigned char Value_4f[] __asm__("0x4f");
extern unsigned char Value_51[] __asm__("0x51");
extern void __Func_8091f90(int state, int value);
extern void __Func_8091eb0(int actor, int value);

void OvlFunc_932_2008388(void)
{
    register unsigned char *state asm("r3") = gState;
    register int value asm("r2") = 0x22b;

    /* Preserve the original state-address and byte-store register order. */
    asm volatile("" : "+r"(state), "+r"(value));
    state += value;
    value = 3;
    *state = value;
    __Func_8091f90((int)Value_4d, 0x63);
    __Func_8091eb0(0x35, 2);
}

void OvlFunc_932_20083b4(void)
{
    register unsigned char *state asm("r3") = gState;
    register int value asm("r2") = 0x22b;

    /* Preserve the original state-address and byte-store register order. */
    asm volatile("" : "+r"(state), "+r"(value));
    state += value;
    value = 3;
    *state = value;
    __Func_8091f90((int)Value_4f, 0x63);
    __Func_8091eb0(0x35, 2);
}

void OvlFunc_932_20083e0(void)
{
    register unsigned char *state asm("r3") = gState;
    register int value asm("r2") = 0x22b;

    /* Preserve the original state-address and byte-store register order. */
    asm volatile("" : "+r"(state), "+r"(value));
    state += value;
    value = 3;
    *state = value;
    __Func_8091f90((int)Value_51, 0x63);
    __Func_8091eb0(0x35, 2);
}
