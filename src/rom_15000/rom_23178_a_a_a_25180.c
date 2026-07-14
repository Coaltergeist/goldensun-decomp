typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *_GetItemInfo(unsigned int item);
extern u8 *_GetMoveInfo(unsigned int move);
extern int _CanEquipItem(int unit, unsigned int item);

int Func_8025180(int unit, unsigned int item)
{
    u8 *item_info;
    register int result asm("r0") = 1;

    if (item == 0)
        goto done;
    item_info = _GetItemInfo(item);
    result = 1;
    if (item_info[0xc] == 3 || *(u16 *)(item_info + 0x28) == 0)
        goto done;
    if (item_info[2] != 0 && _CanEquipItem(unit, item) == 0) {
        result = 1;
        goto done;
    }
    {
        register unsigned int flags asm("r2") =
            _GetMoveInfo(*(u16 *)(item_info + 0x28))[1];

        asm("" : "+r"(flags));
        {
            register unsigned int mask asm("r3");

            asm volatile("" : "=r"(mask) : "r"(flags));
            mask = 0x80;
            asm("" : "+r"(flags), "+r"(mask));
            mask &= flags;
            result = 2;
            if (mask != 0)
                result = 0;
        }
    }
done:
    return result;
}
