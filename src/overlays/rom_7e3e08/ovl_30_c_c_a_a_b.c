/* Cluster OvlFunc_957_2008abc..OvlFunc_957_2008abc extracted from goldensun/asm/overlays/rom_7e3e08/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e3e08/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7e3e08/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7e3e08/overlay.ld.
 */
extern unsigned char ewram_2001004[];
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_957_2008a54(void);

void OvlFunc_957_2008abc(unsigned int arg0) {
    unsigned char *ep = ewram_2001004;
    unsigned int r3 = *(unsigned int *)iwram_3001ebc;
    *ep = arg0;
    r3 += 0xcb8;
    if (*(short *)r3 == 0)
        OvlFunc_957_2008a54();
}
