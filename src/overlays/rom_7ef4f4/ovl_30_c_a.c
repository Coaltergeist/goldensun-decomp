typedef unsigned char u8;

extern u8 gState[];
extern u8 *__MapActor_GetActor(int actorId);
extern int OvlFunc_965_200a660(void *actor);
extern int __Func_8093fa0(void);
extern int __Func_8093e28(void);
extern void OvlFunc_965_200a6fc(void);

/* 主人公の向きに合わせて入口イベントを進める */
void OvlFunc_965_200a738(void)
{
    register u8 *actor asm("r5") = __MapActor_GetActor(0);
    register unsigned int direction asm("r5");
    register int result asm("r0");

    result = OvlFunc_965_200a660(actor);
    asm volatile("" : "+r"(actor), "+r"(result));
    {
        register unsigned int rawDirection asm("r3") =
            *(unsigned short *)(actor + 6);
        register unsigned int addend asm("r1") = 0x80;
        asm volatile("" : "+r"(rawDirection), "+r"(addend));
        addend <<= 6;
        direction = rawDirection + addend;
    }
    {
        register u8 *state asm("r3") = gState;
        register unsigned int stateOffset asm("r4") = 0xf9;
        register unsigned int directionMask asm("r1");
        register int stateResult asm("r2");
        register int stateValue asm("r3");

        asm volatile("" : "+r"(state), "+r"(stateOffset), "+r"(direction));
        stateOffset <<= 1;
        state += stateOffset;
        asm volatile("" : "+r"(state));
        directionMask = 0xc0;
        asm volatile("" : "+r"(directionMask));
        stateValue = *state;
        stateResult = result;
        directionMask <<= 8;
        result = 1;
        direction &= directionMask;
        result = -result;

        if (stateValue == 1 || stateResult == 0) {
            if (direction == directionMask)
                result = __Func_8093fa0();
            directionMask = 0x80;
            asm volatile("" : "+r"(directionMask));
            directionMask <<= 7;
            if (direction == directionMask)
                result = __Func_8093e28();
        }
    }
    if (result != 0 && gState[0x1f2] != 1)
        OvlFunc_965_200a6fc();
}
