/* Cluster Func_80219c8..Func_80219c8 extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_a.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_c_a_a.o and asm/rom_15000/rom_20198_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001e40[];
extern unsigned char L37280[] __asm__(".L37280");
extern void Func_8021950(int arg0, void *arg1, void *arg2, int arg3);

void Func_80219c8(unsigned int arg0)
{
    int r6;
    unsigned char *r5;

    r6 = (*(unsigned int *)iwram_3001e40 >> 2) & 3;
    if (r6 > 2) {
        r6 = 2;
    }
    if (r6 <= 0) {
        r6 = 1;
    }
    r5 = L37280;
    r6 = r6 + 1;
    Func_8021950(0x6000220, r5, (void *)arg0, -r6);
    r5 += 0x20;
    Func_8021950(0x6000240, r5, (void *)(arg0 + 0x20), r6);
}
