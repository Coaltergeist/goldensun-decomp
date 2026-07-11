/* Cluster OvlFunc_940_2008374..OvlFunc_940_2008374 extracted from goldensun/asm/overlays/rom_7c5974/ovl_30_c_c_c_c_a.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5974/ovl_30_c_c_c_c_a_a.o and asm/overlays/rom_7c5974/ovl_30_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7c5974/overlay.ld.
 */
void OvlFunc_940_2008374(void)
{
    unsigned int r5;
    unsigned int r3;
    unsigned short t;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    if (__GetFlag(0x941) != 0) {
        r3 = r5 + 0xffff5fff;
        if (r3 <= 0x3ffe) {
            __Func_80b0278(0x1e, 0xf);
        } else {
            __CutsceneStart();
            __MessageID(0x24f7);
            t = 0xf;
            do { t = (unsigned short) t; } while (0);
            __ActorMessage(t, 0);
            __CutsceneEnd();
        }
    } else {
        __MessageID(0x1bce);
        __ActorMessage(0xf, 0);
    }
}
