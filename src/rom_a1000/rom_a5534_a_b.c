/* Cluster Func_80a5534..Func_80a5534 extracted from goldensun/asm/rom_a1000/rom_a5534_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a5534_a_a.o and asm/rom_a1000/rom_a5534_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern unsigned char Laebcc[] __asm__(".Laebcc");
extern unsigned char Laeb4c[] __asm__(".Laeb4c");
extern int AllocSpriteSlot(void);
extern void UploadSpriteGFX(int slot, int size, unsigned char *gfx);

void Func_80a5534(void) {
    unsigned char *r5;
    int r0;

    r5 = *(unsigned char **)iwram_3001f2c;
    r0 = AllocSpriteSlot();
    *(unsigned short *)(r5 + 0x392) = r0;
    UploadSpriteGFX(r0, 0x80, Laebcc);
    r0 = AllocSpriteSlot();
    r5 += 0xe5 << 2;
    *(unsigned short *)r5 = r0;
    UploadSpriteGFX(r0, 0x80, Laeb4c);
}
