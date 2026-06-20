/* Cluster Func_80b04c4..Func_80b04c4 extracted from goldensun/asm/rom_b0000/rom_b0070_a_a_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_a_a_c_a_a.o and asm/rom_b0000/rom_b0070_a_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void WaitFrames(unsigned int nframes);
extern int _Func_80f954c(void);

void Func_80b04c4(void)
{
	while (_Func_80f954c() != 0)
		WaitFrames(1);
}
