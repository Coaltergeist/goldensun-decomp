void OvlFunc_924_200cf90(int item, int value)
{
    extern int __CheckPartyItem(int);
    extern int __CheckItem(int, int);
    extern unsigned char *__GetUnit(int);
    int unit;
    int slot;

    unit = __CheckPartyItem(item);
    if (unit != -1) {
        slot = __CheckItem(unit, item);
        if (slot != -1) {
            *(unsigned short *)(__GetUnit(unit) + 0xd8 + slot * 2) = value;
        }
    }
}
