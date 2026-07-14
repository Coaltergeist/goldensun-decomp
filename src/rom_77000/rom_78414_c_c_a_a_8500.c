extern unsigned char gState[];
extern int FindEmptyInventorySlot(int unit);
extern int Func_80796c4(unsigned short *unitIds);

int Func_8078500(void)
{
    register unsigned char *state asm("r3") = gState;
    register int offset asm("r2") = 0xfa;

    offset <<= 1;
    state += offset;

    if (FindEmptyInventorySlot(*(int *)state) == 0xf)
        goto continue_block;

return_one:
    return 1;

continue_block:
    {
        unsigned short unitIds[10];
        register unsigned short *argument asm("r5");
        register unsigned short *unit asm("r7");
        register int count asm("r6");
        register int i asm("r5");

        argument = unitIds;
        count = Func_80796c4(argument);
        unit = argument;
        i = 0;
        if (i < count) {
            do {
                register int slot asm("r0");
                short unitId = *unit;

                unit = unit + 1;
                slot = FindEmptyInventorySlot(unitId);
                if (slot != 0xf)
                    goto return_one;
                i = i + 1;
            } while (i < count);
        }
        return 0;
    }
}
