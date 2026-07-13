typedef unsigned short u16;

extern void *Func_8004938(int size);
extern const unsigned char _FILE_f1[];
extern const unsigned char *GetFile(const void *file);
extern void DecompressLZ1(const void *source, void *destination);
extern void UploadSpriteGFX(int slot, int size, const void *data);
extern void free(void *pointer);

void LoadUIIcon(int slot, int icon)
{
    void *buffer = Func_8004938(0x400);
    const unsigned char *file = GetFile(_FILE_f1);

    DecompressLZ1(file + ((const u16 *)file)[icon], buffer);
    UploadSpriteGFX(slot, 0x400, buffer);
    free(buffer);
}
