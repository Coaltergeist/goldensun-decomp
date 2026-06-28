/* Cluster Func_80164ac..Func_80164ac extracted from goldensun/asm/rom_15000/rom_15e8c_a_c_c_a_a_c_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_a_c_c_a_a_c_a_a.o and asm/rom_15000/rom_15e8c_a_c_c_a_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_8016594(unsigned int *);

void Func_80164ac(unsigned int *arg0)
{
    unsigned int *r3;
    unsigned int *r5;
    unsigned int *r0;
    r3 = arg0;
    r5 = (unsigned int *)0;
    if (r3 == (unsigned int *)0)
        return;
    r0 = (unsigned int *)*r3;
    r3[1] = (unsigned int)r3;
    r3[0] = (unsigned int)r5;
    if (r0 == (unsigned int *)0)
        return;
    do {
        r5 = (unsigned int *)*r0;
        Func_8016594(r0);
        r0 = r5;
    } while (r0 != (unsigned int *)0);
}
