extern unsigned char *galloc_ewram(int slot, unsigned int size);
extern unsigned char *Data_31864[];
extern void DecompressLZ1(unsigned char *source, unsigned char *destination);
extern void UploadSpriteGFX(unsigned int sprite_slot, unsigned int size,
                            unsigned char *graphics);
extern void gfree(int slot);

void Func_80215e0(unsigned int icon_id, int sprite_slot)
{
    unsigned char *buffer;
    unsigned char *graphics;
    register int upload_slot asm("r0");
    register unsigned int upload_size asm("r1");
    register unsigned char *upload_buffer asm("r2");

    buffer = galloc_ewram(0xe, 0x400);
    graphics = Data_31864[icon_id];
    if (sprite_slot <= 0x5f) {
        DecompressLZ1(graphics, buffer);
        upload_size = 0x80;
        upload_size <<= 2;
        asm volatile("" : "+r"(upload_size));
        upload_slot = sprite_slot;
        upload_buffer = buffer;
        UploadSpriteGFX(upload_slot, upload_size, upload_buffer);
        gfree(0xe);
    }
}
