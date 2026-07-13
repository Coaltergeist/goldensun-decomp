extern void *galloc_iwram(int slot, int size);
extern void DrawInventoryIcon(int icon, int palette);
extern void UploadSpriteGFX(int slot, int size, const void *data);
extern void gfree(int slot);

int LoadInventoryIcon(int icon, int palette, int slot)
{
    void *buffer = galloc_iwram(0x11, 0x608);

    DrawInventoryIcon(icon, palette);
    {
        register int upload_size asm("r1");
        register void *upload_data asm("r2");
        register int upload_slot asm("r0");

        buffer = (char *)buffer + 0x400;
        asm volatile("" : "+r"(buffer));
        upload_size = 0x80;
        asm volatile("" : "+r"(upload_size));
        upload_data = buffer;
        asm volatile("" : "+r"(upload_data));
        upload_slot = slot;
        asm("" : "+r"(upload_slot));
        UploadSpriteGFX(upload_slot, upload_size, upload_data);
    }
    gfree(0x11);
    return 1;
}
