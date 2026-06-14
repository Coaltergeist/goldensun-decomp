/* Cluster OvlFunc_881_20082a4..OvlFunc_881_20082a4 extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_a_a.o and asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_a_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
extern void OvlFunc_881_20082cc(void);

unsigned int OvlFunc_881_20082a4(unsigned int arg0)
{
    unsigned int r5;

    r5 = arg0;
    OvlFunc_881_20082cc();
    if (__GetFlag(0x847)) {
        __Actor_SetAnim(r5, 2);
    }
    return 1;
}
