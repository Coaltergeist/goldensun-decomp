/* Cluster Func_8096cdc..Func_8096cdc extracted from goldensun/asm/rom_8a000/rom_96cdc_a_a.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_96cdc_a_a_a.o and asm/rom_8a000/rom_96cdc_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFieldActor(int actorID);
extern void _Actor_SetAnimSpeed(int actor, int speed);
extern unsigned char ewram_200048a[];

void Func_8096cdc(unsigned char *arg0, unsigned int arg1, int arg2)
{
    unsigned char *actor;
    short *p;
    int i;

    i = 0;
    p = (short *)ewram_200048a;
    do {
        actor = (unsigned char *)GetFieldActor(i);
        if (i != *p && actor != (unsigned char *)0 && actor != arg0) {
            actor[0x5b] = arg1;
            _Actor_SetAnimSpeed((int)actor, arg2);
        }
        i++;
    } while (i <= 0x42);
}
