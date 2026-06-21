/* Cluster Func_80b8144..Func_80b8144 extracted from goldensun/asm/rom_b5000/rom_b7410_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_c_c_a.o and asm/rom_b5000/rom_b7410_c_c_c.o in
 * goldensun/stage1.ld.
 */
void Func_80b8144(unsigned int arg0) {
    unsigned int base;
    base = *(unsigned int *)arg0;
    *(unsigned int *)(base + 0x34) = 0x80 << 10;
    *(unsigned int *)(base + 0x30) = 0x80 << 12;
    *(unsigned int *)(base + 0x48) = 0xab85;
    *(unsigned int *)(base + 0x44) = 0;
    *(unsigned char *)(base + 0x5a) = 0;
    _Actor_TravelTo(base, *(unsigned int *)(arg0 + 0xc), 0, *(unsigned int *)(arg0 + 0x10));
}
