extern void *galloc_ewram(int slot, int size);
extern void _LoadMoveIcon(int icon, int palette, const void *value,
                          void *scratch, int mode);
extern int UploadSprite2(int value, const void *data);
extern void gfree(int slot);

int Func_80ae908(int icon, int value)
{
    void *buffer = galloc_ewram(0x11, 0x608);
    int scratch;
    int storedValue = value;
    int result;

    _LoadMoveIcon(icon, 0, &storedValue, &scratch, 1);
    result = UploadSprite2(value, (char *)buffer + 0x400);
    gfree(0x11);
    return result;
}
