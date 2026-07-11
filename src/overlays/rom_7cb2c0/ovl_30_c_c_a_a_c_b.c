/* Cluster OvlFunc_945_20092dc..OvlFunc_945_20092dc extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern unsigned int OvlFunc_945_200cfa8(unsigned int arg0, unsigned int arg1);

unsigned int OvlFunc_945_20092dc(void)
{
    unsigned int r5;

    r5 = 0;
    if (__GetFlag(0x92b)) {
        r5 = 3;
    } else if (__GetFlag(0x92a)) {
        r5 = 2;
    } else if (__GetFlag(0x929)) {
        r5 = 1;
    }
    return OvlFunc_945_200cfa8(r5, 1);
}
