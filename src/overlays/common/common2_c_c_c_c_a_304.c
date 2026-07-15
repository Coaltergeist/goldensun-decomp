typedef unsigned int u32;
typedef signed int s32;

typedef struct ConversionState {
    u32 kind;
    u32 sign;
    u32 exponent;
    u32 magnitudeLow;
    u32 magnitudeHigh;
} ConversionState;

extern double OvlFunc_common2_44c(ConversionState *state);

double OvlFunc_common2_304(s32 value)
{
    ConversionState state;
    register ConversionState *statePtr asm("r5") = &state;
    register u32 sign asm("r2");
    register u32 magnitudeLow asm("r3");
    register s32 magnitudeHigh asm("r4");

    statePtr->kind = 3;
    sign = (u32)value >> 31;
    statePtr->sign = sign;
    if (value == 0) {
        statePtr->kind = 2;
    } else {
        statePtr->exponent = 60;
        if (sign != 0) {
            if ((u32)value == 0x80000000)
                return -2147483648.0;
            magnitudeLow = -value;
            magnitudeHigh = (s32)magnitudeLow >> 31;
        } else {
            magnitudeLow = value;
            magnitudeHigh = value >> 31;
        }
        statePtr->magnitudeLow = magnitudeLow;
        statePtr->magnitudeHigh = magnitudeHigh;
        asm volatile("" : : : "memory");

        {
        register u32 initialHigh asm("r3") = statePtr->magnitudeHigh;
        register u32 limitValue asm("r2") = 0x0fffffff;
        if (initialHigh <= limitValue) {
            register ConversionState *loopState asm("r0") = statePtr;
            register u32 limit asm("r12") = limitValue;
            asm volatile("" : "+r" (loopState), "+r" (limit));
        do {
            register u32 low asm("r3") = loopState->magnitudeLow;
            register u32 high asm("r4") = loopState->magnitudeHigh;
            register u32 carry asm("r1");
            register u32 shiftedHigh asm("r2");
            asm volatile(
                "lsr r1, r3, #31\n\t"
                "lsl r2, r4, #1\n\t"
                "mov r4, r1\n\t"
                "lsl r3, #1\n\t"
                "orr r4, r2\n\t"
                "str r3, [r0, #0xc]\n\t"
                "str r4, [r0, #0x10]"
                : "+r" (low), "+r" (high), "=r" (carry),
                  "=r" (shiftedHigh)
                : "r" (loopState)
                : "memory");
            loopState->exponent--;
        } while (loopState->magnitudeHigh <= limit);
        }
        }
    }
    return OvlFunc_common2_44c(statePtr);
}
