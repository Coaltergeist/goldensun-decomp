/* Cluster Func_8099810..Func_8099810 extracted from goldensun/asm/rom_8a000/rom_97b54.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97b54_a.o and asm/rom_8a000/rom_97b54_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char ewram_2000240;
extern void Func_8099678(void);
extern void Func_80041d8(void *task, int priority);

void Func_8099810(void) {
    unsigned int r3;
    unsigned int r2;
    short val;

    r3 = (unsigned int)&ewram_2000240;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);
    if (val != 0) {
        Func_80041d8(Func_8099678, 0xc8 << 4);
    }
}
