typedef unsigned int u32;

typedef struct {
    u32 kind;
    u32 sign;
    int exponent;
    u32 fractionLow;
    u32 fractionHigh;
} SoftDouble;

typedef struct {
    u32 rightWords[2];
    u32 leftWords[2];
    SoftDouble result;
    SoftDouble rightParts;
    SoftDouble leftParts;
} SoftDoubleFrame;

extern SoftDouble *OvlFunc_common2_618(const void *value, SoftDouble *out);
extern SoftDouble *OvlFunc_common2_0(const SoftDouble *left,
                                    const SoftDouble *right,
                                    SoftDouble *out);
extern double OvlFunc_common2_44c(const SoftDouble *value);

/* ソフト浮動小数点で二つの実数を減算する。 */
double OvlFunc_common2_28c(u32 leftLow, u32 leftHigh,
                          u32 rightLow, u32 rightHigh) {
    SoftDoubleFrame frame;
    register void *workAddress asm("r4");
    register void *rightAddress asm("r5");
    register SoftDouble *leftPartsAddress asm("r6");
    register void *callValue asm("r0");
    register SoftDouble *callOut asm("r1");

    workAddress = frame.leftWords;
    leftPartsAddress = &frame.leftParts;
    rightAddress = frame.rightWords;
    asm volatile("" : "+r"(workAddress), "+r"(rightAddress),
                         "+r"(leftPartsAddress));
    ((u32 *)workAddress)[0] = leftLow;
    ((u32 *)workAddress)[1] = leftHigh;
    callValue = workAddress;
    callOut = leftPartsAddress;
    asm volatile("" : "+r"(callValue), "+r"(callOut),
                         "+r"(rightLow), "+r"(rightHigh));
    ((u32 *)rightAddress)[0] = rightLow;
    ((u32 *)rightAddress)[1] = rightHigh;
    OvlFunc_common2_618(callValue, callOut);
    workAddress = &frame.rightParts;
    asm volatile("" : "+r"(workAddress), "+r"(rightAddress),
                         "+r"(leftPartsAddress));
    callValue = rightAddress;
    asm volatile("" : "+r"(callValue));
    callOut = workAddress;
    asm volatile("" : "+r"(callOut));
    OvlFunc_common2_618(callValue, callOut);
    ((SoftDouble *)workAddress)->sign ^= 1;
    return OvlFunc_common2_44c(
        OvlFunc_common2_0(leftPartsAddress, workAddress, &frame.result));
}
