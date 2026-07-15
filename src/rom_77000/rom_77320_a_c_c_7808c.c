typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 gState[];
extern int GetPartySize(void);
extern u8 *GetUnit(unsigned int id);
extern int __divsi3(int numerator, int denominator);

void Func_807808c(int clear_extra)
{
    register int clear asm("r8") = clear_extra;
    int party_index = 0;
    int party_size = GetPartySize();

    while (party_index < party_size) {
        u8 *unit = GetUnit(gState[0x1f8 + party_index]);
        int value;
        int ratio;
        u16 first;

        asm volatile(
            "ldrh r1, [r5, #0x34]\n\t"
            "ldrh r3, [r5, #0x36]\n\t"
            "strh r1, [r5, #0x38]\n\t"
            "strh r3, [r5, #0x3a]"
            : "=r" (first) : "r" (unit) : "r3", "memory");
        value = __divsi3((s16)first << 14, (s16)first);
        ratio = 0x4000;
        if (value <= 0x4000) {
            ratio = 0;
            if (value >= 0)
                ratio = value;
        }
        *(u16 *)(unit + 0x14) = ratio;
        if ((u16)ratio == 0 && *(s16 *)(unit + 0x38) != 0)
            asm volatile("mov r3, #1\n\tstrh r3, [r5, #0x14]"
                         : : "r" (unit) : "r3", "memory");

        value = __divsi3(*(s16 *)(unit + 0x3a) << 14,
                         *(s16 *)(unit + 0x36));
        ratio = 0x4000;
        if (value <= 0x4000) {
            ratio = 0;
            if (value >= 0)
                ratio = value;
        }
        *(u16 *)(unit + 0x16) = ratio;
        if ((u16)ratio == 0 && *(s16 *)(unit + 0x3a) != 0)
            asm volatile("mov r3, #1\n\tstrh r3, [r5, #0x16]"
                         : : "r" (unit) : "r3", "memory");

        if (clear == 1) {
            unit[0x131] = 0;
            unit[0x140] = 0;
        }
        party_index++;
    }
}
