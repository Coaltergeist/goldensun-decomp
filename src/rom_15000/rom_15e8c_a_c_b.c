/* Cluster Func_80163ec..Func_80163ec extracted from goldensun/asm/rom_15000/rom_15e8c_a_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_a_c_a.o and asm/rom_15000/rom_15e8c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void WaitFrames(unsigned int nframes);

void Func_80163ec(unsigned char *box)
{
    if ((*(unsigned short *)(box + 0x16) & 2) == 0) {
        while (*(short *)(box + 0x1a) != 0) {
            WaitFrames(1);
        }
    }
}
