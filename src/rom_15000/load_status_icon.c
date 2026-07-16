extern unsigned char *galloc_iwram(int slot, unsigned int size);
extern void DecompressStatusIcon(unsigned int status_id);
extern void UploadSpriteGFX(unsigned int sprite_slot, unsigned int size,
                            unsigned char *graphics);
extern void gfree(int slot);

int LoadStatusIcon(unsigned int status_id, unsigned int unused,
                   unsigned int sprite_slot)
{
    unsigned char *icon_buffer;
    register unsigned int upload_slot asm("r0");
    register unsigned int upload_size asm("r1");
    register unsigned char *graphics asm("r2");

    icon_buffer = galloc_iwram(0x11, 0x608);
    DecompressStatusIcon(status_id);
    icon_buffer += 0x400;
    asm volatile("" : "+r"(icon_buffer));
    upload_size = 0x80;
    asm volatile("" : "+r"(upload_size));
    graphics = icon_buffer;
    asm volatile("" : "+r"(graphics));
    upload_slot = sprite_slot;
    asm volatile("" : "+r"(upload_slot));
    UploadSpriteGFX(upload_slot, upload_size, graphics);
    gfree(0x11);
    return 1;
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
