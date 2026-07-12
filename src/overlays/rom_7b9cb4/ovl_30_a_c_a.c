extern unsigned char gState[];
extern unsigned char gOvl_0200c194[];
extern unsigned char ActorCmd_ARRAY_943__0200c464[];
extern unsigned char gScript_936__0200c164[];
extern unsigned char gScript_943__0200c80c[];
extern unsigned char gOvl_0200c83c[];

extern unsigned char Value_4d[] asm("0x4d");
extern unsigned char Value_4e[] asm("0x4e");
extern unsigned char Value_4f[] asm("0x4f");
extern unsigned char Value_50[] asm("0x50");
extern unsigned char Value_51[] asm("0x51");
extern unsigned char Value_52[] asm("0x52");
extern unsigned char Value_53[] asm("0x53");
extern unsigned char Value_54[] asm("0x54");
extern unsigned char Value_55[] asm("0x55");
extern unsigned char Value_56[] asm("0x56");
extern unsigned char Value_57[] asm("0x57");

extern unsigned char Script_420c[] asm(".L420c");
extern unsigned char Script_426c[] asm(".L426c");
extern unsigned char Script_4314[] asm(".L4314");
extern unsigned char Script_43ec[] asm(".L43ec");
extern unsigned char Script_4524[] asm(".L4524");
extern unsigned char Script_459c[] asm(".L459c");
extern unsigned char Script_4644[] asm(".L4644");
extern unsigned char Script_4704[] asm(".L4704");
extern unsigned char Script_477c[] asm(".L477c");

unsigned char *OvlFunc_932_20080e4(void) {
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
        return gOvl_0200c194;
    value = (unsigned int)Value_4e;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_420c;
    value = (unsigned int)Value_4f;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_426c;
    value = (unsigned int)Value_50;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4314;
    value = (unsigned int)Value_51;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_43ec;
    value = (unsigned int)Value_52;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return ActorCmd_ARRAY_943__0200c464;
    value = (unsigned int)Value_53;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4524;
    value = (unsigned int)Value_54;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_459c;
    value = (unsigned int)Value_55;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4644;
    value = (unsigned int)Value_56;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4704;
    value = (unsigned int)Value_57;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_477c;
    return gScript_936__0200c164;
}

unsigned char *OvlFunc_932_20081c8(void) {
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

    value = (unsigned int)Value_55;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return gScript_943__0200c80c;
    value = (unsigned int)Value_56;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return gOvl_0200c83c;
    return 0;
}
