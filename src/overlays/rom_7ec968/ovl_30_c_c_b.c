/* Cluster OvlFunc_963_20087ac..OvlFunc_963_20087ac extracted from goldensun/asm/overlays/rom_7ec968/ovl_30_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ec968/ovl_30_c_c_a.o and asm/overlays/rom_7ec968/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7ec968/overlay.ld.
 */
void OvlFunc_963_20087ac(void) {
    unsigned int r5;

    __CutsceneStart();
    __MessageID(0x266d);
    __Func_8093040(0xa, 0, 0xa);
    r5 = 0;
    do {
        __Func_8092950(0xa, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 1);
        __WaitFrames(4);
        __Func_8092950(0xa, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 0);
        r5++;
        __WaitFrames(4);
    } while (r5 <= 5);
    r5 = 0;
    do {
        __Func_8092950(0xa, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 1);
        __WaitFrames(2);
        __Func_8092950(0xa, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 0);
        r5++;
        __WaitFrames(2);
    } while (r5 <= 0xb);
    __MapActor_SetPos(0xa, 0, 0);
    __SetFlag(0x897);
    __CutsceneEnd();
}
