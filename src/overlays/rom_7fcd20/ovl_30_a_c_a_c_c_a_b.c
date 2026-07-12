/* Cluster OvlFunc_974_2008130..OvlFunc_974_2008148 extracted from
 * goldensun/asm/overlays/rom_7fcd20/ovl_30_a_c_a_c_c_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 */
extern void OvlFunc_974_200807c(int first_entry, int entry_count);

void OvlFunc_974_2008130(void)
{
    register int first_entry asm("r0") = 0xc9b;
    register int end_entry asm("r1") = 0xcc6;

    /* Preserve the two literal loads; GCC would otherwise fold the range. */
    asm volatile("" : "+r"(first_entry), "+r"(end_entry));
    OvlFunc_974_200807c(first_entry, end_entry - first_entry);
}

void OvlFunc_974_2008148(void)
{
    register int end_entry asm("r0") = 0xcc6;
    register int first_entry asm("r1") = 0xc9b;

    /* Preserve the two literal loads; GCC would otherwise fold the range. */
    asm volatile("" : "+r"(end_entry), "+r"(first_entry));
    OvlFunc_974_200807c(end_entry, end_entry - first_entry);
}
