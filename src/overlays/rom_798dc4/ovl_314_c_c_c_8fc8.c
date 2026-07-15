typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

struct Unit {
    u8 padding[0xd8];
    u16 items[15];
};

extern struct Unit *__GetUnit(int);
extern int __GiveItemTo(int, int);
extern void __EquipItem(int, int);
extern u8 *__GetItemInfo(u16);
extern void __Func_8078948(int, int);

void OvlFunc_903_2008fc8(void)
{
    struct Unit *unit;
    int item;
    int counter;
    int i;
    u8 *info;

    item = 0x41;
    unit = __GetUnit(2);
    counter = 0;
loop:
    counter++;
    if (counter > 1000)
        unit->items[14] = 0;
    if (__GiveItemTo(2, item) == -1) {
        for (i = 0; i <= 14; i++) {
            info = __GetItemInfo(unit->items[i]);
            if (info[2] == 1) {
                __Func_8078948(2, i);
                goto loop;
            }
        }
        for (i = 0; i <= 14; i++) {
            info = __GetItemInfo(unit->items[i]);
            if ((*(u16 *)(info + 2) & 0x8ff) == 0 && info[0xc] == 1) {
                __Func_8078948(2, i);
                goto loop;
            }
        }
        goto loop;
    }
    for (i = 0; i <= 14; i++) {
        if (unit->items[i] == item)
            __EquipItem(2, i);
    }
}
