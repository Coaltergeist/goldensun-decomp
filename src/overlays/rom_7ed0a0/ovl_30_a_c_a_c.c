extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_964_2008cd0(unsigned int *position);
extern void __CutsceneStart(void);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_200a480(void);
extern void __CutsceneEnd(void);

void OvlFunc_964_20093b4(void) {
    unsigned int position[3];
    register unsigned char *actor asm("r0") = __MapActor_GetActor(0);
    register unsigned int adjust asm("r1");
    register unsigned int *dest asm("r2");
    register unsigned int value asm("r3");

    adjust = 0x80;
    asm volatile("" : "+r"(actor), "+r"(adjust));
    value = *(unsigned int *)(actor + 8);
    asm volatile("" : "+r"(actor), "+r"(adjust), "+r"(value));
    adjust <<= 14;
    asm volatile("" : "+r"(adjust), "+r"(value));
    dest = position;
    asm volatile("" : "+r"(dest), "+r"(value));
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

void OvlFunc_964_20093e0(void) {
    __CutsceneStart();
    __Func_8010704(0x59, 0x31, 3, 2, 0x19, 0x31);
    __Func_8010704(0x59, 0x33, 8, 5, 0x19, 0x33);
    OvlFunc_964_20080c4();
    OvlFunc_964_200a480();
    __CutsceneEnd();
}
