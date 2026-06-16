/* Cluster Func_80119a8..Func_80119a8 extracted from goldensun/asm/rom_9000/rom_11568_c_c_a_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_c_c_a_c_a.o and asm/rom_9000/rom_11568_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001e70[];
extern void Func_801179c(void);
extern void Func_800439c(void *);

void Func_80119a8(void) {
    signed char r3;
    unsigned char *base;

    base = *(unsigned char **)iwram_3001e70;
    r3 = (signed char)*(unsigned char *)(base + 0xfc);
    if (r3 == 0) {
        Func_800439c(Func_801179c);
    }
}
