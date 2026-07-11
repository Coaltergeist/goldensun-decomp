/* Cluster ActorCmd_FaceTarget..ActorCmd_FaceTarget extracted from goldensun/asm/rom_9000/rom_d924_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d924_a_c_c_c_a.o and asm/rom_9000/rom_d924_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int atan2(int y, int x);

int ActorCmd_FaceTarget(unsigned char *arg0)
{
    unsigned char *p;
    int y;
    int x;

    p = *(unsigned char **)(arg0 + 0x68);
    y = *(int *)(p + 0x10) - *(int *)(arg0 + 0x10);
    x = *(int *)(p + 8) - *(int *)(arg0 + 8);
    *(unsigned short *)(arg0 + 6) = atan2(y, x);
    *(unsigned short *)(arg0 + 4) += 1;
    return 1;
}
