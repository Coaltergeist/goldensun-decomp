/* Cluster OvlFunc_968_2008ff0..OvlFunc_968_2008ff0 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_a_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_a.o and asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern int __MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);

void OvlFunc_968_2008ff0(void)
{
    int r5;
    r5 = __MapActor_GetActor(0xc);
    __CutsceneStart();
    if ((*(int *)((char *)r5 + 8) >> 20) == 0x36 ||
        (*(int *)((char *)r5 + 0x10) >> 20) == 6)
        __SetFlag(0x987);
    __CutsceneEnd();
}
