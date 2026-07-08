/* Cluster OvlFunc_953_20086bc..OvlFunc_953_20086bc extracted from goldensun/asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_c_a.o and asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_c_c.o in
 * goldensun/overlays/rom_7d95dc/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

void OvlFunc_953_20086bc(void)
{
    unsigned short *p;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    __Func_8092848(8, 0, 0x14);
    __MessageID(0x2125);
    __Func_8092c40(8, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 8;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}
