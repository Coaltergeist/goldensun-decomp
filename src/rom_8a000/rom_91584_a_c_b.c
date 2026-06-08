/* Cluster CutsceneEnd..CutsceneEnd extracted from goldensun/asm/rom_8a000/rom_91584_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_a_c_a.o and asm/rom_8a000/rom_91584_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void StopTask(void *);
extern void Task_Cutscene(void);
extern void SetCameraTarget(unsigned int, unsigned char);
extern void *_CheckLure(void);
extern unsigned int gState;

void CutsceneEnd(void) {
    unsigned int r3;

    StopTask(Task_Cutscene);
    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    SetCameraTarget(*(unsigned int *)r3, 1);
    _CheckLure();
}
