/* Cluster OvlFunc_927_2009ac8..OvlFunc_927_2009ac8 extracted from goldensun/asm/overlays/rom_7b4558/ovl_30_c_c.s.
 *
 * Total .text for this TU = 188 bytes (= 0xbc).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b4558/ovl_30_c_c_a.o and asm/overlays/rom_7b4558/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7b4558/overlay.ld.
 */
extern void *OvlFunc_927_2008cd0(void *);

void OvlFunc_927_2009ac8(void) {
    unsigned char *r6;
    unsigned char *r7;
    unsigned int r5;
    unsigned char r8;
    unsigned int args[3];

    r6 = __MapActor_GetActor(0);
    r7 = r6 + 0x55;
    r8 = *r7;
    args[0] = *(unsigned int *)(__MapActor_GetActor(0) + 8) + 0xffe00000;
    args[1] = *(unsigned int *)(__MapActor_GetActor(0) + 0xc);
    args[2] = *(unsigned int *)(__MapActor_GetActor(0) + 0x10);
    if (OvlFunc_927_2008cd0(args) != 0) {
        __CutsceneStart();
        *r7 = 0;
        __MapActor_SetAnim(0xb, 7);
        r5 = 0xffff0000;
        *(unsigned int *)(r6 + 0xc) += r5;
        *(unsigned int *)(r6 + 0x14) += r5;
        __WaitFrames(2);
        *(unsigned int *)(r6 + 0xc) += r5;
        *(unsigned int *)(r6 + 0x14) += r5;
        __WaitFrames(0xa);
        r5 = 0x80 << 9;
        *(unsigned int *)(r6 + 0xc) += r5;
        *(unsigned int *)(r6 + 0x14) += r5;
        __WaitFrames(4);
        *(unsigned int *)(r6 + 0xc) += r5;
        *(unsigned int *)(r6 + 0x14) += r5;
        *r7 = r8;
        __CutsceneEnd();
    }
}
