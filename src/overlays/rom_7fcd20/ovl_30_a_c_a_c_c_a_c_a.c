extern void OvlFunc_974_200807c(int entry_id, int range_length);

void OvlFunc_974_2008160(void)
{
    register int range_start asm("r3") = 0xc9b;
    register int range_end asm("r1") = 0xcc6;
    register int entry_id asm("r0") = 0xcf1;

    /* Keep the literals separate so GCC emits the original subtraction. */
    asm volatile("" : "+r"(range_start), "+r"(range_end), "+r"(entry_id));
    range_end -= range_start;
    OvlFunc_974_200807c(entry_id, range_end);
}
