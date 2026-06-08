/* Cluster OvlFunc_964_2009f70..OvlFunc_964_2009f70 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern void *__MapActor_GetActor(int);
extern void __SetFlag(int);
extern void __ClearFlag(int);
extern void OvlFunc_964_200a52c(void);
extern void __CutsceneEnd(void);

void OvlFunc_964_2009f70(void) {
    void *p;
    __CutsceneStart();
    p = __MapActor_GetActor(0x11);
    if ((*(int *)((char *)p + 8) >> 20) == 0x2d) {
        __SetFlag(0x974);
    } else {
        __ClearFlag(0x974);
    }
    p = __MapActor_GetActor(0x12);
    if ((*(int *)((char *)p + 8) >> 20) == 0x2e) {
        __SetFlag(0x975);
    } else {
        __ClearFlag(0x975);
    }
    OvlFunc_964_200a52c();
    __CutsceneEnd();
}
