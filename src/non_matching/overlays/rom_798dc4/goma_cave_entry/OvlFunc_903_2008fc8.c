void OvlFunc_903_2008fc8(void)
{
    unsigned char *unit;
    unsigned short *items;
    unsigned char *info;
    unsigned short *p;
    int count;
    int i;
    int item;
    int mask;

    item = 0x41;
    unit = __GetUnit(2);
    count = 0;
    do {
        count++;
        if (count > 1000) {
            int z;
            p = (unsigned short *)((char *)unit + 0xf4);
            z = 0;
            *p = z;
        }
        if (__GiveItemTo(2, 0x41) == -1) {
            items = (unsigned short *)unit;
            i = 0;
            items = (unsigned short *)((char *)items + 0xd8);
            while (i <= 14) {
                info = __GetItemInfo(*items++);
                if (info[2] == 1) {
                    goto drop;
                }
                i++;
            }
            items = (unsigned short *)unit;
            mask = 0x8ff;
            i = 0;
            items = (unsigned short *)((char *)items + 0xd8);
            do {
                info = __GetItemInfo(*items);
                if ((*(unsigned short *)(info + 2) & mask) == 0 && info[0xc] == 1) {
                drop:
                    __Func_8078948(2, i);
                    break;
                }
                items++;
            } while (++i <= 14);
        } else {
            items = (unsigned short *)unit;
            i = 0;
            items = (unsigned short *)((char *)items + 0xd8);
            while (i <= 14) {
                if (*items++ == item) {
                    __EquipItem(2, i);
                }
                i++;
            }
            break;
        }
    } while (1);
}
