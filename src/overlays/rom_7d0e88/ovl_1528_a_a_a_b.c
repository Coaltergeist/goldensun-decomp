/* Cluster OvlFunc_947_2009528..OvlFunc_947_2009528 extracted from goldensun/asm/overlays/rom_7d0e88/ovl_1528_a_a_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_1528_a_a_a_a.o and asm/overlays/rom_7d0e88/ovl_1528_a_a_a_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
extern int OvlFunc_947_2009268(void);
extern void OvlFunc_947_20083a8(void);

void OvlFunc_947_2009528(void)
{
    __CutsceneStart();
    if (OvlFunc_947_2009268() == 0) {
        OvlFunc_947_20083a8();
    }
    __CutsceneEnd();
}
