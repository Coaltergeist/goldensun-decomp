extern unsigned char Lm926_48f0[] __asm__(".Lm926_48f0");
extern unsigned char Lm926_4ae8[] __asm__(".Lm926_4ae8");
extern unsigned char Lm926_4998[] __asm__(".Lm926_4998");
extern void __Func_808b868(void *);
extern int __GetFlag(int);

void *FuchinTemple_GetActors(void)
{
    GlobalState *p = &gState;

    if (*(short *)((char *)p + 0x1c0) == (int)Lconst_3c) {
        return Lm926_48f0;
    }
    if (*(short *)((char *)p + 0x1c2) == 3) {
        return Lm926_4ae8;
    }
    if (__GetFlag(0x895)) {
        unsigned char *base = Lm926_4998;
        int flag = 0x895;

        *(unsigned short *)(base + 0x7a) = flag;
        *(unsigned short *)(base + 0xaa) = flag;
        *(int *)(base + 0xc8) = 0x90 << 17;
        *(int *)(base + 0xd0) = 0xf8 << 16;
        *(unsigned short *)(base + 0x10a) = flag;
        *(unsigned short *)(base + 0x122) = flag;
    }
    __Func_808b868(Lm926_4998);
    return Lm926_4998;
}
