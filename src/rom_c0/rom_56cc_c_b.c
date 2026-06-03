/* Cluster Func_8005c2c..Func_8005c2c extracted from goldensun/asm/rom_c0/rom_56cc_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_56cc_c_a.o and asm/rom_c0/rom_56cc_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *iwram_3001f1c;

unsigned int Func_8005c2c(unsigned int arg0)
{
    unsigned char *base;
    unsigned short *hp;
    unsigned int max;
    int i;

    base = iwram_3001f1c;
    hp = (unsigned short *)(base + 0x20);
    max = 0;
    for (i = 0; (unsigned int)i <= 0xf; i++) {
        if (base[i] != 0 && arg0 == base[i + 0x10]) {
            if (max < hp[i])
                max = hp[i];
        }
    }
    return max;
}
