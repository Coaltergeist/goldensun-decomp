/* Cluster Func_8011984..Func_8011984 extracted from goldensun/asm/rom_9000/rom_11568_c_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_c_c_a_a.o and asm/rom_9000/rom_11568_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001e70[];
extern void Func_801179c(void);
extern void Func_80042c8(void *);

void Func_8011984(void) {
    signed char r3;
    r3 = *(signed char *)((char *)*(unsigned int *)iwram_3001e70 + 0xfc);
    if (r3 == 0) {
        Func_80042c8(Func_801179c);
    }
}
