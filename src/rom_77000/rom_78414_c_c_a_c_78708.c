typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *GetUnit(int unitId);
extern u8 *GetItemInfo(int itemId);
extern int CanEquipItem(int unitId, int itemId);
extern void Func_8078bf0(int unitId);
extern void CalcStats(int unitId);

s32 EquipItem(int unitId, int slot)
{
    u8 *unit = GetUnit(unitId);
    int slotOffset = slot * 2;
    register int scratch asm("r3");
    u16 item;
    u8 type;
    int i;
    int offset;

    scratch = slotOffset;
    scratch += 0xd8;
    item = *(u16 *)(unit + scratch);

    if (CanEquipItem(unitId, item) == 0)
        return -1;
    if (item & 0x200)
        return 0;
    type = GetItemInfo(item)[2];
    if (type != 6) {
        i = 0;
        offset = 0xd8;
        while (i <= 0xe) {
            int mask_val;
            asm volatile("ldrh %0, [%1, %2]" : "=r"(mask_val) : "r"(offset), "r"(unit));
            if ((mask_val & 0x200) != 0) {
                int id_val;
                asm volatile("ldrh %0, [%1, %2]" : "=r"(id_val) : "r"(offset), "r"(unit));
                if (GetItemInfo(id_val)[2] == type) {
                    break;
                }
            }
            offset += 2;
            i++;
        }
        if (i != 0xf) {
            register int idx asm("r6");
            asm volatile(
                "lsl r3, %1, #1\n\t"
                "mov %0, r3\n\t"
                "add %0, #0xd8"
                : "=r"(idx)
                : "r"(i)
                : "r3");
            if (GetItemInfo(*(u16 *)(unit + idx))[3] & 2)
                return -2;
            *(u16 *)(unit + idx) &= 0xfdff;
        }
    }
    scratch = slotOffset;
    scratch += 0xd8;
    *(u16 *)(unit + scratch) |= 0x200;
    Func_8078bf0(unitId);
    CalcStats(unitId);
    return 0;
}
