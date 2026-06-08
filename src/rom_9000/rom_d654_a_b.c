/* Cluster Func_800d674..Func_800d674 extracted from goldensun/asm/rom_9000/rom_d654_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_a.o and asm/rom_9000/rom_d654_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Actor_IsNotMoving(unsigned char *actor);

int Func_800d674(unsigned char *actor)
{
	unsigned char *p;

	p = actor + 0x60;
	if (*p > 0x3b) {
		*p = 0;
		goto inc;
	}
	if (Actor_IsNotMoving(actor)) {
inc:
		*(unsigned short *)(actor + 4) = *(unsigned short *)(actor + 4) + 1;
		return 1;
	}
	return 0;
}
