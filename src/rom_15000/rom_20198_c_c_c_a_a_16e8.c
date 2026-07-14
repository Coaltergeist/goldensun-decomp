typedef unsigned short u16;

extern void *galloc_ewram(unsigned int slot, unsigned int size);
extern const unsigned char _FILE_f1[];
extern const unsigned char *GetFile(const void *file);
extern void DecompressLZ1(const void *source, void *destination);
extern void _Func_800f9cc(unsigned char *p, int count);
extern void UploadSpriteGFX(int slot, int size, const void *data);
extern void gfree(unsigned int slot);

void StartMenu_AddOption(int option, int slot, int value)
{
    void *buffer = galloc_ewram(0xe, 0x400);
    const unsigned char *file = GetFile(_FILE_f1);

    if (slot <= 0x5f) {
        DecompressLZ1(file + ((const u16 *)file)[option], buffer);
        if (value != 0) {
            _Func_800f9cc(buffer, 0x300);
        }
        UploadSpriteGFX(slot, 0x400, buffer);
        gfree(0xe);
    }
}
