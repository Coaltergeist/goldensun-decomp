typedef unsigned char u8;
typedef signed char s8;
typedef signed short s16;

extern u8 *_GetUnit(int unit_id);

int Func_80b27b0(int unit_id, int condition)
{
    register int mode asm("r5") = condition;
    register u8 *unit asm("r2") = _GetUnit(unit_id);
    register int result asm("r0") = 0;

    if (mode == 0 && *(s16 *)(unit + 0x38) <= 0)
        goto true_result;
    if (mode == 1 && *(s8 *)(unit + 0x131) != 0)
        goto true_result;
    if (mode == 2 && *(u8 *)(unit + 0x140) != 0)
        goto true_result;
    if (mode == 3) {
        register int offset asm("r1") = 0x98;
        register int value asm("r3");
        offset <<= 1;
        value = (int)unit + offset;
        value = *(u8 *)value;
        value <<= 24;
        value >>= 24;
        if (value != 0)
            goto true_result;
    }
    return result;
true_result:
    return 1;
}
