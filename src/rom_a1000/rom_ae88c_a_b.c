/* Cluster Func_80ae88c..Func_80ae88c extracted from goldensun/asm/rom_a1000/rom_ae88c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_ae88c_a_a.o and asm/rom_a1000/rom_ae88c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern unsigned char Laed4c[] __asm__(".Laed4c");
extern unsigned char Laedcc[] __asm__(".Laedcc");

void Func_80ae88c(void) {
    unsigned char *r5;
    int r0;

    r5 = *(unsigned char **)iwram_3001f2c;
    r0 = AllocSpriteSlot();
    *(unsigned short *)(r5 + 0x392) = r0;
    if (r0 != -1) {
        UploadSpriteGFX(r0, 0x80, Laed4c);
    }
    r0 = AllocSpriteSlot();
    *(unsigned short *)(r5 + (0xe5 << 2)) = r0;
    if (r0 != -1) {
        UploadSpriteGFX(r0, 0x80, Laedcc);
    }
}
