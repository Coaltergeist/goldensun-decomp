typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001ea0;
extern void _Func_80b08b8(void *menu);
extern void Func_80217a4(void *entry);

void Func_801d94c(void)
{
    u8 *state = iwram_3001ea0;
    u16 selected;
    unsigned int offset;

    _Func_80b08b8(state + 0x5a4);
    selected = *(u16 *)(state + 0x574);
    offset = selected * 4 + 0x610;
    Func_80217a4(*(void **)(state + offset));
}
