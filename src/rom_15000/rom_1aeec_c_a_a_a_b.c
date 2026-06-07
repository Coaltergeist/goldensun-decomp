/* Cluster Func_801c428..Func_801c428 extracted from goldensun/asm/rom_15000/rom_1aeec_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1aeec_c_a_a_a_a.o and asm/rom_15000/rom_1aeec_c_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int *iwram_3001ebc;
extern void Func_8016418(unsigned int *box, unsigned int noanim);
extern void StopTask(void *task);
extern void Func_801c3e8(void);

void Func_801c428(void) {
    unsigned int *box;

    box = (unsigned int *)*(unsigned int *)((char *)*(unsigned int *)&iwram_3001ebc + (0x8c << 2));
    if (box != 0) {
        if (*(unsigned short *)((char *)box + 0x16) != 0) {
            Func_8016418(box, 2);
            StopTask((void *)Func_801c3e8);
        }
    }
}
