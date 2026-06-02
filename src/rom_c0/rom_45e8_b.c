/* Cluster Func_80045e8..Func_80045e8 extracted from goldensun/asm/rom_c0/rom_45e8.s.
 *
 * Total .text for this TU = 8 bytes (= 0x8).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_45e8_a.o and asm/rom_c0/rom_45e8_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char PAL_Sprites[];

void *Func_80045e8(void) {
    return (void *)PAL_Sprites;
}
