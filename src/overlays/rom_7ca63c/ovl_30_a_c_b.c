/* Cluster OvlFunc_944_2008180..OvlFunc_944_2008180 extracted from goldensun/asm/overlays/rom_7ca63c/ovl_30_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ca63c/ovl_30_a_c_a.o and asm/overlays/rom_7ca63c/ovl_30_a_c_c.o in
 * goldensun/overlays/rom_7ca63c/overlay.ld.
 */
unsigned int OvlFunc_944_2008180(int *p)
{
	unsigned char *r1;
	unsigned char v3;
	int r3;

	r1 = *(unsigned char **)((char *)p + 0x50);
	v3 = *(r1 + 9);
	v3 |= 0xc;
	*(r1 + 9) = v3;

	{
		int v = 0x80;
		v <<= 10;
		*(int *)((char *)p + 0x30) = v;
	}
	{
		int v = 0x80;
		v <<= 9;
		*(int *)((char *)p + 0x34) = v;
	}

	r3 = *(int *)((char *)p + 0x18);
	if (r3 > (0x80 << 5)) {
		r3 += 0xfffffc00;
		*(int *)((char *)p + 0x18) = r3;
		*(int *)((char *)p + 0x1c) += 0xfffffc00;
	} else {
		*(int *)((char *)p + 8) = 0;
		*(int *)((char *)p + 0xc) = 0;
		*(int *)((char *)p + 0x10) = 0;
		*(int *)((char *)p + 0x24) = 0;
		*(int *)((char *)p + 0x28) = 0;
		*(int *)((char *)p + 0x2c) = 0;
	}

	return 1;
}
