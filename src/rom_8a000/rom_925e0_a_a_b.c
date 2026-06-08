/* Cluster Func_809280c..Func_809280c extracted from goldensun/asm/rom_8a000/rom_925e0_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_925e0_a_a_a.o and asm/rom_8a000/rom_925e0_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int GetFieldActor(unsigned int actorID);
extern int atan2(int y, int x);
extern void CutsceneWait(unsigned int param_1);

void Func_809280c(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *a;
    unsigned char *b;

    a = (unsigned char *)GetFieldActor(arg0);
    b = (unsigned char *)GetFieldActor(arg1);
    if (a != (unsigned char *)0 && b != (unsigned char *)0) {
        *(short *)(a + 6) = atan2(
            *(int *)(b + 16) - *(int *)(a + 16),
            *(int *)(b + 8) - *(int *)(a + 8));
        CutsceneWait(arg2);
    }
}
