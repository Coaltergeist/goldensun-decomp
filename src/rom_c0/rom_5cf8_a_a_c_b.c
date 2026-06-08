/* Cluster Func_8006458..Func_8006488 extracted from goldensun/asm/rom_c0/rom_5cf8_a_a_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_5cf8_a_a_c_a.o and asm/rom_c0/rom_5cf8_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void WaitFrames(unsigned int nframes);
extern unsigned int ewram_2002080;
extern unsigned int ewram_20023ac;

void Func_8006458(void)
{
    unsigned int count;
    count = 0;
    if (ewram_2002080 != 0) {
        do {
            WaitFrames(1);
            count++;
            if (count > 0x927bf)
                break;
        } while (ewram_2002080 != 0);
    }
}
void Func_8006488(void)
{
    unsigned int count;
    count = 0;
    if (ewram_20023ac != 0) {
        do {
            WaitFrames(1);
            count++;
            if (count > 0x927bf)
                break;
        } while (ewram_20023ac != 0);
    }
}
