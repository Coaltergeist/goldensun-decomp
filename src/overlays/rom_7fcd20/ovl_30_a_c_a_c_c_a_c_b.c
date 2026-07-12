/* OvlFunc_974_2008180 extracted from
 * goldensun/asm/overlays/rom_7fcd20/ovl_30_a_c_a_c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 */
extern void OvlFunc_974_200807c(int first_entry, int entry_count);

void OvlFunc_974_2008180(void)
{
    register int first_entry asm("r0") = 0xd21;
    register int end_entry asm("r1") = 0xd4c;

    /* Preserve the two literal loads; GCC would otherwise fold the range. */
    asm volatile("" : "+r"(first_entry), "+r"(end_entry));
    OvlFunc_974_200807c(first_entry, end_entry - first_entry);
}
