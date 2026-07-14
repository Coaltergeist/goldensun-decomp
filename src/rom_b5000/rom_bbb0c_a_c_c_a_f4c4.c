typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *_GetUnit(int unit_id);
extern int Func_80bf208(int unit_id, int state, int frames);

int Func_80bf4c4(int unit_id)
{
    register int saved_id asm("r6") = unit_id;
    register u8 *state_ptr asm("r5") = _GetUnit(unit_id) + 0x13d;
    register u32 state asm("r2") = *state_ptr;
    register u32 value asm("r3") = state;
    register int result asm("r0");

    if (value == 0)
        goto false_result;
    if (value > 7) {
        value += 0xf8;
        *state_ptr = value;
        state = value;
    }
    value = state & 7;
    if (value != 0) {
        value = state;
        value += 0xff;
        *state_ptr = value;
        state = value;
    }
    value = (u8)state;
    result = 1;
    if (value == 0)
        goto done;
    if (value > 7)
        goto false_result;
    if (Func_80bf208(saved_id, *state_ptr, 0x1e) == 0)
        goto false_result;
    *state_ptr = 0;
    result = 1;
    goto done;
false_result:
    result = 0;
done:
    return result;
}
