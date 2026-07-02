/* Cluster OvlFunc_899_20083bc..OvlFunc_899_20083bc extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_a_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_a_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_899_200c624(unsigned int arg0, unsigned int arg1, unsigned int arg2);

void OvlFunc_899_20083bc(unsigned int arg0) {
    unsigned char *r5 = (unsigned char *)arg0;

    OvlFunc_899_200c624((unsigned int)r5, 0, 2);
    __Func_8092c40(r5, 0);
    if (__Func_8091c7c(0, 0)) {
        unsigned short *p;
        p = (unsigned short *)(*(unsigned char **)iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    __ActorMessage(r5, 0);
}
