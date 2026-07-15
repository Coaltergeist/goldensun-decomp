typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001ea0;
extern const u8 _FILE_e8[];
extern void _Func_80b08b8(void *menu);
extern void _Func_80b0958(void *arg);
extern const u8 *GetFile(const u8 *file);
extern int UploadSpriteGFX(int slot, int size, const void *data);
extern void Func_80217a4(void *entry);

void Func_801cf48(void)
{
    u8 *state = iwram_3001ea0;
    u32 index = *(u16 *)(state + 0x574);
    const u8 *file;

    _Func_80b08b8(state + 0x5a4);
    _Func_80b0958(state + 0x5b4);
    _Func_80b0958(state + 0x5c4);

    if (index == 0)
        file = _FILE_e8 + (*(u16 *)(state + 0x57c) & 7);
    else
        file = _FILE_e8;
    UploadSpriteGFX((*(u8 **)(state + 0x5b4))[0xe], 0x100, GetFile(file));

    if (index == 1)
        file = _FILE_e8 + (*(u16 *)(state + 0x57c) & 7);
    else
        file = _FILE_e8;
    UploadSpriteGFX((*(u8 **)(state + 0x5c4))[0xe], 0x100, GetFile(file));

    if ((s32)index > 1) {
        u32 mul3 = index * 3;
        u32 off = index + 0x594;
        s8 val = *(s8 *)(state + off);
        u32 addr_off = 0x5d4 + ((mul3 + val) << 2);
        Func_80217a4(*(void **)(state + addr_off));
    }

    *(u16 *)(state + 0x57c) += 1;
}
