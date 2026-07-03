/* Cluster Func_80ba27c..Func_80ba27c extracted from goldensun/asm/rom_b5000/rom_b9b30.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b9b30_a.o and asm/rom_b5000/rom_b9b30_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80c10e8(unsigned int arg0, unsigned int arg1);
extern void WaitTextPrompt(void);
extern void Func_80bbb0c(unsigned char *arg0, unsigned int arg1);
extern void Func_80bb938(void);
extern void WaitFrames(unsigned int nframes);

unsigned int Func_80ba27c(unsigned char *arg0)
{
	int n;
	int i;

	Func_80c10e8(0, 0);
	n = *(signed char *)(arg0 + 1);
	if (n == 0) {
		WaitTextPrompt();
	} else {
		i = 0;
		while (i < n) {
			Func_80bbb0c(arg0, i);
			Func_80bb938();
			n = *(signed char *)(arg0 + 1);
			i++;
		}
	}
	WaitFrames(1);
}
