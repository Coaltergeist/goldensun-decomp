typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *GetItemInfo(u16 item_id);
extern void GetItemInfo_NoArgs(void) asm("GetItemInfo");

int CheckEquipmentCritBoost(u8 *unit)
{
    register int total asm("r6");
    register int offset asm("r5");
    register int item_index asm("r1");
    register u8 *base asm("r7");
    register int mask asm("r8");

    asm volatile(
        "mov r2, #0x80\n\t"
        "lsl r2, #2\n\t"
        "sub sp, #4\n\t"
        "mov r7, r0\n\t"
        "mov r6, #0\n\t"
        "mov r5, #0xd8\n\t"
        "mov r8, r2\n\t"
        "mov r1, #0xe"
        : "=r"(total), "=r"(offset), "=r"(item_index), "=r"(base), "=r"(mask)
        : "r"(unit)
        : "r2", "memory", "cc");

    do {
        if ((*(u16 *)(offset + (u32)base) & mask) != 0) {
            register u8 *effect asm("r0");
            register int effect_index asm("r2");
            asm volatile("ldrh r0, [r5, r7]\n\tstr r1, [sp]" : "=r"(effect) : "r"(offset), "r"(base), "r"(item_index) : "memory");
            GetItemInfo_NoArgs();
            asm volatile("ldr r1, [sp]\n\tadd r0, #0x18" : "+r"(effect), "+r"(item_index) : : "memory");
            effect_index = 3;
            do {
                if (effect[0] == 0x17)
                    total += *(s8 *)(effect + 1);
                --effect_index;
                effect += 4;
            } while (effect_index >= 0);
        }
        --item_index;
        offset += 2;
    } while (item_index >= 0);

    if (total < 0)
        total = 0;
    {
        register int result asm("r0");
        asm volatile("mov r0, r6\n\tadd sp, #4" : "=r"(result) : "r"(total) : "memory");
        return result;
    }
}
