extern void *galloc_ewram(unsigned int slot, unsigned int size);
extern void Func_800430c(void);
extern void Func_809c314(void);
extern void Func_8091660(void);
extern void Func_80936a0(unsigned int a, unsigned int b);
extern void WaitFrames(unsigned int frames);
extern void Func_80043e0(void);
extern unsigned int gKeyHeld;

void Func_809c3a4(void)
{
    unsigned char *p = (unsigned char *)galloc_ewram(0x1b, 0xccc);

    if (*(short *)(p + 0x19e) == 3) {
        Func_800430c();
        Func_809c314();
        Func_8091660();
        Func_80936a0(0x9d89, 6);
        if (gKeyHeld & 0x200) {
            do {
                WaitFrames(1);
            } while (gKeyHeld & 0x200);
        }
        Func_80936a0(0x10000, 6);
        Func_80043e0();
    }
}
