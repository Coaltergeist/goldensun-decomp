typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *_GetUnit(int unit);
extern int _Func_80788c4(int unit, int slot);

int Func_80a40ac(int unit)
{
    unsigned int first;
    register unsigned int item asm("r2");
    register int offset asm("r3");
    register int mask asm("r3");
    register int high asm("r3");
    register int repeats asm("r2");
    register int call_result asm("r1");
    register int slot asm("r6");
    u16 *equipment;
    int result;

    equipment = (u16 *)_GetUnit(unit);
    offset = 0xd8;
    first = *(u16 *)((u8 *)equipment + offset);
    call_result = 0;
    slot = 0;
    equipment = (u16 *)((u8 *)equipment + 0xd8);
    goto condition;
body:
    item = *equipment;
    asm volatile("ldr %0, 1f" : "=r" (mask));
    if ((item & mask) == 0) {
        high = item >> 11;
        repeats = high + 1;
        if (high == 0)
            repeats = 1;
        if (repeats != 0) {
            int remaining = repeats;
            do {
                call_result = _Func_80788c4(unit, slot);
                remaining--;
            } while (remaining != 0);
            asm volatile("b 2f\n\t.align 2, 0\n1:\t.word 0x200\n2:");
        }
        asm volatile("mov %0, #0" : "=r" (result));
        if (call_result == 2) {
            asm volatile("");
            goto found;
        }
        return result;
    }
    slot++;
    equipment++;
    if (slot > 14)
        goto done;
    first = *equipment;
condition:
    if (first != 0)
        goto body;
found:
    call_result = 1;
done:
    return call_result;
}
