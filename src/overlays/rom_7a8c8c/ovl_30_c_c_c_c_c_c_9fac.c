extern unsigned char gState[];
extern unsigned char iwram_3001f30[];

extern void __Func_8091220(unsigned int arg0, unsigned int arg1);
extern void __Func_8091200(unsigned int value, unsigned int mode);
extern void __Func_8091254(unsigned int frames);
extern void __WaitFrames(int frames);

void OvlFunc_922_2009fac(void)
{
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r2") = 0xe1;
    register int value asm("r3");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    asm volatile("" : "+r"(value));

    if (value > 6)
        return;

    {
        register unsigned int r3v asm("r3") = (unsigned int)iwram_3001f30;
        register unsigned int r2v asm("r2");
        register unsigned int r0v asm("r0");
        register unsigned int r1v asm("r1");
        register unsigned int r4v asm("r4");

        asm volatile("" : "+r"(r3v));
        r2v = *(unsigned int *)r3v;
        asm volatile("" : "+r"(r3v), "+r"(r2v));
        r0v = 1;
        asm volatile("" : "+r"(r3v), "+r"(r2v), "+r"(r0v));
        r3v -= 0x64;
        asm volatile("" : "+r"(r3v), "+r"(r2v), "+r"(r0v));
        r2v += 0x34;
        asm volatile("" : "+r"(r3v), "+r"(r2v), "+r"(r0v));
        r1v = *(unsigned int *)r3v;
        asm volatile("" : "+r"(r2v), "+r"(r0v), "+r"(r1v));
        *(unsigned char *)r2v = (unsigned char)r0v;

        r2v = 0x53e;
        asm volatile("" : "+r"(r1v), "+r"(r0v), "+r"(r2v));
        r4v = 0;
        asm volatile("" : "+r"(r1v), "+r"(r0v), "+r"(r2v), "+r"(r4v));
        r3v = r1v + r2v;
        r2v -= 2;
        asm volatile("" : "+r"(r1v), "+r"(r0v), "+r"(r2v), "+r"(r3v), "+r"(r4v));
        *(unsigned char *)r3v = (unsigned char)r4v;
        r3v = r1v + r2v;
        asm volatile("" : "+r"(r1v), "+r"(r0v), "+r"(r3v));
        *(unsigned char *)r3v = (unsigned char)r0v;

        r3v = 0x53d;
        asm volatile("" : "+r"(r1v), "+r"(r0v), "+r"(r3v));
        r1v = r1v + r3v;
        asm volatile("" : "+r"(r1v), "+r"(r0v));
        *(unsigned char *)r1v = (unsigned char)r0v;
    }

    __Func_8091220(0, 1);
    __Func_8091200(0x203108, 1);
    __Func_8091254(0x10);
    __WaitFrames(0x10);
}
