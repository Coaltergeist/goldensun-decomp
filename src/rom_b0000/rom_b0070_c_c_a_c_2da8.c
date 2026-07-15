typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *_GetUnit(int unit_id);
extern void _UpdateStatBarPercent(int unit_id);
extern u8 *_GetItemInfo(int item_id);
extern void _CalcStats(int unit_id);

void Func_80b2da8(int unit_id, int mode)
{
    register int id asm("r7") = unit_id;
    register int selection asm("r5") = mode;
    register u8 *unit asm("r2") = _GetUnit(unit_id);

    if (selection == 0) {
        *(u16 *)(unit + 0x38) = *(u16 *)(unit + 0x34);
        _UpdateStatBarPercent(id);
    } else if (selection == 1) {
        unit[0x131] = 0;
    } else if (selection == 2) {
        unit[0x140] = 0;
    } else if (selection == 3) {
        register int mask asm("r8");
        register int mask_value asm("r3") = 0x200;
        register u16 *item asm("r5");
        register int remaining asm("r6");
        asm volatile("mov r5, r2\n\t"
                     "mov r8, r3\n\t"
                     "mov r6, #0xe\n\t"
                     "add r5, #0xd8"
                     : "=r"(item), "=r"(mask), "=r"(remaining)
                     : "r"(unit), "r"(mask_value));
        do {
            register unsigned int item_value asm("r2");
            register int masked asm("r3");
            asm volatile("ldrh r2, [r5]\n\t"
                         "mov r3, r8\n\t"
                         "and r3, r2"
                         : "=r"(item_value), "=r"(masked)
                         : "r"(item), "r"(mask));
            if (masked != 0) {
                u8 *info = _GetItemInfo(*item);
                if ((info[3] & 1) != 0) {
                    register unsigned int value asm("r2") = *item;
                    register int toggled asm("r3") = mask;
                    asm volatile("" : "+r"(value), "+r"(toggled));
                    toggled ^= value;
                    *item = toggled;
                    _CalcStats(id);
                }
            }
            remaining--;
            item++;
        } while (remaining >= 0);
    }
}
