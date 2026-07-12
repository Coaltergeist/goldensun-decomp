extern unsigned char gState[];
extern unsigned char Value_44[] asm("0x44");
extern unsigned char Value_45[] asm("0x45");
extern unsigned char Value_46[] asm("0x46");
extern unsigned char Result_44[] asm(".L36a0");
extern unsigned char Result_45[] asm(".L3790");
extern unsigned char Result_46[] asm(".L38b0");
extern unsigned char Result_default[] asm(".L3a30");
extern void __CutsceneStart(void);
extern int OvlFunc_927_2008474(int *values);
extern void OvlFunc_927_2008608_4(int, int, int, int) asm("OvlFunc_927_2008608");
extern void __SetFlag(int flag);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_809228c(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound);
extern void __Func_8092b08(int actor, int arg1);
extern unsigned char *__MapActor_GetActor(int actor);
extern void Func_8010704_4(int, int, int, int) asm("__Func_8010704");
extern void __CutsceneEnd(void);

struct Pair927 {
    int first;
    int second;
};

void *OvlFunc_927_2008f40(void) {
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
    address = (unsigned int)Value_44;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_44;
        goto done;
    }
    address = (unsigned int)Value_45;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_45;
        goto done;
    }
    address = (unsigned int)Value_46;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_46;
    else
        result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}

void OvlFunc_927_2008f94(void) {
    int frame_words[8];
    register int *values asm("r5");
    register struct Pair927 *outgoing asm("sp");

    __CutsceneStart();
    values = &frame_words[2];
    asm volatile("" : "+r"(values));
    if (OvlFunc_927_2008474(values) != 0) {
        register struct Pair927 *copy_dest asm("r3") = outgoing;
        register struct Pair927 *copy_src asm("r2");

        asm volatile("" : "+r"(copy_dest));
        copy_src = (struct Pair927 *)&frame_words[6];
        asm volatile("" : "+r"(copy_dest), "+r"(copy_src));
        __builtin_memcpy(copy_dest, copy_src, sizeof(*outgoing));
        OvlFunc_927_2008608_4(values[0], values[1], values[2], values[3]);
        if (values[1] == 9 && (values[4] >> 20) == 0x1a) {
            unsigned char *actor;
            register int arg0 asm("r0");
            register int arg1 asm("r1");
            register int arg2 asm("r2");
            register int stack0 asm("r3");

            __SetFlag(0xc4 << 2);
            __MapActor_SetAnim(9, 3);
            arg1 = 0x80;
            arg2 = 0x80;
            asm volatile("" : "+r"(arg1), "+r"(arg2));
            arg0 = 9;
            asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
            arg1 <<= 7;
            arg2 <<= 8;
            asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
            __MapActor_SetSpeed(arg0, arg1, arg2);
            __Func_809228c(9, 0, -0x10);
            __CutsceneWait(0x2d);
            __MapActor_SetAnim(9, 8);
            __PlaySound(0xf0);
            __Func_8092b08(9, 1);
            actor = __MapActor_GetActor(9);
            actor[0x23] = 2;
            arg2 = 0x19;
            asm volatile("" : "+r"(arg2));
            stack0 = 0x1f;
            asm volatile("" : "+r"(stack0), "+r"(arg2));
            outgoing->first = stack0;
            outgoing->second = arg2;
            Func_8010704_4(0x26, 0x1b, 4, 2);
        }
    }
    __CutsceneEnd();
}
