// fakematch
/* Cluster OvlFunc_common1_850..OvlFunc_common1_850 extracted from goldensun/asm/overlays/common/common1_a_a_a_a_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_a_a_a_a_c_a.o and asm/overlays/common/common1_a_a_a_a_c_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
void OvlFunc_common1_850(unsigned int arg0, unsigned int arg1in)
{
    register unsigned int arg1 __asm__("r8") = arg1in;
    unsigned short *unit;
    int i;

    unit = (unsigned short *)__GetUnit(arg0, arg1);
    __GiveItemTo(arg0, arg1);
    i = 0;
    unit = (unsigned short *)((char *)unit + 0xd8);
    while (i <= 14) {
        if (*unit++ == arg1) {
            __EquipItem(arg0, i);
        }
        i++;
    }
}
