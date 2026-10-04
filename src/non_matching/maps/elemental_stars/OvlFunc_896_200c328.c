extern short *iwram_3001ebc;

extern void __PlaySound(int);
extern void __Func_808f1c0(int, int);
extern void __Func_801776c(int, int);
extern int __FindEmptyInventorySlot(int);
extern int __UI_SellMenu(int *, int *);
extern void __Func_8078948(int, int);
extern void __GiveItem(int);

void OvlFunc_896_200c328(void)
{
    int a;
    int b;
    short *ptr = iwram_3001ebc;
    short val = ptr[0xec];

    __PlaySound(0x53);
    __Func_808f1c0(0xe0, 3);
    __Func_801776c(0x111b, 1);

    while (1) {
        int slots = 0x1e - __FindEmptyInventorySlot(0);
        slots -= __FindEmptyInventorySlot(1);
        if (slots > 3) {
            break;
        }
        __Func_801776c(0x111c, 1);
        if (__UI_SellMenu(&a, &b) != -1) {
            __Func_8078948(a, b);
        }
    }

    __GiveItem(0xe0);
    __GiveItem(0xe0);
    __GiveItem(0xe0);
    __GiveItem(0xe0);

    ptr[0xec] = val;
}
