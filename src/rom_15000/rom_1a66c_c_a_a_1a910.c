typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e98;

u8 *Func_801a910(int group)
{
    register u8 *base asm("r4") = iwram_3001e98;
    register u8 *result asm("r0");
    register int index asm("r1");

    if (group == 0)
        goto group_zero;
    {
        register int entry_offset asm("r3") = 0xef;
        register u16 *entry asm("r2");
        entry_offset <<= 1;
        index = 0;
        entry = (u16 *)(base + entry_offset);
        result = 0;
    nonzero_loop:
        if (*entry == 0) {
            register int result_offset asm("r3") = 0xea;
            result = base + (int)result;
            result_offset <<= 1;
            result += result_offset;
            goto done;
        }
        index++;
        entry = (u16 *)((u8 *)entry + 0x34);
        result += 0x34;
        if (index != 5)
            goto nonzero_loop;
        asm volatile ("" ::: "memory");
        goto no_result;
    }

group_zero:
    {
        register u8 *candidate asm("r2") = base;
        register u16 *entry asm("r0") = (u16 *)base;
        register int value asm("r3");
        index = 0;
        candidate += 0x68;
        entry = (u16 *)((u8 *)entry + 0x72);
    zero_loop:
        value = *entry;
        entry = (u16 *)((u8 *)entry + 0x34);
        if (value == 0) {
            result = candidate;
            goto done;
        }
        index++;
        candidate += 0x34;
        if (index != 7)
            goto zero_loop;
    }

no_result:
    result = 0;
done:
    return result;
}
