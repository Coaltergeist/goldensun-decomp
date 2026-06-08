/* Cluster OvlFunc_881_2008250..OvlFunc_881_2008250 extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_a_a_a.o and asm/overlays/rom_77a7c8/ovl_30_a_a_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
extern int __GetFlag(int kind);
extern void OvlFunc_881_20081c4(void);

unsigned int OvlFunc_881_2008250(unsigned int arg0) {
    unsigned char *base;

    base = (unsigned char *)arg0;
    if (__GetFlag(0x30) != 0)
        return 0;
    if (__GetFlag(0xb7 << 1) != 0)
        return 0;

    *(unsigned int *)(base + 0x6c) = (unsigned int)OvlFunc_881_20081c4;
    *(unsigned char *)(base + 0x55) = 0;
    *(unsigned short *)(base + 0x64) = 0;
    *(unsigned short *)(base + 0x66) = 0;
    *(unsigned int *)(base + 0x18) = 0x80 << 8;
    *(unsigned int *)(base + 0x1c) = 0x80 << 8;
    return 0;
}
