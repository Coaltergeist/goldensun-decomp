// fakematch
/* Cluster OvlFunc_903_2008f8c..OvlFunc_903_2008f8c extracted from goldensun/asm/overlays/rom_798dc4/ovl_314_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_798dc4/ovl_314_c_c_c_a.o and asm/overlays/rom_798dc4/ovl_314_c_c_c_c.o in
 * goldensun/overlays/rom_798dc4/overlay.ld.
 */

void OvlFunc_903_2008f8c(unsigned int arg0, unsigned int arg1in)
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
