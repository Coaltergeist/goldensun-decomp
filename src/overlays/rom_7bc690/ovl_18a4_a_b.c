/* Cluster OvlFunc_933_2009c1c..OvlFunc_933_2009c1c extracted from goldensun/asm/overlays/rom_7bc690/ovl_18a4_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bc690/ovl_18a4_a_a.o and asm/overlays/rom_7bc690/ovl_18a4_a_c.o in
 * goldensun/overlays/rom_7bc690/overlay.ld.
 */
extern unsigned char L2730[] __asm__(".L2730");
extern unsigned char L26d0[] __asm__(".L26d0");
extern unsigned char L26be[] __asm__(".L26be");
extern unsigned char L3030[] __asm__(".L3030");
extern unsigned char OvlData_933_2009fa0[];
extern void OvlFunc_933_20098a4(void);

void OvlFunc_933_2009c1c(void)
{
    unsigned short *slotPtr;
    int slot;

    __DecompressLZ(OvlData_933_2009fa0, L2730);
    slotPtr = (unsigned short *)L26d0;
    slot = __AllocSpriteSlot();
    *slotPtr = slot;
    __UploadSpriteGFX((short)slot, 0x90 << 3, 0);
    *(unsigned short *)L26be = 0;
    *(unsigned short *)L3030 = 0;
    __StartTask(OvlFunc_933_20098a4, 0xc76);
}
