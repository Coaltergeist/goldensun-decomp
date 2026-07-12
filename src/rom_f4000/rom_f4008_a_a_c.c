extern unsigned char iwram_3001e80[];
extern unsigned char gPhysVec[];
extern void InitMatrixStack(void);
extern void MatrixTranslatev(void *vector);
extern void MatrixYaw(int angle);
extern void MatrixPitch(int angle);
extern void Func_80009c0(int *source, void *destination);
extern int Func_80008ac(int numerator, int denominator);
extern void Func_8005258(int focal, int zMin, int zMax);

void Func_80f4028(void)
{
    int transformed[3];
    register unsigned char *state asm("r5") = *(unsigned char **)iwram_3001e80;
    register int zero asm("r6");
    register unsigned int work asm("r3");

    work = 0x98;
    work <<= 8;
    *(unsigned short *)(state + 0x34) = work;
    work = 0xff;
    work <<= 17;
    *(unsigned int *)(state + 0x20) = work;
    work = (unsigned int)gPhysVec;
    zero = 0;
    *(unsigned int *)(state + 0xc) = zero;
    *(unsigned int *)(state + 0x10) = zero;
    *(unsigned int *)(state + 0x14) = zero;
    *(volatile unsigned short *)(state + 0x36) = zero;
    *(volatile unsigned int *)(state + 0x1c) = zero;
    *(unsigned int *)(work + 0xc) = zero;
    *(unsigned int *)(work + 0x10) = zero;
    *(unsigned int *)(state + 0x18) = zero;

    InitMatrixStack();
    MatrixTranslatev(state + 0xc);
    MatrixYaw(*(short *)(state + 0x36));
    MatrixPitch(*(short *)(state + 0x34));

    transformed[0] = zero;
    transformed[1] = zero;
    transformed[2] = *(int *)(state + 0x20);
    {
        register int *source asm("r0") = transformed;
        register unsigned char *destination asm("r1") = state;
        register void (*transform)(int *, void *) asm("r3") = Func_80009c0;

        transform(source, destination);
    }
    {
        register int numerator asm("r0");
        register int denominator asm("r1");
        register int (*divide)(int, int) asm("r3");

        numerator = 0xfa;
        asm volatile("" : "+r"(numerator));
        denominator = 0xc0;
        asm volatile("" : "+r"(numerator), "+r"(denominator));
        divide = Func_80008ac;
        asm volatile("" : "+r"(numerator), "+r"(denominator), "+r"(divide));
        denominator <<= 8;
        numerator <<= 16;
        denominator = divide(numerator, denominator);
        Func_8005258(0xfa << 16, denominator, 0x7fff0000);
    }
}
