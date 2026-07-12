extern unsigned char gState[];
extern unsigned char Value_4d[] __asm__("0x4d");
extern unsigned char Value_4e[] __asm__("0x4e");
extern unsigned char Value_4f[] __asm__("0x4f");
extern unsigned char Value_50[] __asm__("0x50");
extern unsigned char Value_51[] __asm__("0x51");
extern unsigned char Value_52[] __asm__("0x52");
extern unsigned char Value_53[] __asm__("0x53");
extern unsigned char Value_54[] __asm__("0x54");
extern unsigned char Value_55[] __asm__("0x55");
extern unsigned char Value_56[] __asm__("0x56");
extern unsigned char Value_57[] __asm__("0x57");
extern unsigned char gScript_882__0200cd6c[];
extern unsigned char Script_4d24[] __asm__(".L4d24");
extern unsigned char Script_4d9c[] __asm__(".L4d9c");
extern unsigned char Script_4dc0[] __asm__(".L4dc0");
extern unsigned char gScript_882__0200ce5c[];
extern unsigned char gScript_881__0200cebc[];
extern unsigned char Script_4f34[] __asm__(".L4f34");
extern unsigned char Script_4fb8[] __asm__(".L4fb8");
extern unsigned char Script_506c[] __asm__(".L506c");
extern unsigned char Script_50cc[] __asm__(".L50cc");
extern unsigned char Script_512c[] __asm__(".L512c");
extern unsigned char Script_5150[] __asm__(".L5150");
extern unsigned char Script_4d18[] __asm__(".L4d18");
extern int __GetFlag(int flag);

unsigned char *OvlFunc_932_2009678(void)
{
    /* Preserve the original state-load and comparison register order. */
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
    if (state == value) {
        if (__GetFlag(0x8fd) != 0)
            return gScript_882__0200cd6c;
        return Script_4d24;
    }
    value = (unsigned int)Value_4e;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4d9c;
    value = (unsigned int)Value_4f;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4dc0;
    value = (unsigned int)Value_50;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return gScript_882__0200ce5c;
    value = (unsigned int)Value_51;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return gScript_881__0200cebc;
    value = (unsigned int)Value_52;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4f34;
    value = (unsigned int)Value_53;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_4fb8;
    value = (unsigned int)Value_54;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_506c;
    value = (unsigned int)Value_55;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_50cc;
    value = (unsigned int)Value_56;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_512c;
    value = (unsigned int)Value_57;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_5150;
    return Script_4d18;
}
