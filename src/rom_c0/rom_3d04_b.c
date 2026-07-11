/* Cluster Func_8003dec..Func_8003dec extracted from goldensun/asm/rom_c0/rom_3d04.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3d04_a.o and asm/rom_c0/rom_3d04_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int gRAMLib_end[248];

void Func_8003dec(unsigned int *arg0, int index)
{
    unsigned int *slot;
    unsigned int old;

    if (index > 255) index = 255;
    if (index < 0) index = 0;
    slot = &gRAMLib_end[index];
    old = *slot;
    *slot = (unsigned int)arg0;
    *arg0 = old;
}
