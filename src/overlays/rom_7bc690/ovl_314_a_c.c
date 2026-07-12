extern volatile unsigned int iwram_3001e40[];
extern unsigned char gState[];

extern void __PlaySound(int sound);
extern unsigned int __Random(void);
extern void OvlFunc_common0_10c(int arg0, int arg1, int arg2, int arg3,
                               int arg4, int arg5, int arg6, void *arg7);

int OvlFunc_933_2008344(unsigned int *actor) {
    unsigned char local[0x28];
    register unsigned char *work asm("r5");
    register unsigned int phase asm("r6");
    register unsigned int *actorReg asm("r7");
    register unsigned int arg0 asm("r0");
    register unsigned int arg1 asm("r1");
    register unsigned int arg2 asm("r2");
    register unsigned int arg3 asm("r3");

    work = (unsigned char *)iwram_3001e40;
    arg3 = *(volatile unsigned int *)work;
    arg2 = 7;
    arg3 &= arg2;
    actorReg = actor;
    if (arg3 == 0)
        __PlaySound(0x76);

    phase = *(volatile unsigned int *)work;
    arg3 = 0xf;
    phase &= arg3;
    arg0 = 0;
    asm volatile("" : "+r"(phase), "+r"(arg0), "+r"(arg3));
    if (phase == 0) {
        arg3 = 0xcccc;
        work = local;
        asm volatile("" : "+r"(arg3), "+r"(work));
        *(unsigned int *)(work + 8) = arg3;
        *(unsigned int *)(work + 0xc) = arg3;
        arg0 = __Random();
        arg3 = 0xf8;
        arg0 <<= 12;
        arg3 <<= 8;
        arg0 >>= 16;
        arg0 += arg3;
        arg3 = 0x880001;
        asm volatile("" : "+r"(arg0), "+r"(arg3), "+r"(work));
        *(unsigned short *)(work + 0x22) = arg0;
        arg0 = actorReg[2];
        asm volatile("" : "+r"(arg0));
        arg1 = actorReg[3];
        arg2 = actorReg[4];
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        asm volatile("" : "+r"(phase), "+r"(work));
        OvlFunc_common0_10c(arg0, arg1, arg2, 0,
                            phase, phase, arg3, work);
        arg0 = 0;
    }
    return arg0;
}

extern unsigned char Value_59[] asm("0x59");
extern unsigned char Value_5a[] asm("0x5a");
extern unsigned char Value_5b[] asm("0x5b");
extern unsigned char Value_5c[] asm("0x5c");
extern unsigned char Script_933_200a12c[] asm(".L212c");
extern unsigned char Script_933_200a174[] asm(".L2174");
extern unsigned char Script_933_200a1d4[] asm(".L21d4");
extern unsigned char Script_933_200a234[] asm(".L2234");
extern unsigned char Script_933_200a2dc[] asm(".L22dc");

unsigned char *OvlFunc_933_20083ac(void) {
    register unsigned int address asm("r3") = (unsigned int)gState;
    register int offset asm("r1") = 0xe0;
    register int state asm("r2");
    register unsigned char *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    state = *(short *)(address + offset);

    address = (unsigned int)Value_59;
    asm volatile("" : "+r"(address), "+r"(state));
    if (state == address)
        result = Script_933_200a174;
    else {
        address = (unsigned int)Value_5a;
        asm volatile("" : "+r"(address), "+r"(state));
        if (state == address)
            result = Script_933_200a1d4;
        else {
            address = (unsigned int)Value_5b;
            asm volatile("" : "+r"(address), "+r"(state));
            if (state == address)
                result = Script_933_200a234;
            else {
                address = (unsigned int)Value_5c;
                asm volatile("" : "+r"(address), "+r"(state));
                if (state == address)
                    result = Script_933_200a2dc;
                else
                    result = Script_933_200a12c;
            }
        }
    }
    return result;
}
