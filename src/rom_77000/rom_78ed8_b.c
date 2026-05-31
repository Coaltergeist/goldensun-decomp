/* Cluster Func_8078ed8..Func_8078ed8 extracted from goldensun/asm/rom_77000/rom_78ed8.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78ed8_a.o and asm/rom_77000/rom_78ed8_c.o in
 * goldensun/stage1.ld.
 */
typedef struct {
    unsigned char data[0xb4];
} PCStats;

extern PCStats gPCStats[];

PCStats *Func_8078ed8(unsigned int idx) {
    PCStats *base = gPCStats;
    return base + idx;
}
