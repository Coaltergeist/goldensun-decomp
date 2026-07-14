typedef signed short s16;
typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *iwram_3001e74;

int Func_80b9a70(u32 value)
{
    register u8 *base asm("r3") = iwram_3001e74;
    register u32 saved_value asm("r4") = value;
    register int result_kind asm("r5");
    register int result asm("r0");
    register int offset asm("r1");
    register int entry asm("r2");

    if (saved_value > 7)
        goto high_group;
    result_kind = 0x80;
    result = 0;
    result_kind <<= 1;
    offset = 0x58;
low_loop:
    entry = *(s16 *)((u32)offset + (u32)base);
    if (entry == 0xff)
        goto not_found;
    if (entry == 0xfe)
        goto low_next;
    if (entry == saved_value)
        goto found;
low_next:
    offset += 2;
    result++;
    goto low_loop;

high_group:
    result_kind = 0xc0;
    result = 0;
    base += 2;
    result_kind <<= 1;
    offset = 0x64;
high_loop:
    entry = *(s16 *)((u32)offset + (u32)base);
    if (entry != 0xff)
        goto high_check;
not_found:
    result = -1;
    goto done;
high_check:
    if (entry == 0xfe)
        goto high_next;
    if (entry != saved_value)
        goto high_next;
found:
    result |= result_kind;
    goto done;
high_next:
    offset += 2;
    result++;
    goto high_loop;

done:
    return result;
}
