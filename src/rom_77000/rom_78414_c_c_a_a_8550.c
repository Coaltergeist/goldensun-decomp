extern int Func_80796c4(unsigned short *unitIds);
extern int FindEmptyInventorySlot(int unitId);

int Func_8078550(void)
{
    unsigned short unitIds[10];
    register unsigned short *argument asm("r5");
    register unsigned short *unit asm("r6");
    register int emptySlots asm("r7");
    int count;

    argument = unitIds;
    count = Func_80796c4(argument);
    emptySlots = 0;
    unit = argument;
    if (emptySlots < count) {
        register int remaining asm("r5");

        remaining = count;
        do {
            register int difference asm("r0");

            difference = FindEmptyInventorySlot((short)*unit);
            difference = emptySlots - difference;
            asm("" : "+r"(difference));
            emptySlots = difference;
            asm("" : "+r"(emptySlots));
            remaining = remaining - 1;
            unit = unit + 1;
            emptySlots = emptySlots + 15;
        } while (remaining != 0);
    }

    return emptySlots;
}
