extern unsigned char *iwram_3001f30;
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8096fb0(int, int);
extern void __Func_80970f8(int, int);
extern void __Func_809728c(void);
extern void __FieldMove(int);
extern void __Func_8097174(void);
extern int __CheckPartyItem(int item);
extern int __CheckItem(int unit, int item);
extern unsigned char *__GetUnit(int unit);

void OvlFunc_924_200cf44(void)
{
    unsigned char *state;
    register unsigned char **state_pointer asm("r3") = &iwram_3001f30;
    register int actor asm("r0");
    register int x asm("r1") = 0xd2;
    register int z asm("r2") = 0x96;
    register int flag asm("r3");
    register int old_flag asm("r2");
    register int call_value asm("r1");
    register int call_actor asm("r0");

    asm volatile("" : "+r" (state_pointer), "+r" (x), "+r" (z));
    z <<= 18;
    actor = 0xb;
    asm volatile("" : "+r" (actor), "+r" (x), "+r" (z), "+r" (state_pointer));
    x <<= 18;
    state = *state_pointer;
    __MapActor_SetPos(actor, x, z);
    __Func_8096fb0(0x5d, 1);
    call_value = 0xb;
    call_actor = 3;
    asm volatile("" : "+r" (call_value), "+r" (call_actor));
    __Func_80970f8(call_actor, call_value);
    old_flag = state[0x71c];
    flag = 8;
    asm volatile("" : "+r" (old_flag), "+r" (flag));
    flag |= old_flag;
    state[0x71c] = flag;
    __Func_809728c();
    __FieldMove(1);
    __Func_8097174();
}

void OvlFunc_924_200cf90(int item, int value)
{
    int unit = __CheckPartyItem(item);
    int slot;

    if (unit == -1)
        return;
    slot = __CheckItem(unit, item);
    if (slot == -1)
        return;
    {
        register unsigned char *unit_data asm("r0") = __GetUnit(unit);
        register int offset asm("r3") = slot << 1;
        register int stored_value asm("r2");
        offset += 0xd8;
        stored_value = value;
        asm volatile("" : "+r" (unit_data), "+r" (offset), "+r" (stored_value));
        *(unsigned short *)(unit_data + offset) = stored_value;
    }
}
