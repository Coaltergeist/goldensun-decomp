/* Cluster OvlFunc_common1_1314..OvlFunc_common1_1314 extracted from goldensun/asm/overlays/common/common1_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_a_a_a_a.o and asm/overlays/common/common1_a_a_a_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
void OvlFunc_common1_1314(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;

    r5 = __MapActor_GetActor(arg0);
    __Actor_Stop(r5);
    r3 = 0;
    *(unsigned int *)(r5 + 0x24) = r3;
    *(unsigned int *)(r5 + 0x2c) = r3;
    r3 = 0x80;
    r3 <<= 24;
    *(unsigned int *)(r5 + 0x38) = r3;
    *(unsigned int *)(r5 + 0x40) = r3;
}
