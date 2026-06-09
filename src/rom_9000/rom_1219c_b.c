/* Cluster SpriteTest_SetLayerColorswap..SpriteTest_SetLayerPriority extracted from goldensun/asm/rom_9000/rom_1219c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_1219c_a.o and asm/rom_9000/rom_1219c_c.o in
 * goldensun/stage1.ld.
 * Reconciled conflicting decls of iwram_3001e60: kept `extern unsigned int iwram_3001e60;`, dropped `extern unsigned char *iwram_3001e60;`.
 */
extern unsigned int iwram_3001e60;

void SpriteTest_SetLayerColorswap(unsigned int layer, unsigned int colorswap) {
    unsigned int base;
    unsigned int off;
    int i;

    base = iwram_3001e60;
    off = ((layer & 3) << 2) + 0x28;
    for (i = 9; i >= 0; i--) {
        unsigned int e;
        e = *(unsigned int *)((char *)base + off);
        *(unsigned char *)((char *)e + 5) = colorswap;
        base += 0x38;
    }
}
void SpriteTest_SetLayerPriority(int layer, int value) {
    unsigned char **p;
    int idx;
    int i;

    p = (unsigned char **)iwram_3001e60;
    idx = ((layer & 3) << 2) + 0x28;
    for (i = 9; i >= 0; i--) {
        *(unsigned char *)(*(unsigned char **)((char *)p + idx) + 6) = value;
        p = (unsigned char **)((char *)p + 0x38);
    }
}
