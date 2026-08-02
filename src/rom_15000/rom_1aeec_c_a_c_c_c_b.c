/* Cluster Func_801c954..Func_801c954 extracted from goldensun/asm/rom_15000/rom_1aeec_c_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1aeec_c_a_c_c_c_a.o and asm/rom_15000/rom_1aeec_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
void CloseUIBox(void *box, int noanim);
void WaitFrames(unsigned int nframes);
int Func_8017394(int a);
void Func_8003f3c(unsigned int a);
void gfree(int index);
extern unsigned char *iwram_3001e9c;

void Func_801c954(void)
{
    unsigned char *base;

    base = iwram_3001e9c;
    CloseUIBox(*(void **)(base + 0xff4), 0);
    while (Func_8017394(*(int *)(base + 0xff4)) == 0) {
        WaitFrames(1);
    }
    if (*(unsigned short *)(base + 0x46) != 0) {
        Func_8003f3c(*(unsigned short *)(base + 0x48));
    }
    if (*(unsigned short *)(base + 0x352) != 0) {
        Func_8003f3c(*(unsigned short *)(base + 0x354));
    }
    gfree(0x13);
}
