extern unsigned int L3b40[] __asm__(".Lm897_3b40");
extern unsigned char *L3b10[] __asm__(".Lm897_3b10");

void OvlFunc_897_200aba0(void)
{
    unsigned int i;
    unsigned int c;
    unsigned char *p;

    for (i = 0; i < 10; i++) {
        c = L3b40[i];
        if (c != 0) {
            p = L3b10[i];
            if (c <= 8) {
                *(int *)(p + 0x18) += -0x1ccc;
                *(int *)(p + 0x1c) += 0x8000;
                *(int *)(p + 0x0c) += 0x4ccc;
                *(int *)(p + 0x3c) += 0x4ccc;
            } else {
                *(int *)(p + 0x0c) += 0x140000;
                *(int *)(p + 0x3c) += 0x140000;
            }
            if (++L3b40[i] > 14) {
                L3b40[i] = 0;
            }
        }
    }
}
