// fakematch
/* Cluster OvlFunc_899_200aba0..OvlFunc_899_200aba0 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_c_c_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_c_c_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
void OvlFunc_899_200aba0(void)
{
    int r6, r5, r8;
    int r3;
    r6 = __MapActor_GetActor(0);
    r5 = __MapActor_GetActor(0x18);
    r8 = __MapActor_GetActor(0x19);
    r3 = *(int *)((char *)r5 + 0x10);
    *(short *)((char *)r5 + 6) = __atan2(*(int *)((char *)r6 + 0x10) - r3, *(int *)((char *)r6 + 8) - *(int *)((char *)r5 + 8));
    __asm__ volatile ("" ::: "memory");
    r3 = *(int *)((char *)r8 + 0x10);
    *(short *)((char *)r8 + 6) = __atan2(*(int *)((char *)r6 + 0x10) - r3, *(int *)((char *)r6 + 8) - *(int *)((char *)r8 + 8));
}
