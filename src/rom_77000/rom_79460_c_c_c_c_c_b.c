// fakematch
/* Cluster Func_807a628..Func_807a628 extracted from goldensun/asm/rom_77000/rom_79460_c_c_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_c_c_c_a.o and asm/rom_77000/rom_79460_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */

void Func_807a628(unsigned int arg0, unsigned int arg1in)
{
    register unsigned int arg1 __asm__("r8") = arg1in;
    unsigned short *unit;
    int i;

    unit = (unsigned short *)GetUnit(arg0, arg1);
    GiveItemTo(arg0, arg1);
    i = 0;
    unit = (unsigned short *)((char *)unit + 0xd8);
    while (i <= 14) {
        if (*unit++ == arg1) {
            EquipItem(arg0, i);
        }
        i++;
    }
}
