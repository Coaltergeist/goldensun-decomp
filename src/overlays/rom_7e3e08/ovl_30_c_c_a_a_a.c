extern unsigned char gState[];
extern unsigned char Value_93[] asm("0x93");
extern unsigned char Value_95[] asm("0x95");
extern unsigned char Value_97[] asm("0x97");
extern unsigned char Result_93[] asm(".L41b0");
extern unsigned char Result_95[] asm(".L4270");
extern unsigned char Result_97[] asm(".L4318");
extern unsigned char Result_default[] asm(".L4198");
extern signed char ewram_2001004[];
extern unsigned char Value_3f42[] asm("0x3f42");
extern unsigned char Reg_bldcnt[] asm("0x4000050");
extern unsigned char Reg_bldalpha[] asm("0x4000052");

void *OvlFunc_957_2008a00(void) {
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register int value asm("r2");
    register void *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_93;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_93;
        goto done;
    }
    address = (unsigned int)Value_95;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_95;
        goto done;
    }
    address = (unsigned int)Value_97;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_97;
    else
        result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}

void OvlFunc_957_2008a54(void) {
    register unsigned int address asm("r3") = (unsigned int)ewram_2001004;
    register int mode asm("r2");
    register unsigned int control asm("r1");

    asm volatile("" : "+r"(address));
    mode = *(unsigned char *)address;
    control = (unsigned int)Value_3f42;
    address = (unsigned int)Reg_bldcnt;
    asm volatile("" : "+r"(address), "+r"(mode), "+r"(control));
    *(unsigned short *)address = control;
    asm volatile("" : "+r"(address), "+r"(mode), "+r"(control) : : "memory");
    mode = (signed int)((unsigned int)mode << 24) >> 24;
    asm volatile("" : "+r"(mode));

    if (mode == 0) {
        mode = 0x80;
        mode <<= 5;
        address += 2;
    } else if (mode == 1) {
        mode = 0xe0;
        address = (unsigned int)Reg_bldalpha;
        asm volatile("@ blend case 1" : "+r"(address), "+r"(mode));
        mode <<= 4;
    } else if (mode == 2) {
        mode = 0xc0;
        address = (unsigned int)Reg_bldalpha;
        asm volatile("@ blend case 2" : "+r"(address), "+r"(mode));
        mode <<= 4;
    } else if (mode == 3) {
        mode = 0xa0;
        address = (unsigned int)Reg_bldalpha;
        asm volatile("@ blend case 3" : "+r"(address), "+r"(mode));
        mode <<= 4;
    } else if (mode == 4) {
        mode = 0x80;
        address = (unsigned int)Reg_bldalpha;
        asm volatile("@ blend case 4" : "+r"(address), "+r"(mode));
        mode <<= 4;
    } else {
        mode = 0xc0;
        address = (unsigned int)Reg_bldalpha;
        asm volatile("@ blend default" : "+r"(address), "+r"(mode));
        mode <<= 3;
    }
    asm volatile("" : "+r"(address), "+r"(mode));
    *(unsigned short *)address = mode;
}
