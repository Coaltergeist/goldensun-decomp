/* Cluster Func_80175a0..Func_80175a0 extracted from goldensun/asm/rom_15000/rom_15e8c_c_a_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_c_a_c_c_a.o and asm/rom_15000/rom_15e8c_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void PrintBattleText(void);
extern void WaitFrames(unsigned int nframes);
extern int Func_8017364(void);

void Func_80175a0(void) {
    PrintBattleText();
    while (!Func_8017364()) {
        WaitFrames(1);
    }
    WaitFrames(1);
}
