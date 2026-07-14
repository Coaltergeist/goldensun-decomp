extern unsigned char iwram_3001e80[];
extern void InitMatrixStack(void);
extern void MatrixTranslatev(void *vector);
extern void MatrixYaw(int angle);
extern void MatrixPitch(int angle);
extern void Func_80009c0(int *source, void *destination);

void Func_80b7f9c(void)
{
    int transformed[3];
    register unsigned char *state asm("r5") = *(unsigned char **)iwram_3001e80;
    register unsigned int work asm("r3");
    register int zero asm("r6");

    work = 0xc0;
    work <<= 6;
    *(unsigned short *)(state + 0x36) = work;
    work = 0xfe;
    work <<= 8;
    *(unsigned short *)(state + 0x34) = work;
    work = 0xff;
    zero = 0;
    work <<= 17;
    *(unsigned int *)(state + 0x20) = work;
    *(unsigned int *)(state + 0xc) = zero;
    *(unsigned int *)(state + 0x10) = zero;
    *(unsigned int *)(state + 0x14) = zero;
    *(unsigned int *)(state + 0x1c) = zero;
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
}
