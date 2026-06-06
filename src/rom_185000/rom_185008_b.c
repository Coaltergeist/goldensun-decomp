/* Cluster Func_8185008..Func_8185008 extracted from goldensun/asm/rom_185000/rom_185008.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_185000/rom_185008_a.o and asm/rom_185000/rom_185008_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L185024[] __asm__(".L185024");

unsigned char *Func_8185008(int arg0) {
    return &L185024[(arg0 & 0xfff) * 20];
}
