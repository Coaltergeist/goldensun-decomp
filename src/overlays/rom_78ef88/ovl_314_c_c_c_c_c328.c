typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001ebc;
extern void __PlaySound(int sound);
extern void __Func_808f1c0(int item, int count);
extern void __Func_801776c(int message, int mode);
extern int __FindEmptyInventorySlot(int unit);
extern int __UI_SellMenu(int *unit, int *slot);
extern void __Func_8078948(int unit, int slot);
extern void __GiveItem(int item);

void OvlFunc_896_200c328(void)
{
    register u8 *state asm("r6") = iwram_3001ebc;
    register int saved asm("r7") = *(short *)(state + 0x1d8);
    int unit;
    int slot;

    __PlaySound(0x53);
    __Func_808f1c0(0xe0, 3);
    __Func_801776c(0x111b, 1);

    {
        register int spaces asm("r5");
        register int empty asm("r0");
        asm volatile(".LOvl896_inventory_loop:");
        empty = __FindEmptyInventorySlot(0);
        asm volatile("mov r5, #0x1e\n\tsub r5, r0"
                     : "=r"(spaces) : "r"(empty));
        empty = __FindEmptyInventorySlot(1);
        asm volatile("sub r5, r0" : "+r"(spaces) : "r"(empty));
        asm volatile("cmp r5, #3\n\tbgt .LOvl896_inventory_done"
                     : : "r"(spaces));

        __Func_801776c(0x111c, 1);
        {
            register int choice asm("r0") = __UI_SellMenu(&unit, &slot);
            asm volatile("mov r3, #1\n\tneg r3, r3\n\t"
                         "cmp r0, r3\n\tbeq .LOvl896_inventory_loop"
                         : : "r"(choice) : "r3");
        }
        __Func_8078948(unit, slot);
        asm volatile("b .LOvl896_inventory_loop\n"
                     ".LOvl896_inventory_done:");
    }

    __GiveItem(0xe0);
    __GiveItem(0xe0);
    __GiveItem(0xe0);
    __GiveItem(0xe0);
    asm volatile("mov r2, #0xec\n\tlsl r2, #1\n\t"
                 "add r3, r6, r2\n\tstrh r7, [r3]"
                 : : "r"(state), "r"(saved) : "r2", "r3", "memory");
}
