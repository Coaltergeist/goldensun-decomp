extern unsigned char *iwram_3001ebc;
extern unsigned char gState[];
extern unsigned char Value_1e[] asm("0x1e");
extern unsigned char Value_23[] asm("0x23");
extern unsigned char Value_20[] asm("0x20");
extern void OvlFunc_907_20088f0(void);
extern void OvlFunc_907_2008ae0(void);
extern void OvlFunc_907_2008d10(void);
extern void OvlFunc_907_2008ed8(void);
extern int __StartTask(void (*task)(void), int priority);

int OvlFunc_907_2008890(void)
{
    unsigned int offset;
    unsigned char *base;
    short state;

    offset = 0xe0;
    base = iwram_3001ebc;
    offset <<= 1;
    *(unsigned int *)(base + offset) = 0x80 << 1;
    state = *(short *)(gState + offset);
    if (state == (int)Value_1e) {
        OvlFunc_907_20088f0();
    } else if (state == (int)Value_23) {
        OvlFunc_907_2008ae0();
        __StartTask(OvlFunc_907_2008ed8, 0xc8 << 4);
    } else if (state == (int)Value_20) {
        OvlFunc_907_2008d10();
    }
    return 0;
}
