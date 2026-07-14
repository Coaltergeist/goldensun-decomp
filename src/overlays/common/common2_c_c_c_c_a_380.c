typedef unsigned int u32;
typedef signed int s32;
typedef unsigned long long u64;

typedef struct {
    u32 kind;
    u32 sign;
    s32 exponent;
    u32 fractionLow;
    u32 fractionHigh;
} SoftDouble;

extern SoftDouble *OvlFunc_common2_618(const void *value, SoftDouble *out);
extern u32 OvlFunc_common2_40c(u32 *value);
extern u32 OvlFunc_common2_3ec(s32 *value);
extern u32 OvlFunc_common2_3fc(s32 *value);
extern u64 OvlFunc_common2_41c(u64 value, int shift);
extern s32 ShiftWords(u32 low, u32 high, int shift)
    asm("OvlFunc_common2_41c");

s32 OvlFunc_common2_380(u32 low, u32 high)
{
    u32 frame[7];
    register u32 *words asm("r3") = frame;
    register SoftDouble *parts asm("r4") = (SoftDouble *)&frame[2];
    s32 result;

    asm volatile("" : "+r"(words), "+r"(parts));
    words[0] = low;
    words[1] = high;
    OvlFunc_common2_618(words, parts);
    if (OvlFunc_common2_40c(&parts->kind) ||
        OvlFunc_common2_3ec((s32 *)&parts->kind))
        return 0;

    if (OvlFunc_common2_3fc((s32 *)&parts->kind))
        return 0x7fffffff + (parts->sign != 0);
    if (parts->exponent < 0)
        return 0;
    if (parts->exponent > 30)
        return 0x7fffffff + (parts->sign != 0);

    result = ShiftWords(parts->fractionLow, parts->fractionHigh,
                        60 - parts->exponent);
    if (parts->sign != 0)
        result = -result;
    return result;
}
