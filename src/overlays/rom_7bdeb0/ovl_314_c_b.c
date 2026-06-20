/* Cluster OvlFunc_934_2008cf8..OvlFunc_934_2008cf8 extracted from goldensun/asm/overlays/rom_7bdeb0/ovl_314_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bdeb0/ovl_314_c_a.o and asm/overlays/rom_7bdeb0/ovl_314_c_c.o in
 * goldensun/overlays/rom_7bdeb0/overlay.ld.
 */
int OvlFunc_934_2008cf8(int arg0)
{
    int *r5 = (int *)arg0;
    int *actor = (int *)__MapActor_GetActor(0);
    *(short *)((char *)r5 + 6) = __atan2(actor[4] - r5[4], actor[2] - r5[2]);
    return 0;
}
