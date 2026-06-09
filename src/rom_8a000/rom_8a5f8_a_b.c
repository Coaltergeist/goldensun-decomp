/* Cluster GetMapArea..GetMapArea extracted from goldensun/asm/rom_8a000/rom_8a5f8_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8a5f8_a_a.o and asm/rom_8a000/rom_8a5f8_a_c.o in
 * goldensun/stage1.ld.
 */
/* GetMapArea (GetMapArea) — signed byte at offset 2 of an 8-byte-stride table
 * element. Forming the element pointer (base + map*8) first keeps the +2 a
 * `ldrb [.,#2]` immediate (Thumb ldrsb has no immediate form, so gcc then
 * sign-extends via lsl#24/asr#24) instead of folding into a register-indexed
 * ldrsb. .L9f1a8 is a .global asm-label (§8). */
extern unsigned char L9f1a8[] __asm__(".L9f1a8");

int GetMapArea(int map) {
    signed char *p = (signed char *)(L9f1a8 + map * 8);
    return p[2];
}
