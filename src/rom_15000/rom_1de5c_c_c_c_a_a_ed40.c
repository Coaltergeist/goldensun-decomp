typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;
extern int _GetFlag(int flag);
extern int GetPortrait(int icon);
extern void LoadPortrait(int portrait, int mode, const void *source, void *output,
                         int slot, int enabled);

void Func_801ed40(unsigned side, int icon, int mode)
{
    u8 *state = iwram_3001e8c;
    u32 output;
    u32 value;
    int portrait;

    if (_GetFlag(0x20) != 0) {
        if (icon == 0)
            icon = 0x12;
        if (icon == 1)
            icon = 0x13;
    }

    portrait = GetPortrait(icon);
    if (portrait != -1) {
        if (side > 1) {
            side = 1;
            if (*(u16 *)(state + 0x12ee) != portrait) {
                asm volatile ("" ::: "r2");
                if (*(u16 *)(state + 0x12ec) != portrait)
                    return;
                side = 0;
            }
        }
        { unsigned offset = 0x12f0 + side * 2; value = *(u16 *)(state + offset); }
        LoadPortrait(portrait, mode, &value, &output, side + 0xe, 1);
    }
}
