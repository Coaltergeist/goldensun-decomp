extern void *galloc_ewram(unsigned int id, unsigned int size);
extern void gfree(unsigned int id);
extern void DecompressStatusIcon(unsigned int icon);
extern void DrawInventoryIcon(unsigned int icon, unsigned int size);
extern int UploadSprite2(unsigned int target, void *data);

int Func_8021ab0(unsigned int icon, unsigned int target)
{
    char *buffer = galloc_ewram(0x11, 0x608);
    int result;

    DecompressStatusIcon(icon);
    result = UploadSprite2(target, buffer + 0x400);
    gfree(0x11);
    return result;
}

int Func_8021af0(unsigned int icon, unsigned int target)
{
    char *buffer = galloc_ewram(0x11, 0x608);
    int result;

    DrawInventoryIcon(icon, 0x1a);
    result = UploadSprite2(target, buffer + 0x400);
    gfree(0x11);
    return result;
}
