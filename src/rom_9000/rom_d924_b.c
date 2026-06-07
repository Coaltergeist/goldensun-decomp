/* Cluster Func_800daa0..Func_800daa0 extracted from goldensun/asm/rom_9000/rom_d924.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d924_a.o and asm/rom_9000/rom_d924_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_800d14c(int actor, int x, int y, int z);

int Func_800daa0(unsigned char *actor)
{
    int *p = *(int **)(actor + 0x68);
    Func_800d14c((int)actor, p[2], p[3], p[4]);
    *(unsigned short *)(actor + 4) += 1;
    return 1;
}
