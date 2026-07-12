extern unsigned char *__MapActor_GetActor(int actor);
extern int OvlFunc_947_2008350(int *position);
extern void OvlFunc_947_2009fd4(void);
extern int OvlFunc_947_2009268(void);
extern void __Func_8093e28(void);

void OvlFunc_947_200a040(void) {
    int position[3];
    register unsigned char *actor asm("r1");
    register int *positionPtr asm("r0");
    register int value asm("r3");
    register int offset asm("r2");

    actor = __MapActor_GetActor(0);
    asm volatile("" : "+r"(actor));
    value = *(int *)(actor + 8);
    asm volatile("" : "+r"(actor), "+r"(value));
    positionPtr = position;
    asm volatile("" : "+r"(actor), "+r"(positionPtr), "+r"(value));
    positionPtr[0] = value;
    value = *(int *)(actor + 0xc);
    asm volatile("" : "+r"(actor), "+r"(positionPtr), "+r"(value));
    positionPtr[1] = value;
    offset = 0x80;
    asm volatile("" : "+r"(actor), "+r"(positionPtr), "+r"(offset));
    value = *(int *)(actor + 0x10);
    asm volatile("" : "+r"(positionPtr), "+r"(offset), "+r"(value));
    offset <<= 13;
    asm volatile("" : "+r"(positionPtr), "+r"(offset), "+r"(value));
    value += offset;
    asm volatile("" : "+r"(positionPtr), "+r"(value));
    positionPtr[2] = value;
    if (OvlFunc_947_2008350(positionPtr) != 0)
        OvlFunc_947_2009fd4();
    else if (OvlFunc_947_2009268() == 0)
        __Func_8093e28();
}
