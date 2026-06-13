/* Cluster Func_801c2f0..Func_801c2f0 extracted from goldensun/asm/rom_15000/rom_1aeec_c_a_a_a_a_a_c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1aeec_c_a_a_a_a_a_c_c_a.o and asm/rom_15000/rom_1aeec_c_a_a_a_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_801a66c(void);
extern void Func_801a778(void);
extern void WaitFrames(unsigned int nframes);

void Func_801c2f0(void)
{
	Func_801a66c();
	Func_801a778();
	WaitFrames(1);
}
