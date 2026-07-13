struct Unit {
    unsigned char padding[0xd8];
    unsigned short items[15];
};

extern struct Unit *__GetUnit(int);
extern void __GiveItemTo(int, int);
extern void __EquipItem(int, int);

void OvlFunc_903_2008f8c(int unit_id, int item)
{
    struct Unit *unit = __GetUnit(unit_id);
    int i;

    __GiveItemTo(unit_id, item);
    for (i = 0; i <= 14; i++) {
        if (unit->items[i] == item)
            __EquipItem(unit_id, i);
    }
}
