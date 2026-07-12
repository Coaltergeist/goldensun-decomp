extern unsigned char gState[];
extern unsigned char Value_24[] asm("0x24");
extern unsigned char Value_27[] asm("0x27");
extern unsigned char Result_24[] asm(".L3098");
extern unsigned char Result_27[] asm(".L3368");
extern unsigned char Result_default[] asm(".L3080");
extern int __GetFlag(int flag);
extern void OvlFunc_911_20080a0(void *script);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __UI_Sanctum(int actor);
extern void __MessageID(int message);
extern void __Func_8093054(int actor, int message);
extern void __CutsceneEnd(void);

void *OvlFunc_911_20081dc(void) {
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
    address = (unsigned int)Value_24;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        if (__GetFlag(0x845) == 0)
            OvlFunc_911_20080a0(Result_24);
        result = Result_24;
        goto done;
    }
    address = (unsigned int)Value_27;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_27;
    else
        result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}

void OvlFunc_911_2008230(void) {
    register unsigned int position asm("r5");
    unsigned char *actor = __MapActor_GetActor(0);

    position = *(unsigned short *)(actor + 6);
    asm volatile("" : "+r"(position));
    __CutsceneStart();
    position += 0xffff5fff;
    if (position <= 0x3ffe) {
        __UI_Sanctum(0x10);
    } else {
        __MessageID(0x16b3);
        __Func_8093054(0x10, 0);
    }
    __CutsceneEnd();
}
