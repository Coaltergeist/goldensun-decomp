extern unsigned char gState[];
extern unsigned char gScript_925__0200b8f4[];
extern void __Func_808b868(unsigned char *script);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_200a3a0(void);
extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_964_2008cd0(unsigned int *position);
extern void OvlFunc_964_200a410(void);

extern unsigned char Value_ac[] asm("0xac");
extern unsigned char Script_3a74[] asm(".L3a74");

unsigned char *OvlFunc_964_20092e0(void) {
    register unsigned char *script asm("r5");
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
    value = (unsigned int)Value_ac;
    asm volatile("" : "+r"(value), "+r"(state));

    if (state == value)
        script = gScript_925__0200b8f4;
    else
        script = Script_3a74;
    asm volatile("" : "+r"(script));
    __Func_808b868(script);
    return script;
}

void OvlFunc_964_2009318(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __CutsceneStart();
    arg4 = 9;
    arg5 = 0x26;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x49, 0x26, 5, 5, arg4, arg5);
    OvlFunc_964_20080c4();
    OvlFunc_964_200a3a0();
    __CutsceneEnd();
}

void OvlFunc_964_2009348(void) {
    unsigned int position[3];
    register unsigned char *actor asm("r0") = __MapActor_GetActor(0);
    register unsigned int adjust asm("r1");
    register unsigned int *dest asm("r2");
    register unsigned int value asm("r3");

    adjust = 0xffe00000;
    value = *(unsigned int *)(actor + 8);
    dest = position;
    asm volatile("" : "+r"(actor), "+r"(adjust), "+r"(dest), "+r"(value));
    value += adjust;
    dest[0] = value;
    value = *(unsigned int *)(actor + 0xc);
    dest[1] = value;
    value = *(unsigned int *)(actor + 0x10);
    actor = (unsigned char *)dest;
    dest[2] = value;
    asm volatile("" : "+r"(actor));
    OvlFunc_964_2008cd0((unsigned int *)actor);
}

void OvlFunc_964_2009374(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __CutsceneStart();
    arg4 = 0x1d;
    arg5 = 0x1e;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x5d, 0x1e, 6, 5, arg4, arg5);
    OvlFunc_964_20080c4();
    OvlFunc_964_200a410();
    __CutsceneEnd();
}
