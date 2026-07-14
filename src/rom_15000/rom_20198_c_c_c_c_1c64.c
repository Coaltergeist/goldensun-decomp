typedef unsigned short u16;

extern void *galloc_iwram(unsigned int slot, unsigned int size);
extern const unsigned char _FILE_f1[];
extern const unsigned char *GetFile(const void *file);
extern void DecompressLZ1(const void *source, void *destination);
extern int UploadSprite2(unsigned int target, void *data);
extern void gfree(unsigned int slot);

int Func_8021c64(unsigned int target, unsigned int index)
{
    unsigned char *buffer = galloc_iwram(0x11, 0x608);
    const unsigned char *file = GetFile(_FILE_f1);
    const unsigned char **dest_field = (const unsigned char **)(buffer + 0x604);
    const unsigned char *source = file + ((const u16 *)file)[index];
    int result;

    *dest_field = source;
    DecompressLZ1(source, buffer);
    result = UploadSprite2(target, buffer);
    gfree(0x11);
    return result;
}
