struct Unit {
    unsigned char padding[0xd8];
    unsigned short items[14];
};

extern int __CheckPartyItem(int);
extern int __CheckItem(int, int);
extern struct Unit *__GetUnit(int);

void OvlFunc_917_200972c(int item, int replacement)
{
    int unit_index = __CheckPartyItem(item);

    if (unit_index != -1) {
        int slot = __CheckItem(unit_index, item);
        if (slot != -1)
            __GetUnit(unit_index)->items[slot] = replacement;
    }
}
