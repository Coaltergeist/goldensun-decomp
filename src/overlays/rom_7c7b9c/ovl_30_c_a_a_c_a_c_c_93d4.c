extern unsigned char *iwram_3001e70;
extern unsigned int gOvl943RandomA asm(".L5b58");
extern unsigned int gOvl943RandomB asm(".L5b38");
extern unsigned int gOvl943Pair[2] asm(".L5b50");
extern unsigned int gOvl943Zero asm(".L5b60");

extern void __ClearFlag(unsigned int flag);
extern unsigned int __Random(void);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int frames);
extern void OvlFunc_943_2009444(void);

int OvlFunc_943_20093d4(void)
{
    register unsigned int root asm("r6");
    register unsigned char *work asm("r5");
    register unsigned int arg0 asm("r0");
    register unsigned int offset asm("r2");
    register unsigned char *field asm("r3");

    root = (unsigned int)&iwram_3001e70;
    asm volatile("" : "+r"(root));
    offset = 0x82;
    asm volatile("" : "+r"(offset));
    work = *(unsigned char **)root;
    asm volatile("" : "+r"(work));
    arg0 = 0x8e;
    asm volatile("" : "+r"(arg0));
    offset <<= 1;
    arg0 <<= 1;
    work += offset;
    __ClearFlag(arg0);

    field = *(unsigned char **)(root + 0x4c);
    offset = 0xe0;
    asm volatile("" : "+r"(field), "+r"(offset));
    offset <<= 1;
    field += offset;
    root = 0;
    offset += 0x49;
    *(unsigned int *)field = offset;
    *(unsigned int *)(work + 0x1c) = root;

    work = (unsigned char *)&gOvl943RandomA;
    asm volatile("" : "+r"(work));
    arg0 = __Random();
    arg0 = (arg0 << 16) >> 16;
    *(unsigned int *)work = arg0;

    work = (unsigned char *)&gOvl943RandomB;
    asm volatile("" : "+r"(work));
    arg0 = __Random();
    field = (unsigned char *)gOvl943Pair;
    asm volatile("" : "+r"(field));
    arg0 = (arg0 << 16) >> 16;
    *(unsigned int *)work = arg0;
    *(unsigned int *)field = root;
    *(unsigned int *)(field + 4) = root;

    field = (unsigned char *)&gOvl943Zero;
    asm volatile("" : "+r"(field));
    *(unsigned int *)field = root;

    __Func_800fe9c();
    __WaitFrames(1);
    OvlFunc_943_2009444();
    return 0;
}
