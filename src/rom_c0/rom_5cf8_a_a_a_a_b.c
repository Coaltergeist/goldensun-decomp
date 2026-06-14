/* Cluster Func_8005cf8..Func_8005cf8 extracted from goldensun/asm/rom_c0/rom_5cf8_a_a_a_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_5cf8_a_a_a_a_a.o and asm/rom_c0/rom_5cf8_a_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
/* Func_8005cf8 @ 0x08005cf8  [asm/rom_c0/rom_5cf8_a_a_a_a.s]
 *
 * pop {r1}; bx r1 is the gcc-2.96 -mthumb-interwork NON-void return idiom: the
 * asm tail-returns gfree(0x33), so gfree must be seen as value-returning here
 * (other TUs declare it void; the local int decl coaxes r0 live at return ->
 * pop {r1} instead of pop {r0}).
 * Post-rename audit: the asm calls SetIntrHandler + gfree (was Func_800307c /
 * Func_8002dd8 in the stale seed). SetIntrHandler decl mirrors matched sibling
 * src/rom_c0/rom_5cf8_a_a_b.c.
 */
extern void SetIntrHandler(int intr, unsigned int dispstat, void *vector);
extern int  gfree(int index);

int Func_8005cf8(void)
{
    SetIntrHandler(5, 0, 0);
    return gfree(0x33);
}
