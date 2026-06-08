/* Cluster Func_808b074..Func_808b074 extracted from goldensun/asm/rom_8a000/rom_8ace0_a_a_c_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ace0_a_a_c_a_a.o and asm/rom_8a000/rom_8ace0_a_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L9d8b0[] __asm__(".L9d8b0");
extern int GetEncounterGroup(int encounterID, int group);

unsigned int Func_808b074(int index)
{
    unsigned short *p = (unsigned short *)(L9d8b0 + (index << 2));
    return GetEncounterGroup(p[0], p[1]);
}
