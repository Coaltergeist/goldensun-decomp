extern void Func_8016478(unsigned char *box);
extern void ClearUIRegion(int x, int y, int width, int height);

void CloseUIBox(unsigned char *box, int immediate) {
    register unsigned char *boxReg asm("r5") = box;
    register int zero asm("r6");
    register int immediateReg asm("r7") = immediate;

    asm volatile("" : "+r"(boxReg), "+r"(immediateReg));
    if (boxReg != 0) {
        register unsigned int value asm("r3");

        Func_8016478(box);
        value = *(unsigned short *)(boxReg + 0xc);
        asm volatile("" : "+r"(value));
        *(unsigned short *)(boxReg + 0x1c) = value;
        value = *(unsigned short *)(boxReg + 0xe);
        asm volatile("" : "+r"(value));
        *(unsigned short *)(boxReg + 0x1e) = value;
        value = *(unsigned short *)(boxReg + 8);
        asm volatile("" : "+r"(value));
        *(unsigned short *)(boxReg + 0x20) = value;
        asm volatile("" : "+r"(value));
        value = *(unsigned short *)(boxReg + 0xa);
        asm volatile("" : "+r"(value));
        zero = 0;
        asm volatile("" : "+r"(zero), "+r"(value));
        *(unsigned short *)(boxReg + 0x16) = zero;
        *(unsigned short *)(boxReg + 0x22) = value;
        if (immediateReg != 0) {
            ClearUIRegion(*(unsigned short *)(boxReg + 0xc),
                          *(unsigned short *)(boxReg + 0xe),
                          *(unsigned short *)(boxReg + 8),
                          *(unsigned short *)(boxReg + 0xa));
            *(int *)(boxReg + 0) = zero;
            *(int *)(boxReg + 4) = zero;
            *(unsigned short *)(boxReg + 8) = zero;
            *(unsigned short *)(boxReg + 0xa) = zero;
            *(unsigned short *)(boxReg + 0xc) = zero;
            *(unsigned short *)(boxReg + 0xe) = zero;
            *(unsigned short *)(boxReg + 0x10) = zero;
            *(unsigned short *)(boxReg + 0x12) = zero;
            *(unsigned short *)(boxReg + 0x14) = zero;
            *(unsigned short *)(boxReg + 0x16) = zero;
            *(unsigned short *)(boxReg + 0x18) = zero;
            *(unsigned short *)(boxReg + 0x1a) = zero;
            *(unsigned short *)(boxReg + 0x1c) = zero;
            *(unsigned short *)(boxReg + 0x1e) = zero;
            *(unsigned short *)(boxReg + 0x20) = zero;
            *(unsigned short *)(boxReg + 0x22) = zero;
        } else {
            value = 4;
            asm volatile("" : "+r"(value));
            *(unsigned short *)(boxReg + 0x18) = immediateReg;
            *(unsigned short *)(boxReg + 0x1a) = value;
        }
    }
}
