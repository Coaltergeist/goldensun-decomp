extern void *galloc_ewram(int slot, int size);
extern void LoadMoveIcon(int icon, int palette, const void *value,
                         void *scratch, int mode);
extern int UploadSprite2(int value, const void *data);
extern void gfree(int slot);

int Func_8021b30(int icon, int value)
{
    void *buffer = galloc_ewram(0x11, 0x608);
    int scratch;
    int stored_value = value;
    int result;

    LoadMoveIcon(icon, 0, &stored_value, &scratch, 1);
    result = UploadSprite2(value, (char *)buffer + 0x400);
    gfree(0x11);
    return result;
}
