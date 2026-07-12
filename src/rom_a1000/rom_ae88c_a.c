extern unsigned char iwram_3001f2c[];
extern unsigned char SpriteGfxA[] asm(".Laed4c");
extern unsigned char SpriteGfxB[] asm(".Laedcc");
extern int AllocSpriteSlot(void);
extern void UploadSpriteGFX(int slot, int size, unsigned char *data);

void Func_80ae88c(void) {
    unsigned char *base = *(unsigned char **)iwram_3001f2c;
    int invalidSlot = -1;
    int slot = AllocSpriteSlot();

    *(unsigned short *)(base + 0x392) = slot;
    if (slot != invalidSlot)
        UploadSpriteGFX(slot, 0x80, SpriteGfxA);
    slot = AllocSpriteSlot();
    *(unsigned short *)(base + 0x394) = slot;
    if (slot != invalidSlot)
        UploadSpriteGFX(slot, 0x80, SpriteGfxB);
}
