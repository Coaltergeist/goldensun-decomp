extern unsigned char *GetUnit(int unit);
extern unsigned char *GetItemInfo(int item);

int CanEquipItem(int unitId, int itemId) {
    register int savedItemId asm("r5") = itemId;
    register unsigned char *unit asm("r6") = GetUnit(unitId);
    unsigned char *item;
    int equipMask;

    asm volatile("" : "+r"(savedItemId), "+r"(unit));
    item = GetItemInfo(savedItemId);
    unit += 0x128;
    asm volatile("" : "+r"(unit));
    equipMask = *(unsigned short *)(item + 4);
    if (*unit > 7)
        return 0;
    return (equipMask >> *unit) & 1;
}
