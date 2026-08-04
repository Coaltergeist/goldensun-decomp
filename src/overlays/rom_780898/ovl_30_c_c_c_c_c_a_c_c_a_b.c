// fakematch
/* Cluster OvlFunc_883_200da40..OvlFunc_883_200da40 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c_c_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c_c_a_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
void OvlFunc_883_200da40(void)
{
    int flag106;
    int f;

    f = 0x241;
    __asm__ ("" : "+r" (f));
    if (__GetFlag(f) != 0) {
        flag106 = __GetFlag(0x106);
        if (flag106 == 0) {
            ((unsigned char *)__MapActor_GetActor(0x16))[0x5b] = flag106;
            f = 0x241;
            __asm__ ("" : "+r" (f));
            __ClearFlag(f);
        }
    } else {
        if (__GetFlag(0x106) != 0) {
            ((unsigned char *)__MapActor_GetActor(0x16))[0x5b] = 1;
            f = 0x241;
            __asm__ ("" : "+r" (f));
            __SetFlag(f);
        }
    }
}
