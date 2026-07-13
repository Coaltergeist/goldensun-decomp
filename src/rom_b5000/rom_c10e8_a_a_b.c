/* Cluster Func_80c16d0..Func_80c16d0 extracted from goldensun/asm/rom_b5000/rom_c10e8_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_c10e8_a_a_a.o and asm/rom_b5000/rom_c10e8_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80008d4(int arg0, int arg1);
extern void gfree(int index);
extern int StopTask(void *task);
extern void *Task_BlitPreAnim(void);
extern void Func_80c11ec(void);

int Func_80c16d0(void) {
    void (*fn)(int, int) = Func_80008d4;
    unsigned short *p;

    fn(0x6004000, 0x4000);
    gfree(0x2f);
    gfree(0x2e);
    gfree(0x28);
    gfree(0x27);
    p = (unsigned short *)0x4000000;
    *p = 0x1341;
    StopTask(Task_BlitPreAnim);
    return StopTask(Func_80c11ec);
}
