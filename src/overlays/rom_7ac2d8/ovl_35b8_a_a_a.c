extern unsigned char iwram_3001ebc[];
extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_801776c(int message, int arg1);
extern void __CutsceneEnd(void);
extern int __GetFlag(int flag);
extern int __CheckPartyItem(int item);

void OvlFunc_924_200b5b8(void) {
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    __Func_801776c(0x1576, 1);
    __CutsceneEnd();
}

void OvlFunc_924_200b5dc(void) {
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    __Func_801776c(0x953, 1);
    __CutsceneEnd();
}

void OvlFunc_924_200b600(void) {
    register int result asm("r0");
    register unsigned int offset asm("r1");
    register unsigned int address asm("r2");
    register unsigned int value asm("r3");

    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    if (__GetFlag(0x881) == 0)
        __Func_801776c(0x1636, 1);
    else
        __Func_801776c(0x1635, 1);

    result = __CheckPartyItem(0xb9);
    offset = 1;
    asm volatile("" : "+r"(result), "+r"(offset));
    offset = -offset;
    asm volatile("" : "+r"(result), "+r"(offset));
    if (result != offset) {
        value = (unsigned int)iwram_3001ebc;
        asm volatile("" : "+r"(value));
        offset = 0xb9;
        asm volatile("" : "+r"(value), "+r"(offset));
        value = *(unsigned int *)value;
        offset <<= 1;
        asm volatile("" : "+r"(value), "+r"(offset));
        address = value + offset;
        value = 1;
        asm volatile("" : "+r"(address), "+r"(value));
        *(unsigned short *)address = value;
    }
    __CutsceneEnd();
}
