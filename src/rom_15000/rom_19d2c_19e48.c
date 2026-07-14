typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;
extern u32 GetPortrait(void);
extern void CloseUIBox(void *entry, int mode);

void Func_8019e48(void)
{
    u8 *state = iwram_3001e8c;
    u8 **entry = (u8 **)(state + 0x500);
    u32 portrait = GetPortrait();
    int selector;
    int i;

    if (portrait == (u32)-1)
        return;

    if (*(u16 *)(state + 0x12ee) == portrait) {
        selector = 1;
    } else {
        if (*(u16 *)(state + 0x12ec) != portrait)
            return;
        selector = 0;
    }

    {
        u32 offset = 0x12f0;
        u16 target;

        offset += selector << 1;
        target = *(u16 *)(state + offset);

        i = 0;
        do {
            u8 *obj = *entry;
            if (obj[4] == 2 && obj[0xe] == target) {
                CloseUIBox(entry, 2);
                return;
            }
            i++;
            entry = (u8 **)((u8 *)entry + 0x24);
        } while (i != 8);
    }
}
