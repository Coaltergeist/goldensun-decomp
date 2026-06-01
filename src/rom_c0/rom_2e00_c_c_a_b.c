/* Cluster Func_8002f4c..Func_8002f4c extracted from goldensun/asm/rom_c0/rom_2e00_c_c_a.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_2e00_c_c_a_a.o and asm/rom_c0/rom_2e00_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
typedef unsigned short u16;

void Func_8002f4c(u16 *code, int len)
{
    int limit = len >> 1;
    int i;

    unsigned int temp;
    code++;
    for (i = 1; i < limit; i++) {
        unsigned int lo = 0;
        if (((lo = *(code++)) & 0xf800u) == 0xf800u) {
            unsigned int hi = 0;
            if (((hi = (*(code - 2))) & 0xf800u) == 0xf000u) {
                unsigned int ins1;
                unsigned int ins2;
                temp = (((hi & 0x7FF) << 12) | ((lo & 0x7FF) << 1)) - 2 * i;

                ins1 = ((temp >> 12) & 0x7ff) | 0xf000;
                ins2 = ((temp >> 1) & 0x7ff) | 0xf800;
                *(code - 2) = ins1;
                *(code - 1) = ins2;
            }
        }
    }
}
