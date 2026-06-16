/* Cluster AllocUploadSpriteGFX..AllocUploadSpriteGFX extracted from goldensun/asm/rom_c0/rom_3e58_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3e58_c_a_a.o and asm/rom_c0/rom_3e58_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int AllocSpriteSlot(void);
extern void UploadSpriteGFX(int slot, unsigned int size, unsigned char *gfx);

int AllocUploadSpriteGFX(unsigned char *gfx)
{
	int r5;
	int r6;
	r6 = (int)gfx;
	r5 = AllocSpriteSlot();
	UploadSpriteGFX(r5, r6, 0);
	return r5;
}
