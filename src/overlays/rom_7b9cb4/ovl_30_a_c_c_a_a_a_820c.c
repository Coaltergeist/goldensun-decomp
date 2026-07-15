extern unsigned char gState[];
extern unsigned char gScript_882__0200ca00[];

extern unsigned char Value_4d[] asm("0x4d");
extern unsigned char Value_4f[] asm("0x4f");
extern unsigned char Value_51[] asm("0x51");
extern unsigned char Value_52[] asm("0x52");
extern unsigned char Value_53[] asm("0x53");
extern unsigned char Value_54[] asm("0x54");
extern unsigned char Value_55[] asm("0x55");
extern unsigned char Value_56[] asm("0x56");
extern unsigned char Value_57[] asm("0x57");

extern unsigned char Script_4928[] asm(".L4928");
extern unsigned char Script_4940[] asm(".L4940");
extern unsigned char Script_49a0[] asm(".L49a0");
extern unsigned char Script_4a60[] asm(".L4a60");
extern unsigned char Script_4aa8[] asm(".L4aa8");
extern unsigned char Script_4b68[] asm(".L4b68");
extern unsigned char Script_4b98[] asm(".L4b98");
extern unsigned char Script_4c40[] asm(".L4c40");
extern unsigned char Script_4cd0[] asm(".L4cd0");

unsigned char *OvlFunc_932_200820c(void) {
    register unsigned int value asm("r3");
    register unsigned int offset asm("r1");
    register int state asm("r2");

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value));
    offset = 0xe0;
    offset <<= 1;
    asm volatile("" : "+r"(value), "+r"(offset));
    value += offset;
    offset = 0;
    asm volatile("" : "+r"(value), "+r"(offset));
    state = *(short *)(value + offset);

    value = (unsigned int)Value_4d;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4940;
    value = (unsigned int)Value_4f;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_49a0;
    value = (unsigned int)Value_51;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return gScript_882__0200ca00;
    value = (unsigned int)Value_52;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4a60;
    value = (unsigned int)Value_53;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4aa8;
    value = (unsigned int)Value_54;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4b68;
    value = (unsigned int)Value_55;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4b98;
    value = (unsigned int)Value_56;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4c40;
    value = (unsigned int)Value_57;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4cd0;
    return Script_4928;
}
