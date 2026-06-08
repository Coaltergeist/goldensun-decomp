/* Cluster Func_8093500..Func_8093500 extracted from goldensun/asm/rom_8a000/rom_93304_a_a_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_a_a_a_a.o and asm/rom_8a000/rom_93304_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int GetFieldActor(unsigned int actorID);
extern unsigned int galloc_ewram(unsigned int index, unsigned int size);
extern void Func_80933f8(int a, int b, int c, int d);

void Func_8093500(unsigned int arg0, unsigned int arg1)
{
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(arg0);
    galloc_ewram(0x1b, 0xccc);
    if (actor != (unsigned char *)0) {
        Func_80933f8(*(int *)(actor + 8), -1, *(int *)(actor + 0x10), arg1);
    }
}
