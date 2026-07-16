/* Cluster Func_8005ae0..Func_8005b24 extracted from goldensun/asm/rom_c0/rom_56cc_a.s.
 *
 * Total .text for this TU = 132 bytes (= 0x84).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_56cc_a_a.o and asm/rom_c0/rom_56cc_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f1c;

unsigned int Func_8005b24(unsigned int arg0)
{
    unsigned char *base;
    unsigned short *hp;
    unsigned int i;
    unsigned int best;
    unsigned int result;

    base = (unsigned char *)iwram_3001f1c;
    hp = (unsigned short *)(base + 0x20);
    best = 0;
    result = 0x10;
    for (i = 0; i <= 0xf; i++) {
        if (base[i] != 0 && arg0 == base[i + 0x10] && best < hp[i]) {
            best = hp[i];
            result = i;
        }
    }
    return result;
}
